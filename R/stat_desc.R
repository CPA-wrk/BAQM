#' Summary Descriptive Statistics for List or Data Frame
#'
#' Computes and prints summary descriptive statistics for each variable in a list or  data frame, including counts, numeric summaries (min, quartiles, mean, max, standard deviation), and factor summaries (levels and frequencies).
#'
#' @param data A vector, list or data frame containing variables to summarize. A vector is treated as a single variable data frame. Unnamed variables receive generic names like \code{V1}, \code{V2}, etc.
#'
#' @param opts A key=value tupe list, optional input for "\code{options}" values on output. Existing values are restored on exit.
#'
#' @param pad A positive integer for the number of spaces between output columns..
#'
#' @param t.rpt A logical concerning report format. By default the summary printed and returned is organized to show variables in columns and their statistic values in rows. Setting \code{t.rpt = TRUE} generates a transposed report with variables in rows and statistics in columns.
#'
#' @details
#' For each variable in \code{data}, the function computes the count of non-missing and missing values. Numeric variables are summarized by minimum, first quartile, median, mean, third quartile, maximum, and standard deviation. Factor and character variables are summarized by level frequencies. Results are formatted in a table and printed. The function returns a list containing:
#' \itemize{
#'   \item \code{cnt}: Counts for each variable (\code{n.val}, \code{n.na})
#'   \item \code{num}: Numeric summaries for numeric variables
#'   \item \code{fctr}: Summaries for factor variables
#'   \item \code{rpt}: The formatted summary table (printed)
#' }
#'
#' @return Invisibly returns a list of summary tables for counts, numeric, and factor variables.
#'
#' @export
#'
#' @examples
#' stat_desc(mtcars)
#' stat_desc(data.frame(a = rnorm(100), b = sample(letters[1:3], 100, TRUE)))
stat_desc <- function(data,
                      opts = list(digits = 4, scipen = 8),
                      pad = 1,
                      t.rpt = FALSE) {
  # Copyright 2025, Peter Lert, All rights reserved.
  # Copyright 2025, Peter Lert, rpt rights reserved.
  #
  # Summary descriptive statistics for "data" list or data frame
  # Optional arguments:
  #   opts:   list of R options, e.g., digits, scipen
  #   pad:    integer; number of spaces to pad output table columns
  #   t.rpt:  logical; if TRUE, return a transposed summary table
  #
  if (missing(data))
    return()
  #  Set options for output and save current values to restore later
  opt.input <- options(opts)
  #
  pad <- as.integer(max(pad, 1)) # Ensure pad is at least 1
  #
  # Coerce data to a list as needed
  if (inherits(data, "data frame"))
    data <- as.list(data)
  if (!is.list(data)) {
    if (length(dim(data)) > 0) {
      # If data is a matrix or array or table, convert to data frame
      data <- as.list(as.data.frame(data))
    } else {
      # If it's a vector, convert to single-column data frame with actual name
      nm <- deparse(substitute(data))
      data <- list(data)
      names(data) <- nm
    }
  }
  for (x.inp in data) {
    if (is.null(names(x.inp))) {
      names(x.inp) <- paste0("V", seq_along(x.inp))
    }
  }
  #
  # Build summary data for either format
  stats <- lapply(data, function(x.inp) {
    x.inp <- unlist(x.inp)
    x <- x.inp[!is.na(x.inp)]
    n.val = length(x)
    cnt <- c(
      i.num = ifelse(is.numeric(x.inp), 1, 0),
      n.val = n.val,
      n.na = length(x.inp) - n.val
    )
    if (cnt["i.num"] == 1) {
      Q2 <- median(x)
      num <- c(
        min = ifelse(n.val > 0, min(x), NA),
        Q1 = stats::median(x[x < Q2]),
        median = Q2,
        mean = mean(x),
        Q3 = stats::median(x[x > Q2]),
        max = ifelse(n.val > 0, max(x), NA),
        std.dev = stats::sd(x)
      )
      list(cnt = cnt,
           num = c(cnt, num),
           fctr = NULL)
    } else {
      x <- as.factor(x)
      fctr <- c(n.lvls = length(levels(x)), sort(summary(x), decreasing = TRUE))
      list(cnt = cnt,
           num = NULL,
           fctr = c(cnt, fctr))
    }
  })
  #
  # Build returned summary tables by type
  #
  smry <- list(
    cnt = NULL,
    num = NULL,
    fctr = NULL,
    rpt = NULL
  )
  for (nm in names(stats)) {
    smry$cnt <- cbind(smry$cnt, stats[[nm]]$cnt)
    if (!is.null(stats[[nm]]$num))
      smry$num <- cbind(smry$num, stats[[nm]]$num)
    if (!is.null(stats[[nm]]$fctr)) {
      smry$fctr <- c(smry$fctr, list(stats[[nm]]$fctr))
    }
  }
  colnames(smry$cnt) <- names(stats)
  if (!is.null(smry$num))
    colnames(smry$num) <- names(stats)[smry$cnt["i.num", ] == 1]
  if (!is.null(smry$fctr))
    names(smry$fctr) <- names(stats)[!smry$cnt["i.num", ] == 1]
  #
  # Since variables have different scales, the most useful formatting
  # approach usually is to report each variable in its own column.
  # This means that wide variable names may be problematic.
  smry$rpt <- data.frame(t(apply(smry$cnt[-1, ], 1, format)))
  if (!is.null(smry$num)) {
    rpt.t <- data.frame(t(apply(smry$num[-(1:3), ], 1, format))) # numeric columns
    for (nm in names(smry$fctr))
      rpt.t[[nm]] <- ""
  } else {
    f.n <- min(smry$fctr[[nm]][4], 25) # report not more than 25 levels
    rpt.t <- matrix(
      "",
      ncol = ncol(smry$rpt),
      nrow = f.n + 1,
      dimnames = list(c(
        names(smry$fctr[[nm]][4]), "Top_1", if (f.n > 1)
          2:f.n
      ), colnames(smry$rpt))
    )
  }
  smry$rpt <- rbind(smry$rpt, rpt.t)
  for (nm in names(smry$fctr)) {
    # Add non-numeric columns
    if (rownames(smry$rpt)[3] == names(smry$fctr[[nm]][4])) {
      smry$rpt[3, nm] <- smry$fctr[[nm]][4]
    } else {
      smry$rpt[3, nm] <-  paste0(names(smry$fctr[[nm]][4]), "=", smry$fctr[[nm]][4])
    }
    width <- max(8, nchar(c(nm, smry$rpt[3, nm]))) - nchar(smry$fctr[[nm]][5]) - 1
    f.n <- min(smry$fctr[[nm]][4], nrow(smry$rpt) - 3)
    f.cnt <- smry$fctr[[nm]][5:(4 + f.n)]
    lvls <- names(f.cnt) # If level names are too long, shorten
    if (max(nchar(lvls)) > width)
      lvls <- abbreviate(lvls, minlength = width)
    smry$rpt[3 + 1:f.n, nm] <- paste0(substr(format(
      lvls[1:f.n], width = nchar(nm), justify = "left"
    ), 1, width), ":", f.cnt)
  }
  rpt.t <- as.matrix(smry$rpt)
  if (t.rpt) rpt.t <- t(rpt.t) # Transpose report called for
  print.default(
    rpt.t,
    right = TRUE,
    quote = FALSE,
    na.print = "",
    print.gap = pad
  )
  #
  # restore options
  options(opt.input)
  #
  invisible(smry)
}
