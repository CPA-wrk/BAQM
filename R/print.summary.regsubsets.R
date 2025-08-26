#' Print Summary for Subset Selection (\code{regsubsets}) Objects
#'
#' Prints a summary for objects of class \code{summary.regsubsets} or \code{regsubsets} (from the \code{leaps} package), showing model selection statistics for best subsets, including R-squared, adjusted R-squared, standard error of estimate, Mallows' Cp, and AIC.
#'
#' @param object An object of class \code{summary.regsubsets} or \code{regsubsets}.
#' @param ... Additional arguments (not currently used).
#'
#' @details
#' The function prints the model call and a table summarizing the best models selected, including the number of predictors, R-squared, adjusted R-squared, standard error of estimate (SEE), Mallows' Cp, AIC, and included variables.
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
print.summary.regsubsets <- function(object, ...) {
  # Copyright 2025, Peter Lert, All rights reserved.
  if (inherits(object, "regsubsets"))
    object <- summary(object)
  if (!inherits(object, "summary.regsubsets"))
    return(object)
  #
  # Print the summary of a regsubsets object
  n <- object$obj$nn
  k <- as.numeric(rownames(object$which))
  best <- data.frame(
    rownames(object$outmat),
    rsq = round(object$rsq, 4),
    adjr2 = round(object$adjr2, 4),
    see = sqrt(object$rss / (n - k - 1)),
    cp = round(object$cp, 2),
    # aic = round(object$bic + 2 * k - log(n) * k, 2),
    object$outmat,
    row.names = NULL
  )
  names(best)[1] <- "_k_i.best"
  #
  # Report the regsubsets Call and then the best models table
  cl <- format(object$obj$call)
  s.note <- matrix(cl, nrow = length(cl), ncol = 1,
                   dimnames = list(c("Call:", rep("", length(cl) - 1)), ""))
  print.default(s.note, quote = FALSE)
  print(best)
}
