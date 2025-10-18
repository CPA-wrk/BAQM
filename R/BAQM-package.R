#' @keywords internal
"_PACKAGE"
# The following prevents R CMD check notes about global variables
# used in non-standard evaluation (e.g. in data.table expressions).
utils::globalVariables(
  c(".id", ".sequence", ".obs", ".fits", ".resid", ".se.fit", ".lower.pi",
  ".upper.pi", ".std.resid", ".stud.resid", ".cooksd", ".hat",
  ".quantile", ".is.outl", ".is.infl", ".is.lev", "x", "y",
  "shape", "color")
)
#
## usethis namespace: start
## usethis namespace: end
NULL
