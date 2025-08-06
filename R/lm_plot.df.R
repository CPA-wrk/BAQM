lm_plot.df <- function(mdl) {
  # Copyright 2025, Peter Lert, All rights reserved.
  #
  # Augmented model data for plots
  #
  infl <- stats::influence(mdl)
  infl.msrs <- stats::influence.measures(mdl, infl = infl)
  x.dfbeta <- stats::dfbeta(mdl, infl = infl)
  x.dfbetas <- stats::dfbetas(mdl, infl = infl)
  pred <- suppressWarnings(stats::predict(
    mdl,
    interval = "prediction",
    level = 0.95,
    se.fit = TRUE
  ))
  df <- data.frame(
    .id = names(mdl$residuals),
    .sequence = 1:length(mdl$residuals),
    .fits = mdl$fitted.values,
    .resid = mdl$residuals,
    .obs = mdl$fitted.values + mdl$residuals,
    .sigma = infl$sigma,
    .std.resid = stats::rstandard(mdl, infl = infl),
    .stud.resid = stats::rstudent(mdl, infl = infl),
    structure(cbind(
      pred$fit[, -1], infl.msrs$infmat[, c("cook.d", "hat")]), dimnames = list(
      NULL, c(".lower.pi", ".upper.pi", ".cooksd", ".hat")
    )),
    structure(infl.msrs$is.inf[, c("cook.d", "hat")], dimnames = list(
      NULL, c(".cooksd.is.infl", ".hat.is.infl")
    ))
  )
  # .cooksd	    Cooks distance
  # .fits	      Fitted or predicted value
  # .hat	      Diagonal of the hat matrix = Leverage
  # .resid	    The difference between observed and fitted values
  # .se.fit	    Standard errors of fitted values
  # .stud.resid	Studentized residuals
  # .std.resid	Standardised residuals
  # .lower.pi	  Lower bound on interval for fitted values
  # .upper.pi	  Upper bound on interval for fitted values
  #
  # Theoretical normal quantile
  df$.quantile <- stats::qqnorm(y = df$.resid, plot.it = FALSE)$x
  #
  # Outlier per ordinary residual, influential per studentized residual
  df$outlier <- ifelse(outlier(df$.resid), "outl", "reg")
  df$.stud.outl <- ifelse(outlier(df$.stud.resid), "infl", "reg")
  #
  df
}
