#' General Purpose Internal Utility Functions
#'
#' This file contains a set of small, general-purpose helper functions used internally throughout the package. They cover data cleaning, vector and attribute manipulation, formatting, and basic statistical utilities. These functions are designed for convenience and package-internal use, and are not exported for direct use by package users.
#' The final function contains code for the examples used in the package README file.
#'
#' Functions included:
#' \itemize{
#'   \item \code{char2dt}: Convert character to \code{Date}, trying multiple formats.
#'   \item \code{dt2xlseq}: Convert R \code{Date} to Excel numeric date sequence.
#'   \item \code{is.ok}: Test if an object is non-null, non-NA, and "okay".
#'   \item \code{if.ok}: Return value if OK, else default.
#'   \item \code{if.na}: Replace NA values with a default.
#'   \item \code{if.blank}: Replace blank or NA strings with a default.
#'   \item \code{pr}: Format numbers with thousands separator.
#'   \item \code{attrs_get}: Get all attributes except names, row.names, class, dim, dimnames, tsp.
#'   \item \code{attrs_add}: Add or update attributes to an object.
#'   \item \code{hd}: Return a data frame head (first n rows).
#'   \item \code{\%of\%}, \code{\%notof\%}: Vector inclusion/exclusion operators.
#'   \item \code{rpt_space}: Utility for report formatting layout.
#'   \item \code{trim}: Trim leading and trailing whitespace from strings.
#'   \item \code{permute}: Calculate number of permutations (\eqn{nPk}).
#'   \item \code{outlier}: Identify outliers in numeric vectors using boxplot heuristic.
#' }
#'
#' @note Copyright 2025, Peter Lert, All rights reserved.
#'
#' @keywords internal utility
#' @examples
#' char2dt("08/06/2025")
#' dt2xlseq(as.Date("2025-08-06"))
#' is.ok(NA)
#' if.ok(NULL, 1)
#' pr(10000)
#' trim("  text  ")
#' outlier(c(1, 2, 3, 100))
#'
#' @name tools.R
#' @author Peter Lert
#' @seealso base, utils
#'
#' @noRd
# General purpose tools
# Copyright 2025, Peter Lert, All rights reserved.
char2dt <- function(chr, d = "/") {
  if (!is.na(dt <-
    as.Date(chr, format = paste("%m", "%d", "%Y", sep = d)))[1]) {
    dt
  } else {
    as.Date(chr)
  }
}
dt2xlseq <- function(dt) {
  array(data = as.numeric(dt) + 25569, dimnames = list(names(dt)))
}
is.ok <- function(x) {
  if (is.null(x)) {
    return(FALSE)
  }
  if (is.list(x)) {
    return(any(!is.na(x)))
  }
  if (is.numeric(x)) {
    any(is.finite(x))
  } else {
    any(!is.na(x))
  }
}
if.ok <- function(x, def = 0) {
  if (is.ok(x)) {
    x
  } else {
    def
  }
}
if.na <- function(x, def = NA) {
  ifelse(!is.na(x), x, def)
}
if.blank <- function(x, def = NA) {
  ifelse(!x %in% c("", NA), x, def)
}
pr <- function(x, ...) {
  format(x, big.mark = ",", ...)
}
attrs_get <- function(x) {
  attributes(x)[names(attributes(x)) %notof% c("names", "row.names", "class", "dim", "dimnames", "tsp")]
}
attrs_add <- function(x, attrs) {
  for (nm in names(attrs)) {
    attr(x, nm) <- attrs[[nm]]
  }
  x
}
hd <- function(tbl, n = 30L) {
  utils::head(data.frame(tbl), n)
}
"%of%" <- function(x, table) {
  x[x %in% table]
}
"%notof%" <- function(x, table) {
  x[!x %in% table]
}
rpt_space <- function(loc, last.col = 15) {
  if (loc[2] >= last.col) {
    c(loc[1] + loc[3] + 1, 1, 0)
  } else {
    loc
  }
}
trim <- function(s) {
  s <- sub(
    pattern = "^ +",
    replacement = "",
    x = s
  )
  s <- sub(
    pattern = " +$",
    replacement = "",
    x = s
  )
  s
}
permute <- function(n, k) {
  choose(n, k) * factorial(k)
}
