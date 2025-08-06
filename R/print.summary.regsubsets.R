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
    aic = round(object$bic + 2 * k - log(n) * k),
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
