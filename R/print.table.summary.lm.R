#' Print a Table from Linear Model Summary
#'
#' Prints a formatted table from a summary of a linear model, including coefficients, ANOVA, correlation matrices, or summary statistics. Significance stars and legends are added as appropriate.
#'
#' @param x A table object from a linear model summary (e.g., coefficients, ANOVA, statistics, correlation matrices).
#' @param digits Number of significant digits to print. Defaults to \code{max(4, getOption("digits") - 2)}.
#' @param quote Logical; whether to print with quotes (default: FALSE).
#' @param na.print String to use for NA values (default: ").
#' @param zero.print String to use for 0 values (default: 0).
#' @param right Logical, indicating whether or not strings should be right aligned (default: TRUE).
#' @param justify Justification for columns ("right" or "left"; default: "right").
#' @param signif.stars Logical; whether to show significance stars for p-values (default: \code{getOption("show.signif.stars")}).
#' @param eps Smallest positive floating-point value for formatting near-zero p-values (default: \code{.Machine$double.eps}).
#' @param nsmall Minimum number of digits to the right of the decimal point (default: 4).
#' @param prnt.lgnd Character vector naming tables to print significance legends for (default: \code{"coefficients"}).
#' @param dig.test Digits for hypothesis test statistics (default: \code{max(1, min(5, digits - 2))}).
#' @param ... Additional arguments (not currently used).
#'
#' @details
#' This method handles tabular output from linear model summaries, including coefficients, ANOVA, statistics, and correlation/covariance matrices. It formats p-values, adds significance stars, and prints appropriate legends for hypothesis tests.
#'
#' @return Invisibly returns the input table.
#'
#' @seealso \code{\link{print.summary.lm}}
#' @exportS3Method BAQM::print
#'
#' @examples
#' mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
#' sumry <- summary(mdl)
#' print(sumry$coefficients)
print.table.summary.lm <- function(x,
                                   digits = max(4, getOption("digits") - 2),
                                   quote = FALSE,
                                   na.print = "",
                                   zero.print = "0",
                                   right = TRUE,
                                   justify = "right",
                                   signif.stars = getOption("show.signif.stars"),
                                   eps = .Machine$double.eps,
                                   nsmall = 4,
                                   prnt.lgnd = c("coefficients"),
                                   dig.test = max(1, min(5, digits - 2)),
                                   ...) {
  # Copyright 2025, Peter Lert, All rights reserved.
  #
  # Method to print a table component of an lm object summary
  #
  tbl_nm <- sub(".summary.lm", "", grep("summary.lm", class(x), value = TRUE))
  tbl_nm <- tbl_nm[!tbl_nm %in% "table"]
  t.mat <- as.matrix(x)
  t.fmtd <- array("", dim = dim(t.mat), dimnames = dimnames(t.mat))
  t.note <- rbind(matrix(character(0), nrow = 0, ncol = 1), attr(x, "note"))
  #
  if (tbl_nm %in% c("v.correlation", "cov.unscaled", "correlation")) {
    p <- NCOL(t.mat)
    if (p > 1L) {
      t.fmtd <- format(
        round(t.mat, nsmall),
        nsmall = nsmall,
        digits = digits,
        justify = justify
      )
      t.fmtd[!lower.tri(t.fmtd, diag = TRUE)] <- ""
    }
  } else {
    nms <- colnames(t.mat)
    i.pval <- which(substr(nms, 1, 3) %in% c("Pr(", "p-v"))
    #
    # Format top level summary regression statistics
    if (tbl_nm %in% "stats") {
      s.cols <- c("R-Squared", "Adj-R2", "MAPE")
      for (nm in nms[i.pval]) {
        t.fmtd[, nm] <-
          format.pval(t.mat[, nm], digits = dig.test, eps = eps)
      }
      for (nm in nms[nms %in% s.cols]) {
        t.fmtd[, nm] <- format(t.mat[, nm], digits = digits, nsmall = nsmall)
      }
      for (nm in nms[!nms %in% c(nms[i.pval], s.cols)]) {
        t.fmtd[, nm] <- format(t.mat[, nm], digits = digits)
      }
      t.fmtd <- cbind(paste(nms, "="), as.character(t.fmtd[1, ]))
      t.grpd <- cbind(t.fmtd[1:3, ], t.fmtd[4:6, ], t.fmtd[7:9, ])
      for (i in 1:6) {
        t.grpd[, i] <- format(t.grpd[, i], justify = c("r", "l")[1 + (i %% 2)])
      }
      c.nms <- c(
        "Fit",
        "Value",
        "Performance  ",
        "Measure",
        "Err(Resids)",
        "Metric"
      )
      # Generate significance stars for F-stat p-value, and legend
      if (signif.stars) {
        for (i.p in i.pval) {
          ij.p <- c((i.p - 1) %% 3 + 1, (i.p - 1) %/% 3 + 2)
          strs <- rep("   ", 3)
          sig <- stats::symnum(
            t.mat[, nms[i.p]],
            corr = FALSE,
            na = FALSE,
            cutpoints = c(0, 0.001, 0.01, 0.05, 0.1, 1),
            symbols = c("***", "** ", " * ", " . ", "   ")
          )
          strs[ij.p[1]] <- sig
          t.note <- rbind(t.note, matrix(
            attr(sig, "legend"),
            nrow = 1,
            ncol = 1,
            dimnames = list("Signif.Levels", NULL)
          ))
          t.grpd[, ij.p[2]] <- paste(t.grpd[, ij.p[2]], strs)
          c.nms[ij.p[2]] <- paste(c.nms[ij.p[2]], "   ")
        }
      }
      # reformat into 3 columns
      t.grpd <- cbind(t.grpd[, 1:2], t.grpd[, 3:4], t.grpd[, 5:6])
      c.nms <- c(c.nms[1:2], c.nms[3:4], c.nms[5:6])
      t.fmtd <- matrix(t.grpd[, -1],
        nrow = 3,
        dimnames = list(t.grpd[, 1], c.nms[-1])
      )
    } else {
      # Format Coefficients or ANOVA tables
      i.tval <- which(substr(nms, 1, 3) %in% c("t-s", "t v"))
      for (nm in nms[i.tval]) {
        t.fmtd[, nm] <-
          format(round(t.mat[, nm], digits = dig.test + 1),
            digits = digits,
            eps = eps
          )
      }
      for (nm in nms[i.pval]) {
        t.fmtd[, nm] <-
          format.pval(t.mat[, nm], digits = dig.test, eps = eps)
      }
      for (nm in nms[!nms %in% nms[c(i.pval, i.tval)]]) {
        t.fmtd[, nm] <- format(t.mat[, nm], digits = digits, justify = justify)
      }
      t.fmtd[is.na(t.mat)] <- NA
      if (signif.stars) {
        for (i.p in i.pval) {
          sig <- stats::symnum(
            t.mat[, nms[i.p]],
            corr = FALSE,
            na = FALSE,
            cutpoints = c(0, 0.001, 0.01, 0.05, 0.1, 1),
            symbols = c("***", "** ", " * ", " . ", "   ")
          )
          t.note <- rbind(t.note, matrix(
            attr(sig, "legend"),
            nrow = 1,
            ncol = 1,
            dimnames = list("Signif.Levels", NULL)
          ))
          i <- which(!is.na(t.fmtd[, nms[i.p]]))
          t.fmtd[i, nms[i.p]] <- paste(t.fmtd[i, nms[i.p]], sig[i])
          colnames(t.fmtd)[i.p] <- paste(colnames(t.fmtd)[i.p], "   ")
        }
      }
    }
  }
  print.default(
    t.fmtd,
    print.gap = 2,
    quote = quote,
    right = right,
    na.print = na.print
  )
  #
  if (nrow(t.note) > 0) {
    p.note <- t.note
    if (!tbl_nm %in% prnt.lgnd) {
      p.note <- p.note[!rownames(p.note) %in% "Signif.Levels", ]
    }
    if (length(p.note) > 0) {
      print.default(matrix(p.note, dimnames = list(paste0(
        rownames(p.note), ": "
      ), "")), quote = FALSE)
    }
    attr(x, "note") <- t.note
  }
  invisible(x)
}
