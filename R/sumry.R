#' Summary Descriptive Statistics for BAQM
#'
#'\code{sumry} is a generic function for the \code{BAQM} package used to produce summaries of the results of certain model fitting functions.
#'
#' @param x An object to summarize; methods are available for data frames, lists, vectors, linear regression models (\code{lm}), and best subsets models (\code{regsubsets} from the \code{leaps} package).
#' @param ... Additional arguments passed to specific methods.
#'
#' @return Invisibly returns a list of summary tables for each variable.
#'
#' @examples
#' sumry(penguins)
#' sumry(data.frame(a = rnorm(100),
#'           b = c(NA, 1:98, NA),
#'           c = sample(letters[4:6], 100, TRUE)),
#'           transpose = TRUE, pad = 1)
#' sumry(lm(Sepal.Length ~ ., data = iris))
#' sumry(leaps::regsubsets(mpg ~ ., data = mtcars, nbest = 2))
#'
#' @export
sumry <- function(x, ...) {
  # Copyright 2026, Peter Lert, All rights reserved.
  #
  # Generic function for BAQM package methods
  #
  UseMethod("sumry")
}
