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
  if (is.numeric(x)) any(is.finite(x)) else any(!is.na(x))
}
if.ok <- function(x, def = 0) {
  if (is.ok(x)) x else def
}
if.na <- function(x, def = NA) {
  ifelse(!is.na(x), x, def)
}
if.blank <- function(x, def = NA) {
  ifelse(!x %in% c("", NA), x, def)
}
namewith <- function(obj, nm = NULL) {
  if (!is.ok(nm)) {
    return(obj)
  }
  obj <- rep_len(obj, length(nm))
  names(obj) <- nm
  obj
}
permute <- function(n, k) {
  choose(n, k) * factorial(k)
}
pr <- function(x, ...) {
  format(x, big.mark = ",", ...)
}
attrs_get <- function(x) {
  attributes(x)[names(attributes(x)) %notof% c(
    "names", "row.names", "class", "dim", "dimnames", "tsp"
  )]
}
attrs_add <- function(x, attrs) {
  for (nm in names(attrs)) attr(x, nm) <- attrs[[nm]]
  x
}
hd <- function(tbl, n = 30L) {
  head(data.frame(tbl), n)
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
  s <- sub(pattern = "^ +", replacement = "", x = s)
  s <- sub(pattern = " +$", replacement = "", x = s)
  s
}
file_ext <- function(fil, n = 2) {
  file_split(fil, n, sep = ".")
}
file_lname <- function(fil, n = 2) {
  file_split(fil, n, sep = "/")
}
file_split <- function(fil, n, sep) {
  # Return list=c(ext, pathname_root) for each fil
  x_lst <- strsplit(fil, sep, fixed = TRUE)
  names(x_lst) <- names(fil)
  x_lst <- lapply(x_lst, function(x) {
    if (n == 1) {
      return(tail(x, 1))
    }
    if ((i <- length(x) - n) <= 0) {
      return(c(rev(x), rep("", -i)))
    }
    c(rev(tail(x, n - 1)), paste(head(x, i + 1), collapse = sep))
  })
  if (!is.list(fil) && length(fil) == 1) {
    return(unlist(x_lst))
  }
  x_lst
}
sumry <- function(object, ...) {
  if (!"lm" %in% class(object))
    return(summary(object, ...))
  sumry.lm(object, ...)
}

