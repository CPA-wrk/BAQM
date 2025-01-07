lm_sumry <- function(mdl, log = NA) {
  #
  # Use log = "ln" for regression of ln(y) ~ b0 + b1...
  #           "log10" for regression of log10(y) ~ b0 + b1...
  #
  p_val_min <- 1/10^(sum(unlist(options()[c("scipen", "digits")])))
  #
  sumry <- summary(mdl)
  #
  # Format coeff table
  coeffs <- data.frame(
    var = row.names(coefficients(sumry)),
    coefficients(sumry)
  )
  dimnames(coeffs) <- list(
    row.names = 1:nrow(coeffs),
    names = c("var", "coeff", "stderr", "tstat", "pval")
  )
  coeffs$strs <- gtools::stars.pval(coeffs$pval)
  coeffs$vif <- NA
  if (length(attr(summary(mdl)$terms, "term.labels")) > 1) {
    vif <- car::vif(mdl)
    if (class(vif)[1] %in% "matrix") vif <- vif[, "GVIF"]
    if (is.ok(ii <- names(attr(sumry$terms, "dataClasses") %of% "factor"))) {
      for (i in ii) {
        vif <- c(vif, namewith(
          rep(vif[i], length(mdl$xlevels[[i]])),
          str_c(i, mdl$xlevels[[i]])
        ))
      }
    }
    coeffs$vif <- vif[match(coeffs$var, names(vif))]
  }
  coeffs$pval <- ifelse(coeffs$pval < p_val_min, 0, coeffs$pval) * 100
  #
  # Format legend, call
  notes <- c(paste("Signif. Level:", attr(coeffs$strs, "legend")),
             paste("Call:", format(sumry$call))
  )
  #
  coeffs.nms <- c(
    var = "Variable",
    coeff = "Coefficient",
    stderr = "   StdErr",
    tstat = "   t-stat",
    pval = "  Pr(b=0) %",
    strs = "Sig",
    vif = "     VIF"
  )
  names(coeffs) <- coeffs.nms[match(names(coeffs), names(coeffs.nms))]
  #
  # Format stats
  f <- sumry$fstatistic
  fits <- fitted.values(mdl)
  res <- residuals(mdl)
  obs <- fits + res
  f.pval <- 1 - pf(f[1], f[2], f[3])
  f.pval <- ifelse(f.pval < p_val_min, 0, f.pval)
  #
  if (!log %in% c("", NA)) {
    if (log %in% c("log10", 10)) {
      fits <- exp(fits * log(10))
      obs <- exp(obs * log(10))
    } else {
      fits <- exp(fits)
      obs <- exp(obs)
    }
    res <- obs - fits
    r2 <- cor(fits, obs)^2
    sumry$adj.r.squared <- 1 - (sumry$adj.r.squared - 1) /
      (sumry$r.squared - 1) * (1 - r2)
    sumry$r.squared <- r2
    sumry$sigma <- sqrt(sum(res^2) / sumry$df[2])
  }
  stats <- as.data.frame(list(
    n = length(sumry$residuals),
    fstat = f[1],
    f.pval = f.pval * 100,
    r2 = sumry$r.squared,
    adjr2 = sumry$adj.r.squared,
    sigma = sumry$sigma,
    mad = mean(abs(res)),
    mape = mean(abs(res / obs)),
    rmse = sqrt(mean(res^2))
  ), row.names = NULL)
  #
  stats.nms <- list(
    n = "# Observations =",
    fstat = "F-Statistic =",
    f.pval = "Pr(b's=0) % =",
    f.strs = "Sig",
    mad = "MAD  =",
    mape = "MAPE =",
    rmse = "RMSE =",
    r2 = "R-Squared =",
    adjr2 = "Adj-R2 =",
    sigma = "Std Error ="
  )
  names(stats) <- stats.nms[match(names(stats), names(stats.nms))]
  #
  # Transpose and restack for printing
  stats <- data.frame(
    stat = names(stats),
    val = unlist(stats[1, ]),
    row.names = NULL
  )
  stats <- cbind(stats[1:3, ], stats[4:6, ], stats[7:9, ])
  names(stats) <- c("Fit  ", "Param",
                     "   Performance  ", "Statistic",
                    "   Error  ", "Metric"
  )
  #
  list(coeffs = coeffs, stats = stats, notes = notes)
}
