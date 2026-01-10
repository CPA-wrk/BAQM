#' Print Summary for Subset Selection (\code{regsubsets}) Objects
#'
#' Prints a summary for objects of class \code{summary.regsubsets} or \code{regsubsets} (from the \code{leaps} package), showing model selection statistics for best subsets, including R-squared, adjusted R-squared, standard error of estimate, Mallows' Cp, and AIC.
#'
#' @param x An object of class \code{summary.regsubsets} or \code{regsubsets}.
#' @param ... Additional arguments (not currently used).
#'
#' @details
#' The function prints the model call and a table summarizing the best models selected, including the number of predictors, R-squared, adjusted R-squared, standard error of estimate (SEE), Mallows' Cp, and included variables.
#' If the input is a \code{regsubsets} object, it is converted with \code{sumry()}. If not, the object is returned unmodified.
#'
#' @seealso \code{\link[leaps]{regsubsets}}, \code{\link{sumry.regsubsets}}
#'
#' @examples
#' \dontrun{
#' fit <- leaps::regsubsets(Fertility ~ ., data = swiss, nbest = 3)
#' print.sumry.regsubsets(fit)
#' }
#'
#' @export
print.sumry.regsubsets <- function(x, ...) {
  #
  # Copyright 2026, Peter Lert, All rights reserved.
  #
  # Method to print a formatted summary of a regsubsets object
  #
  if (inherits(x, "regsubsets")) {
    x <- sumry(x)
  }
  if (!inherits(x, "sumry.regsubsets")) {
    return(x)
  }
  #
  # Print the summary of a regsubsets object
  s.note <- attr(x, "call")
  print.default(s.note, quote = FALSE)
  print.data.frame(x)
  invisible(x)
}
