stat_desc <- function(df) {
  # Copyright 2025, Peter Lert, All rights reserved.
  # Copyright 2025, Peter Lert, rpt rights reserved.
  #
  # Summary descriptive statistics for data frame
  #
  wid.n <- 40 # Default width for summary with no numeric variables
  sum.hd <- NA
  #
  smry <- list(
    cnt = data.frame(),
    num = data.frame(),
    fctr = data.frame(),
    rpt = data.frame()
  )
  #
  stats <- lapply(df, function(x.rpt) {
    x.rpt <- unlist(x.rpt)
    x <- x.rpt[!is.na(x.rpt)]
    n.val <- length(x)
    n.na = length(x.rpt) - n.val
    if (is.numeric(x.rpt)) {
      Q2 <- median(x)
      c(
        is.num = 1,
        n.val = n.val,
        n.na = n.na,
        min = ifelse(n.val > 0, min(x), NA),
        Q1 = stats::median(x[x < Q2]),
        median = Q2,
        mean = mean(x),
        Q3 = stats::median(x[x > Q2]),
        max = ifelse(n.val > 0, max(x), NA),
        std.dev = stats::sd(x)
      )
    } else {
      x <- summary(as.factor(x))
      c(
        is.num = 0,
        n.val = n.val,
        n.na = n.na,
        sort(x, decreasing = TRUE)
      )
    }
  })
  #
  # Build count summary
  # Transpose data frame: vars in rows, stats in columns
  smry$cnt <- data.frame(t(data.frame(lapply(stats, function(x) {
    x[2:3]
  }))))
  smry$rpt <- smry$cnt
  #
  i.num <- unlist(lapply(stats, function(x)
    as.logical(x[1] == 1)))
  #
  # Build numeric summary
  if (any(i.num)) {
    smry$num <- data.frame(lapply(data.frame(t(
      data.frame(stats[i.num])[-(1:3), ]
    )), format), row.names = names(stats)[i.num])
    #
    # Build formatted summary for numeric variables
    wid.n <- pmax(lapply(smry$num, function(x) {
      max(nchar(x)) + 1
    }), nchar(names(smry$num)))
    num.fmt <- data.frame(lapply(names(wid.n), function(nm, nums, wid) {
      format(c(nm, as.character(nums[[nm]])),
             width = wid[[nm]],
             justify = "right")
    }, nums = smry$num, wid = wid.n))
    num.fmt <- apply(as.matrix(num.fmt),
                     MARGIN = 1,
                     paste,
                     collapse = " ")
    sum.hd <- num.fmt[1]
    num.fmt <- data.frame(x = num.fmt[-1], row.names = rownames(smry$num))
    names(num.fmt) <- sum.hd
    wid.n <- nchar(sum.hd)
    smry$rpt[[sum.hd]] <- " "
    smry$rpt[rownames(num.fmt), sum.hd] <- num.fmt
  }
  #
  # Build formatted summary for factor variables
  if (any(!i.num)) {
    fctr.hd <- format("Non-numeric variables summary",
                      width = wid.n,
                      justify = "left")
    if (is.na(sum.hd))
      sum.hd <- fctr.hd
    smry$fctr <- data.frame(t(data.frame(lapply(stats[!i.num], function(x) {
      x <- x[-(1:3)]  # Remove the counts
      x <- x[!is.na(x)]  # Remove NA values
      if (length(x) == 0)
        return(NA)
      f.x <- paste0(": ", x)
      wid.nms <- wid.n - nchar(paste(f.x, collapse = ", "))
      nms <- names(x)
      if (wid.nms < sum(nchar(nms))) {
        nms <- abbreviate(nms, minlength = max(3, floor(wid.nms / length(nms))))
      }
      f.fmt <- paste(paste0(nms, f.x), collapse = ", ")
      if (nchar(f.fmt) > wid.n) {
        # If the formatted string is too long, truncate it
        f.x <- paste0(nms, f.x)
        f.fmt <- paste(f.x[cumsum(nchar(f.x) + 2) <= wid.n + 2], collapse = ", ")
      }
      format(f.fmt, width = wid.n, justify = "left")
    }))))
    names(smry$fctr) <- sum.hd
    smry$rpt[rownames(smry$fctr), sum.hd] <- smry$fctr
    names(smry$fctr) <- fctr.hd
  }
  print(smry$rpt)
  invisible(smry)
}
