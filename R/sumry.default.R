#' Summary Descriptive Statistics for List or Data Frame
#'
#' Computes and prints summary descriptive statistics for each variable in a data frame, list, or vector including counts, numeric summaries (min, quartiles, mean, max, standard deviation), and factor summaries (levels and frequencies).
#'
#' @param x A data frame, list, or vector containing variables to summarize. A vector is treated as a single variable data frame. Unnamed variables receive generic names like \code{V1}, \code{V2}, etc.
#' @param transpose A logical controlling report format. By default the table printed is organized to show variables in columns and their statistic values in rows. Setting \code{transpose = TRUE} prints the transposed table with variables in rows and statistics in columns.
#' @param pad A positive integer for the number of spaces between output columns.
#' @param maxsum A positive integer limiting the number of levels for factor reports.
#' @param opts A key=value type list, optional input for \code{options} values on output. Existing values are restored on exit.
#' @param ... Additional arguments (not currently used).
#'
#' @details
#' For each variable in \code{x}, the function computes the count of non-missing and missing values. Numeric variables are summarized by minimum, first quartile, median, mean, third quartile, maximum, and standard deviation. Factor, logical, and character variables are summarized by level frequencies, where level names may be abbreviated for readability. Results are formatted in a table and printed. The function returns a list containing numeric or factor summaries for each variable.
#'
#' @return Invisibly returns a list containing a summary data frame for each variable with no rounding. For example,  \code{smry <- sumry.df(df[c("A", "B", "C")]); smry$A$std.dev} gives the standard deviation of variable \code{A} in data frame \code{df}
#'
#' @examples
#' sumry(penguins)
#' sumry(data.frame(a = rnorm(100),
#'                  b = c(NA, 1:98, NA),
#'                  c = sample(letters[4:6], 100, TRUE)),
#'                  transpose = TRUE, pad = 1)
#' @export
sumry.default <- function(x, ...,
                          transpose = FALSE,
                          pad = 2,
                          maxsum = 10,
                          opts = list(digits = 4, scipen = 2)) {
  #
  # Copyright 2026, Peter Lert, All rights reserved.
  #
  # Summary descriptive statistics for x (list, data frame, or vector)
  # Optional arguments:
  #   transpose:  logical; if TRUE, return a transposed summary table
  #   pad:    integer; number of spaces to pad output table columns
  #   maxsum: integer; limit number of levels for factor reports
  #   opts:   list of R options, e.g., digits, scipen
  #
  if (missing(x)) {
    return()
  }
  #  Set options for output and save current values to restore later
  opt.input <- options(opts)
  pad <- as.integer(max(pad, 1)) # Ensure pad is at least 1
  #
  # Coerce x to a list as needed
  if (inherits(x, "data frame")) {
    x <- as.list(x)
  }
  if (!is.list(x)) {
    aparm <- substitute(x) # For vector actual parameter
    x <- as.data.frame(x)
    if (ncol(x) == 1) {
      if (inherits(aparm, "name")) {
        names(x) <- deparse(aparm)
      } else {
        names(x) <- "V1"
      }
    }
    x <- as.list(x)
  }
  # Assign generic names
  if (length(i <- is.null(names(x))) > 0) {
    names(x)[i] <- paste0("V", seq_along(x))[i]
  }
  #
  # Build summary for either format in tables by type.
  # Since variables have different scales, the most useful formatting
  # approach usually is to report each variable in its own column.
  # This means that wide variable names may be problematic.
  smry_rpt <- list()
  smry_rtn <- list()
  is.num <- logical(0)
  width <- integer(0)
  # names(is.num) <- names(x)
  for (nm in names(x)) {
    var.inp <- unlist(x[[nm]])
    var <- var.inp[!is.na(var.inp)]
    n.val <- length(var)
    n.na <- length(var.inp) - n.val
    if (is.num[nm] <- is.numeric(var.inp) & !all(var.inp %in% c(0, 1, NA))) {
      nums <- TRUE
      Q2 <- stats::median(var)
      smry_rtn[[nm]] <- data.frame(
        n.val = n.val,
        n.na = n.na,
        min = ifelse(n.val > 0, min(var), NA),
        Q1 = stats::median(var[var < Q2]),
        median = Q2,
        mean = mean(var),
        Q3 = stats::median(var[var > Q2]),
        max = ifelse(n.val > 0, max(var), NA),
        std.dev = stats::sd(var)
      )
      # Format printed report
      smry_rpt[[nm]] <- format(as.list(smry_rtn[[nm]]))
    } else {
      var <- as.factor(var)
      var.sum <- summary.factor(var, maxsum = maxsum)
      if (!"(Other)" %in% names(var.sum))
        var.sum <- sort(var.sum, decreasing = TRUE)
      n.lvl <- length(levels(var))
      smry_rtn[[nm]] <- data.frame(n.val, n.na, n.lvl, t(var.sum))
      names(smry_rtn[[nm]]) <- c("n.val", "n.na", "n.lvl", names(var.sum))
      # If level names are too long for printing, shorten
      if (transpose) {
        width[nm] <- 7
      } else {
        width[nm] <- max(nchar(nm) - (nchar(max(var.sum)) + 1),
                         min(7, max(nchar(names(var.sum)))))
      }
      lvls <- abbreviate(names(var.sum), minlength = width[nm])
      # Format printed report (n.lvl corrected below for mixed report)
      if (transpose) {
        smry_rpt[[nm]] <- c(
          format(as.list(smry_rtn[[nm]])[1:3]),
          paste(lvls, var.sum, sep = ":"))
      } else {
        smry_rpt[[nm]] <- c(
          format(as.list(smry_rtn[[nm]])[1:3]),
          paste(format(lvls, width = width[nm], justify = "left"),
                format(var.sum), sep = ":"))
      }
    }
  }
  # Determine number of rows in printed report
  nrows <- max(sapply(smry_rpt, length))
  # Pad rpt entries to have same number of rows
  for (nm in names(smry_rpt)) {
    n.pad <- nrows - length(smry_rpt[[nm]])
    if (n.pad > 0) smry_rpt[[nm]] <- c(smry_rpt[[nm]], rep("", n.pad))
    if (any(is.num) && !is.num[nm]) {
      # Adjust n.lvl for mixed report
      if (transpose) {
        smry_rpt[[nm]][1] <-
          paste0("n.lvl:", smry_rtn[[nm]]["n.lvl"])
      } else {
        i <- which(!smry_rpt[[nm]] %in% c("", NA)) %notof% 1:3
        lvls <- trimws(c("n.lvl", substr(smry_rpt[[nm]][i], 1, width[nm])))
        smry_rpt[[nm]][c(3, i)] <-
          paste(format(lvls, width = width[nm], justify = "left"),
                format(t(smry_rtn[[nm]][c(3, i)])), sep = ":")
      }
    }
  }
  if (any(is.num)) {
    nms <- names(smry_rtn[[which(is.num)[1]]])
  } else {
    max.lvl <- nrows - 3
    nms <- c(names(smry_rtn[[1]])[1:3], if (max.lvl <= 1) {
      "Level"
    } else {
      c("Top_1", paste0("Lvl_", 2:max.lvl))
    })
  }
  smry_rpt <- matrix(unlist(smry_rpt),
                    nrow = nrows,
                    ncol = length(smry_rpt),
                    dimnames = list(nms,names(smry_rpt)))
  if (transpose) smry_rpt <- t(smry_rpt)
  print.default(smry_rpt,
    right = TRUE,
    quote = FALSE, na.print = "", print.gap = pad
  )
  #
  # restore options
  options(opt.input)
  #
  class(smry_rtn) <- c("sumryDefault", class(smry_rtn))
  invisible(smry_rtn)
}
