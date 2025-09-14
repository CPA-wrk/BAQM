#' Print Summary for Subset Selection (\code{regsubsets}) Objects
#'
#' Prints a summary for objects of class \code{summary.regsubsets} or \code{regsubsets} (from the \code{leaps} package), showing model selection statistics for best subsets, including R-squared, adjusted R-squared, standard error of estimate, Mallows' Cp, and AIC.
#'
#' @param x An object of class \code{summary.regsubsets} or \code{regsubsets}.
#' @param ... Additional arguments (not currently used).
#'
#' @details
#' The function prints the model call and a table summarizing the best models selected, including the number of predictors, R-squared, adjusted R-squared, standard error of estimate (SEE), Mallows' Cp, and included variables.
#' If the input is a \code{regsubsets} object, it is converted to a summary with \code{summary()}. If not, the object is returned unmodified.
#'
#' @seealso \code{\link[leaps]{regsubsets}}
#' @export
#'
#' @examples
#' \dontrun{
#' library(leaps)
#' fit <- leaps::regsubsets(Fertility ~ ., data = swiss, nbest = 3)
#' print.summary.regsubsets(fit)
#' }
print.summary.regsubsets <- function(x, ...) {
  #
  # Copyright 2025, Peter Lert, All rights reserved.
  #
  # Method to print a formatted summary of a regsubsets object
  #
  if (inherits(x, "regsubsets")) {
    x <- summary(x)
  }
  if (!inherits(x, "summary.regsubsets")) {
    return(x)
  }
  #
  # Print the summary of a regsubsets x
  n <- x$obj$nn
  k <- as.numeric(rownames(x$which))
  best <- data.frame(
    rownames(x$outmat),
    rsq = round(x$rsq, 4),
    adjr2 = round(x$adjr2, 4),
    see = sqrt(x$rss / (n - k - 1)),
    cp = round(x$cp, 2),
    # aic = round(x$bic + 2 * k - log(n) * k, 2),
    x$outmat,
    row.names = NULL
  )
  names(best)[1] <- "_k_i.best"
  #
  # Report the regsubsets Call and then the best models table
  cl <- format(x$obj$call)
  s.note <- matrix(cl,
    nrow = length(cl), ncol = 1,
    dimnames = list(c("Call:", rep("", length(cl) - 1)), "")
  )
  print.default(s.note, quote = FALSE)
  print(best)
}
