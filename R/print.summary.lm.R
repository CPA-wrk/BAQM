#' Print a Summary for Linear Model Objects
#'
#' Prints a comprehensive summary for objects of class \code{summary.lm} or \code{lm}, including model statistics, ANOVA table, coefficients, and optional tables (correlations, covariance, fits), followed by a five-number summary of residuals and the model call.
#'
#' @param sumry An object of class \code{summary.lm} or \code{lm}.
#' @param options A character vector of optional summary tables to print (e.g., \code{"v.correlation"}, \code{"cov.unscaled"}, \code{"correlation"}, \code{"fits"}). Printed in the given order if present.
#' @param na.print String to use for NA values in the tables.
#' @param digits Minimal number of significant digits. Defaults to \code{max(5, getOption("digits") - 2)}.
#' @param signif.stars Logical; whether to show significance stars in the coefficients table. Defaults to \code{getOption("show.signif.stars")}.
#' @param eps Smallest positive floating-point value, used for formatting near-zero residuals. Defaults to \code{.Machine$double.eps}.
#' @param ... Additional arguments (not currently used).
#'
#' @details
#' The function prints summary statistics, ANOVA, and coefficients tables for a linear model in order, along with specified optional tables if provided. It concludes with a five-number-plus-mean summary of residuals and the model call.
#' For objects not of class \code{summary.lm}, a default print method is used.
#'
#' @seealso \code{\link{summary.lm}}, \code{\link{print.table.summary.lm}}
#' @export
#'
#' @examples
#' mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
#' summary(mdl)
#' summary(mdl, options = c("correlation", "fits"))
print.summary.lm <- function (sumry,
                              options = NULL,
                              na.print = "",
                              digits = max(5, getOption("digits") - 2),
                              signif.stars = getOption("show.signif.stars"),
                              eps = .Machine$double.eps,
                              ...) {
  # Copyright 2025, Peter Lert, All rights reserved.
  # Print a summary of an lm object
  #
  # Printing the summary of an lm object
  # Always print the following tables (in order):
  #   stats, anova, coefficients
  # Optional tables are printed, if given, in order given in options:
  #   v.correlation, cov.unscaled, correlation, residuals
  # Summary output ends with 5-number+ summary of residuals and the call.
  #
  if (inherits(sumry, "lm")) {
    sumry <- summary.lm(sumry)
  }
  #
  if (!inherits(sumry, "summary.lm")) {
    print(sumry)
    invisible(sumry)
  }
  #
  headings <- list(
    stats = "Summary Statistics:",
    anova = "Analysis of Variance:",
    coefficients = "Coefficients:",
    v.correlation = "Variable Correlation:",
    cov.unscaled = "Coefficient Covariance:",
    correlation = "Coefficient Correlation:",
    fits = "Fits and Residuals:"
  )
  for (tbl_nm in c("stats", "anova", "coefficients", options)) {
    if (is.null(sumry[[tbl_nm]])) {
      cat("No ", headings[[tbl_nm]], "\n\n")
      next
    }
    cat("\n", headings[[tbl_nm]], "\n", sep = "")
    print.table.summary.lm(
      sumry[[tbl_nm]],
      digits = digits,
      na.print = na.print,
      signif.stars = signif.stars,
      eps = eps
    )
  }
  #
  # Residuals summary
  res <- sumry$residuals
  res_df <- sumry$df[2]
  if (diff(range(res)) > 1e07) {
    r.scipen <- -2
    r.digits <- max(3, digits - 2)
  } else {
    r.scipen <- getOption("scipen")
    r.digits <- digits - 1
  }
  r.sumry <- NULL
  if (res_df > 5) {
    nms <- c("Min", "1Q", "Median", "3Q", "Max", "Mean")
    r.sumry <- sort(structure(c(
      stats::quantile(res, names = FALSE), mean(res)
    ), names = nms))
    r.fmtd <- sapply(r.sumry, format, digits = r.digits,
                     nsmall = 0, big.mark = ",", scientific = r.scipen)
    if (r.digits > 2 && !is.null(i <- grep("e-", r.fmtd))) {
      r.fmtd[i] <- format(r.sumry[i], digits = 2, scientific = r.scipen)
    }
    if (!is.null(i <- which(abs(r.sumry) < res_df * eps))) {
      r.fmtd[i] <- paste0("<", format(res_df * eps, digits = 1))
    }
    r.fmtd <- format(rbind(names(r.fmtd), r.fmtd), justify = "c")
    dimnames(r.fmtd) <- list(c("Summary of", "Residuals:"),
                              rep(" ", ncol(r.fmtd)))
  } else if (res_df > 0) {
    r.fmtd <- format(res, digits = r.digits,
                     nsmall = 0, big.mark = ",", scientific = r.scipen)
  }
  if (is.null(r.fmtd)) {
    cat("ALL",
        sumry$df[1],
        "residuals are 0: no residual degrees of freedom!\n")
  } else {
    print.default(r.fmtd, quote = FALSE, print.gap = 1)
  }
  #
  # Lastly report the lm Call
  s.note <- matrix(
    cl <- format(sumry$call),
    nrow = length(cl),
    ncol = 1,
    dimnames = list(c("Call", rep("", length(
      cl
    ) - 1)), NULL)
  )
  print.default(matrix(s.note, dimnames = list(paste0(
    rownames(s.note), ": "
  ), "")), quote = FALSE)
  invisible(sumry)
}
