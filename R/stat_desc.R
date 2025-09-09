#' Summary Descriptive Statistics for List or Data Frame
#'
#' Computes and prints summary descriptive statistics for each variable in a list or  data frame, including counts, numeric summaries (min, quartiles, mean, max, standard deviation), and factor summaries (levels and frequencies).
#'
#' @param data A vector, list or data frame containing variables to summarize. A vector is treated as a single variable data frame. Unnamed variables receive generic names like \code{V1}, \code{V2}, etc.
#'
#' @param transpose A logical concerning report format. By default the summary printed and returned is organized to show variables in columns and their statistic values in rows. Setting \code{transpose = TRUE} generates a transposed report with variables in rows and statistics in columns.
#'
#' @param opts A key=value tupe list, optional input for "\code{options}" values on output. Existing values are restored on exit.
#'
#' @param pad A positive integer for the number of spaces between output columns..
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
                      transpose = FALSE,
                      pad = 2,
                      opts = list(digits = 4, scipen = 8)
                      ) {
  # Copyright 2025, Peter Lert, All rights reserved.
  #
  # Summary descriptive statistics for "data" list or data frame
  # Optional arguments:
  #   opts:   list of R options, e.g., digits, scipen
  #   pad:    integer; number of spaces to pad output table columns
  #   transpose:  logical; if TRUE, return a transposed summary table
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
    aparm <- substitute(data)  # For vector actual parm
    data <- as.data.frame(data)
    if (ncol(data) == 1) {
      if (inherits(aparm, "name")) {
        names(data) <- deparse(aparm)
      } else names(data) <- "V1"
    }
    data <- as.list(data)
  }
  if (length(i <- is.null(names(data))) > 0)
    names(data)[i] <- paste0("V", seq_along(data))[i] # Assign generic names
  #
  # Build summary data for either format in tables by type.
  # Since variables have different scales, the most useful formatting
  # approach usually is to report each variable in its own column.
  # This means that wide variable names may be problematic.
  smry <- list(
    cnt = NULL,
    num = NULL,
    fctr = NULL,
    rpt = NULL
  )
  n.f <- list()
  for (nm in names(data)) {
    x.inp <- unlist(data[[nm]])
    x <- x.inp[!is.na(x.inp)]
    n.val = length(x)
    smry$cnt[[nm]] <- c(
      i.num = ifelse(is.numeric(x.inp), 1, 0),
      n.val = n.val,
      n.na = length(x.inp) - n.val
    )
    smry$rpt[[nm]] <- format(as.list(smry$cnt[[nm]])[-1])
    if (is.numeric(x.inp)) {
      Q2 <- stats::median(x)
      smry$num[[nm]] <- c(
        min = ifelse(n.val > 0, min(x), NA),
        Q1 = stats::median(x[x < Q2]),
        median = Q2,
        mean = mean(x),
        Q3 = stats::median(x[x > Q2]),
        max = ifelse(n.val > 0, max(x), NA),
        std.dev = stats::sd(x)
      )
      smry$rpt[[nm]] <- c(smry$rpt[[nm]], format(as.list(smry$num[[nm]])))
    } else {
      x <- as.factor(x)
      n.f[[nm]] <- length(levels(x)) + 1
      smry$fctr[[nm]] <- c(n.lvls = n.f[[nm]],
                           sort(summary(x), decreasing = TRUE))
    }
  }
  f.nms <- ""
  if (!is.null(smry$num)) {
    f.n <- length(smry$num[[1]]) - 1
    f.nms <- names(smry$num[[1]])
  } else {
    f.n <- min(25, max(unlist(n.f)))   # report not more than 25 levels
    f.nms <- c("n.lvls", "Top_1", if (f.n > 1) paste0("Lvl_", 2:f.n) else NULL)
  }
  if (!is.null(smry$fctr)) {
    # If no numeric variables, just use factor levels
    for (nm in names(smry$fctr)) {
      f.nlvl <- smry$fctr[[nm]]["n.lvls"]
      if (!is.null(smry$num)) f.nlvl <- paste0("n.lvls=", f.nlvl)
      f.cnt <- format(smry$fctr[[nm]][-1])
      f.cnt <- f.cnt[1:min(f.n, length(f.cnt))]
      width <- max(8, if (!transpose) nchar(c(nm, f.nlvl))) - 1 - nchar(f.cnt)[1]
      # If level names are too long, shorten
      lvls <- abbreviate(names(f.cnt), minlength = width)
      s_fctr <- c(f.nlvl,
                  paste0(format(lvls, width = width, justify = "left"), ":", f.cnt),
                  rep("", f.n - length(f.cnt)))
      names(s_fctr) <- f.nms
      smry$rpt[[nm]] <- c(smry$rpt[[nm]], s_fctr)
    }
  }
  smry$rpt <- do.call(cbind, smry$rpt)
  smry$rpt <- as.matrix(smry$rpt)
  if (transpose) smry$rpt <- t(smry$rpt)
  print.default(smry$rpt, right = TRUE,
                quote = FALSE, na.print = "", print.gap = pad)
  #
  # restore options
  options(opt.input)
  #
  invisible(smry)
}
