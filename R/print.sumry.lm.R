print.sumry.lm <- function (sumry,
                            options = NULL,
                            na.print = "",
                            digits = max(5, getOption("digits") - 2),
                            signif.stars = getOption("show.signif.stars"),
                            eps = .Machine$double.eps,
                            ...) {
  #
  # Printing the summary of an lm object
  # Always print the following tables (in order):
  #   stats, anova, coefficients
  # Optional tables are printed, if given, in order given in options:
  #   v.correlation, cov.unscaled, correlation, residuals
  # Summary output ends with 5-number+ summary of residuals and the call.
  #
  if (inherits(sumry, "lm")) {
    sumry <- sumry.lm(sumry)
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
    print.table.sumry.lm(
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
  r.sumry <- NULL
  if (res_df > 5) {
    nms <- c("Min", "1Q", "Median", "3Q", "Max", "Mean")
    r.sumry <- sort(structure(c(
      quantile(res, names = FALSE), mean(res)
    ), names = nms))
    r.fmtd <- sapply(r.sumry, format, digits = digits + 1, nsmall = 1)
    if (!is.null(i <- which(abs(r.sumry) < res_df * eps))) {
      r.fmtd[i] <- paste0("<", format(res_df * eps, digits = 2))
    }
    r.sumry <- format(rbind(names(r.fmtd), r.fmtd), justify = "c")
    dimnames(r.sumry) <-
      list(c("", "Residuals summary: "), rep(" ", ncol(r.sumry)))
  } else if (res_df > 0) {
    r.sumry <- format(resid, digits = digits)
  }
  if (is.null(r.sumry)) {
    cat("ALL",
        sumry$df[1],
        "residuals are 0: no residual degrees of freedom!\n")
  } else {
    print.default(r.sumry, quote = FALSE, print.gap = 2)
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
