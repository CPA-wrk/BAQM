#' Summary Method for Linear Model (\code{lm}) Objects
#'
#' Computes a comprehensive summary for an object of class \code{lm}, including performance statistics, ANOVA, coefficients with VIFs, and correlation/covariance tables. Handles factor variable recoding and collinearity/singularity warnings.
#'
#' @param object An object of class \code{lm}.
#' @param ... Additional arguments (currently unused).
#'
#' @details
#' The returned summary object includes:
#' \itemize{
#'   \item \strong{stats}: Performance statistics (F-statistic, R-squared, RMSE, etc.)
#'   \item \strong{anova}: Simplified ANOVA table (Sum of squares, mean squares, F-statistic, p-value)
#'   \item \strong{coefficients}: Table of regression coefficients with standard errors, t-stats, p-values, and VIFs
#'   \item \strong{cov.unscaled}, \strong{correlation}: Covariance and correlation matrices for coefficients
#'   \item \strong{v.correlation}: Variable correlation matrix (for models with interaction terms)
#'   \item \strong{fits}: Observed, fitted, and residual values
#'   \item \strong{aliased}: Logical vector indicating aliased coefficients
#'   \item \strong{df}: Degrees of freedom
#'   \item \strong{sigma}: Estimated standard deviation of residuals
#'   \item \strong{r.squared}, \strong{adj.r.squared}: R-squared and adjusted R-squared
#'   \item \strong{fstatistic}, \strong{f.pval}: F-statistic and p-value for overall regression
#'   \item \strong{notes}: Warnings, singularity, and collinearity notes (attached as attribute)
#' }
#' Factor variable names are recoded for clarity, and coefficients for aliased or singular variables are omitted with notes produced as attributes.
#'
#' @return An object of class \code{summary.lm} containing tables and statistics described above.
#'
#' @seealso \code{\link{print.summary.lm}}, \code{\link{lm}}
#' @exportS3Method stats::summary
#'
#' @examples
#' mdl <- lm(Sepal.Length ~ Sepal.Width + Petal.Length, data = iris)
#' summary(mdl)
summary.lm <- function(object, ...) {
  # Copyright 2025, Peter Lert, All rights reserved.
  #
  mdl <- object
  if (!inherits(mdl, "lm")) {
    stop("not an \"lm\" object")
  }
  # Extract key elements from the lm object
  rk <- mdl$rank
  resid.df <- mdl$df.residual
  coeffs <- mdl$coefficients
  #
  # Recode factor variable names
  if (length(levels <- mdl$xlevels) > 0) {
    var_fact <-
      lapply(names(levels), function(xvar, levels) {
        x <- levels[[xvar]]
        if (length(x) > 1) {
          xvars <- data.frame(
            old = paste0(xvar, x),
            new = paste(xvar, x, sep = "_")
          )
        } else {
          xvars <- data.frame(old = paste0(xvar, x), new = paste0(xvar, x))
        }
        xvars
      }, levels = levels)
    var_fact <- do.call(rbind, var_fact)
    # Handle interactions
    intx_nms_splt <- strsplit(names(coeffs), split = ":", fixed = TRUE)
    var_trans <- data.frame(old = names(coeffs))
    var_trans$new <- unlist(lapply(intx_nms_splt, function(x) {
      i <- match(x, var_fact$old)
      x[!is.na(i)] <- var_fact$new[i[!is.na(i)]]
      paste(x, collapse = ":")
    }))
    names(coeffs) <- var_trans$new[match(names(coeffs), var_trans$old)]
  } else {
    var_trans <- NULL
  }
  #
  # Notes for alias, singularity, collinearity warnings
  note <- matrix(character(0), nrow = 0, ncol = 1)
  if (rk == 0) {
    r <- mdl$residuals
    n <- length(r)
    w <- mdl$weights
    if (is.null(w)) {
      rss <- sum(r^2)
    } else {
      rss <- sum(w * r^2)
      r <- sqrt(w) * r
    }
    resvar <- rss / resid.df
    ans <- mdl[c("call", "terms", if (!is.null(mdl$weights)) {
      "weights"
    })]
    ans$aliased <- is.na(coeffs)
    ans$residuals <- r
    ans$df <- c(0L, n, length(ans$aliased))
    ans$sigma <- sqrt(resvar)
    ans$r.squared <- ans$adj.r.squared <- 0
    ans$cov.unscaled <- matrix(NA_real_, 0L, 0L)
    ans$correlation <- ans$cov.unscaled
  } else {
    if (is.null(mdl$terms)) {
      stop("invalid 'lm' object:  no 'terms' component")
    }
    if (!inherits(mdl, "lm")) {
      warning("calling summary.lm(<fake-lm-object>) ...")
    }
    Qr <- qr(mdl)
    if (!is.null(var_trans)) {
      colnames(Qr$qr) <- var_trans$new[match(colnames(Qr$qr), var_trans$old)]
    }
    n <- NROW(Qr$qr)
    if (is.na(mdl$df.residual) || n - rk != mdl$df.residual) {
      warning(
        "residual degrees of freedom in mdl",
        "suggest this is not an \"lm\" fit"
      )
    }
    r <- mdl$residuals
    f <- mdl$fitted.values
    obs <- f + r
    if (!is.null(mdl$offset)) {
      f <- f - mdl$offset
    }
    w <- mdl$weights
    if (is.null(w)) {
      mss <- if (attr(mdl$terms, "intercept")) {
        sum((f - mean(f))^2)
      } else {
        sum(f^2)
      }
      rss <- sum(r^2)
    } else {
      mss <- if (attr(mdl$terms, "intercept")) {
        m <- sum(w * f / sum(w))
        sum(w * (f - m)^2)
      } else {
        sum(w * f^2)
      }
      rss <- sum(w * r^2)
      r <- sqrt(w) * r
    }
    resvar <- rss / resid.df
    if (is.finite(resvar) &&
      resvar < (mean(f)^2 + stats::var(c(f))) * 1e-30) {
      warning("essentially perfect fit: summary may be unreliable")
    }
    p1 <- 1:rk
    R <- chol2inv(Qr$qr[p1, p1, drop = FALSE])
    se <- sqrt(diag(R) * resvar)
    est <- coeffs[Qr$pivot[p1]]
    tval <- est / se
    #
    # Build summary object to return
    ans <- mdl[c("call", "terms", if (!is.null(mdl$weights)) {
      "weights"
    })]
    ans$residuals <- r
    ans$sigma <- sqrt(resvar)
    ans$aliased <- is.na(coeffs)
    ans$df <- c(rk, resid.df, NCOL(Qr$qr))
    if (!is.null(mdl$na.action)) {
      ans$na.action <- mdl$na.action
    }
    if (rk != attr(mdl$terms, "intercept")) {
      df.int <- if (attr(mdl$terms, "intercept")) {
        1L
      } else {
        0L
      }
      ans$r.squared <- mss / (mss + rss)
      ans$adj.r.squared <- 1 - (1 - ans$r.squared) * ((n - df.int) / resid.df)
      ans$fstatistic <- c(
        value = (mss / (rk - df.int)) / resvar,
        numdf = rk - df.int,
        dendf = resid.df
      )
      ans$f.pval <- stats::pf(ans$fstatistic["value"],
        ans$fstatistic["numdf"],
        ans$fstatistic["dendf"],
        lower.tail = FALSE
      )
      #
      # Build table of fit data
      ans$fits <- cbind(obs, f, r)
      colnames(ans$fits) <- c("Obs.Value", "Fit.Value", "Residual")
      #
      # Build simplified ANOVA table - Sum of squares
      anova_tbl <- stats::anova(mdl)
      anova_tbl <- data.frame(
        row.names = c("Regression", "Error(Resids)"),
        Deg.Frdm = c(sum(anova_tbl[-nrow(anova_tbl), "Df"]), anova_tbl[nrow(anova_tbl), "Df"]),
        Sum.of.Sqs = c(sum(anova_tbl[-nrow(anova_tbl), "Sum Sq"]), anova_tbl[nrow(anova_tbl), "Sum Sq"])
      )
      anova_tbl <-
        rbind(anova_tbl, data.frame(row.names = "Total", sapply(anova_tbl, sum, simplify = FALSE)))
      anova_tbl$Mean.Sum.Sqs <-
        c(anova_tbl$Sum.of.Sqs[1:2] / anova_tbl$Deg.Frdm[1:2], NA)
      anova_tbl$F.statistic <-
        c(
          anova_tbl$Mean.Sum.Sqs[1] / anova_tbl$Mean.Sum.Sqs[2],
          NA,
          NA
        )
      anova_tbl$"p-value(F)" <- c(ans$f.pval, NA, NA)
      ans$anova <- as.matrix(anova_tbl)
      #
      # Initial code for adjustment for logarithmic regression
      # Call with "log = "ln" for regression of ln(y) ~ b0 + b1...
      #           "log10" for regression of log10(y) ~ b0 + b1...
      #
      # if (!log %in% c("", NA)) {
      #   obs <- f + r
      #   if (log %in% c("log10", 10)) {
      #     f <- exp(f * log(10))
      #     obs <- exp(obs * log(10))
      #   } else {
      #     f <- exp(f)
      #     obs <- exp(obs)
      #   }
      #   r <- obs - f
      #   r2 <- cor(f, obs)^2
      #   ans$adj.r.squared <- 1 - (ans$adj.r.squared - 1) /
      #     (ans$r.squared - 1) * (1 - r2)
      #   ans$r.squared <- r2
      #   ans$sigma <- sqrt(sum(r^2) / ans$df[2])
      # }
      #
      # Build Performance statistics table
      ans$stats <- cbind(
        n,
        ans$fstatistic["value"],
        ans$f.pval,
        ans$r.squared,
        ans$adj.r.squared,
        ans$sigma,
        mean(abs(r / obs)),
        mean(abs(r)),
        sqrt(mean(r^2))
      )
      dimnames(ans$stats) <- list(
        NULL,
        c(
          "Observations",
          "F-Statistic",
          "Pr(b's=0)",
          "R-Squared",
          "Adj-R2",
          "Std.Err.Est",
          "MAPE",
          "MAD ",
          "RMSE"
        )
      )
      #
    } else {
      ans$r.squared <- ans$adj.r.squared <- 0
    }
    # Build regression coefficient table with VIFs
    if (length(attr(mdl$terms, "order")) > 1) {
      m.mat <- as.data.frame(stats::model.matrix(mdl))
      if (!is.null(var_trans)) {
        names(m.mat) <- var_trans$new[match(names(m.mat), var_trans$old)]
      }
      #
      m.mat <- m.mat[!ans$aliased]
      data <- m.mat[names(m.mat)[!names(m.mat) %in% "(Intercept)"]]
      # Build variable correlation table
      ans$v.correlation <- stats::cor(data)
      #
      # require legal and unique names
      names(data) <- make.names(names(data), unique = TRUE)
      #
      # Calulate VIF
      vif <- as.list(array(NA_real_, dim = ncol(data), dimnames <- list(names(data))))
      nms <- names(vif)
      vif[nms] <- lapply(nms, function(xvar, data) {
        xvar.lm <- stats::lm(stats::as.formula(paste(xvar, "~ .")),
          data = data,
          na.action = stats::na.exclude
        )
        res <- xvar.lm$residuals
        fits <- xvar.lm$fitted.values
        resid.df <- xvar.lm$df.residual
        #
        SSR <- sum((fits - mean(fits))^2)
        SSE <- sum(res^2)
        res.var <- SSE / resid.df
        xvar.r.squared <- SSR / (SSR + SSE)
        #
        vif <- 1 / (1 - xvar.r.squared)
        if (is.finite(res.var) &&
          res.var < (mean(fits)^2 + stats::var(c(fits))) * .Machine$double.eps) {
          attr(vif, "note") <- matrix(
            "shows essentially perfect collinearity",
            nrow = 1,
            ncol = 1,
            dimnames = list(paste("VIF for", xvar), NULL)
          )
        }
        vif
      }, data = data)
      for (nm in names(vif)) {
        note <- rbind(note, attr(vif[[nm]], "note"))
      }
      vif <- unlist(vif)
      names(vif) <- names(m.mat)[!names(m.mat) %in% "(Intercept)"]
      vif <- vif[names(m.mat)]
      names(vif) <- names(m.mat)
      vif[!is.finite(vif)] <- NA
    } else {
      vif <- rep(NA_real_, length(coeffs))
    }
    # End VIF
    pval <- 2 * stats::pt(abs(tval), resid.df, lower.tail = FALSE)
    ans$coefficients <- cbind(est, se, tval, pval, vif)
    colnames(ans$coefficients) <-
      c("Coefficient", "Std.Error", "t-stat", "p-value", "VIF")
    #
    # Build coefficients covariance and correlation tables
    ans$cov.unscaled <- R
    dimnames(ans$cov.unscaled) <- dimnames(ans$coefficients)[c(1, 1)]
    ans$correlation <- (R * resvar) / outer(se, se)
    dimnames(ans$correlation) <- dimnames(ans$cov.unscaled)
  }
  if (any(aliased <- ans$aliased)) {
    note <- rbind(note, matrix(
      paste(
        "Collinear variables removed:",
        paste(names(aliased[aliased]), collapse = ", ")
      ),
      nrow = 1,
      ncol = 1,
      dimnames = list("Aliased variables", NULL)
    ))
  }
  if ((nsingular <- ans$df[3] - ans$df[1]) > 0) {
    note <- rbind(note, matrix(
      paste("Cannot define", nsingular, "coefficients"),
      nrow = 1,
      ncol = 1,
      dimnames = list("Singularities", NULL)
    ))
  }
  if (nrow(note) > 0) {
    attr(ans$coefficients, "note") <- note
  }
  for (nm in names(ans)) {
    if (!all(is.na(match(
      c("matrix", "data.frame"), class(ans[[nm]])
    )))) {
      class(ans[[nm]]) <-
        c(paste(c(nm, "table"), "summary.lm", sep = "."), class(ans[[nm]]))
    }
  }
  class(ans) <- "summary.lm"
  ans
}
