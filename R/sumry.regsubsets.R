#' Summary for Subset Selection (\code{regsubsets}) Objects
#'
#' Generates a BAQM summary for objects of class \code{regsubsets} (from the \code{leaps} package), showing model selection statistics for best subsets, including R-squared, adjusted R-squared, standard error of estimate, Mallows' Cp, and AIC.
#'
#' @param x An object of class \code{regsubsets}.
#' @param ... Additional arguments (not currently used).
#'
#' @details
#' The function formats a table summarizing the best models selected, including the number of predictors, R-squared, adjusted R-squared, standard error of estimate (SEE), Mallows' Cp, and included variables. It is first converted to a summary.regsubsets with \code{summary()}. If not, the object is returned unmodified.
#'
#' @return Returns a matrix containing a summary table for the best subsets analysis. Each row summarizes a model showing: the number of predictors, \code{k}, used; "which best" that model is for that \code{k}; performance statistics (see above); and a series of columns with asterisks indicating the specific predictors included in the model.
#'
#' @seealso \code{\link[leaps]{regsubsets}},  \code{\link{print.sumry.regsubsets}}
#'
#' @examples
#'
#' fit <- leaps::regsubsets(Fertility ~ ., data = swiss, nbest = 3)
#' sumry(fit)
#'
#' @export
sumry.regsubsets <- function(x, ...) {
  #
  # Copyright 2026, Peter Lert, All rights reserved.
  #
  # Method to format a summary of a regsubsets object
  #
  if (inherits(x, "regsubsets")) {
    x <- summary(x)
  }
  if (!inherits(x, "summary.regsubsets")) {
    return(x)
  }
  #
  # Format the summary of a regsubsets object
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
  attr(best, "call") <- s.note
  class(best) <- c("sumry.regsubsets", class(best))
  best
}
