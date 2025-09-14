#' Identify Outliers Using Boxplot Heuristic
#'
#' Detects outliers in a numeric vector using the standard boxplot rule (outside 1.5 times the IQR from the 1st and 3rd quartiles).
#' Handles missing values (NA) automatically.
#'
#' @param x Numeric vector for which outliers are to be detected.
#' @param rpt Logical. If \code{FALSE} (default), returns a logical vector indicating which elements of \code{x} are outliers. If \code{TRUE}, returns the calculated lower and upper limits for outlier detection, identified by \code{x < rpt[1] | x > rpt[2]}.
#'
#' @return If \code{rpt = FALSE}, returns a logical vector indicating outliers. If \code{rpt = TRUE}, returns a numeric vector of length 2 giving lower and upper limits for outlier detection
#'
#' @examples
#' set.seed(1)
#' vals <- c(rnorm(100), 10, -10)
#' outlier(vals)
#' outlier(vals, rpt = TRUE)
#'
#' @export
outlier <- function(x,
                    rpt = FALSE) {
  # Copyright 2025, Peter Lert, All rights reserved.
  #
  # Identify possible outliers in numeric vector x using boxplot heuristic
  #
  # x: numeric vector
  #
  q <- stats::quantile(x, probs = c(0.25, 0.75), na.rm = TRUE)
  lims <- q + c(-1.5, 1.5) * (q[2] - q[1])
  names(lims) <- c("lower", "upper")
  if (rpt) {
    return(lims)
  }
  (x < lims[1] | x > lims[2])
}
