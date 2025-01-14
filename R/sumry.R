sumry <- function (object, ...) {
  if ("lm" %in% class(object)) {
    return(sumry.lm(object, ...))
  } else {
    return(summary(object, ...))
  }
}
