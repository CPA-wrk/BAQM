#' Augment Model Data for Diagnostic Plots
#'
#' Generates an augmented data frame from a linear model object, including fitted values, residuals, leverage, Cook's distance, prediction intervals, and outlier/influence flags. This function prepares model diagnostics for plotting.
#'
#' @param mdl An object of class \code{lm}, representing the fitted linear model.
#' @param parm List of plotting parameters, usually from \code{lm_plot.parms()}.
#'
#' @details
#' The returned data frame contains key statistics for each observation:
#' \itemize{
#'   \item \code{.id}: Observation identifier
#'   \item \code{.sequence}: Sequence index
#'   \item \code{.obs}: Observed values
#'   \item \code{.fits}: Fitted/predicted values
#'   \item \code{.resid}: Residuals
#'   \item \code{.se.fit}: Estimated standard error of fitted (mean) value
#'   \item \code{.lower.pi}: Lower bound on 95\% prediction interval of fitted value
#'   \item \code{.upper.pi}: Upper bound on 95\% prediction interval of fitted value
#'   \item \code{.std.resid}: Standardized residuals
#'   \item \code{.stud.resid}: Studentized residuals
#'   \item \code{.cooksd}: Cook's distance
#'   \item \code{.hat}: Leverage (diagonal of the hat matrix)
#'   \item \code{.quantile}: Theoretical normal quantile of residuals
#'   \item \code{.is.outl}: Flag for residual outlier ("outl" or "reg")
#'   \item \code{.is.infl}: Flag for influential point ("infl" or "outl" or "reg")
#'   \item \code{.is.lev}: Flag for high leverage point ("lev" or "infl" or "reg")
#' }
#'
#' @return A data frame with augmented diagnostic variables, one row per observation.
#'
#' @seealso \code{\link[stats]{influence}}, \code{\link[stats]{influence.measures}}, \code{\link[stats]{rstandard}}, \code{\link[stats]{rstudent}}, \code{\link{outlier}}
#' @export
#'
#' @examples
#' mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
#' df <- lm_plot.df(mdl)
#' head(df)
lm_plot.df <- function(mdl, parm = list()) {
  # Copyright 2025, Peter Lert, All rights reserved.
  #
  # Augmented model data for plots
  #
  # .obs	      Observed value
  # .fits	      Fitted or predicted value
  # .resid	    The difference between observed and fitted values
  # .se.fit	    Standard error of fitted (mean) value
  # .lower.pi	  Lower bound on prediction interval of fitted value
  # .upper.pi	  Upper bound on prediction interval of fitted value
  # .std.resid	Standardised residual
  # .stud.resid	Studentized residual
  # .cooksd	    Cooks distance
  # .hat	      Diagonal of the hat matrix = Leverage
  # .quantile	  Theoretical normal quantile of residuals
  # .is.outl	  Label for residual outlier ("outl" or "reg")
  # .is.infl	  Label for influential point ("infl" or "outl" or "reg")
  # .is.lev	    Label for high leverage point ("lev" or "outl" or "reg")
  #
  # Default plot element parameters
  parms <- lm_plot.parms(mdl, parm)
  #
  infl <- stats::influence(mdl, do.coef = FALSE)
  pred <- suppressWarnings(stats::predict(
    mdl,
    interval = "prediction",
    level = 0.95,
    se.fit = TRUE
  ))
  #
  df <- data.frame(
    .id = names(mdl$residuals),
    .sequence = 1:length(mdl$residuals),
    .obs = mdl$fitted.values + mdl$residuals,
    .fits = mdl$fitted.values,
    .resid = mdl$residuals,
    .se.fit = pred$se.fit,
    .lower.pi = pred$fit[, "lwr"],
    .upper.pi = pred$fit[, "upr"],
    .std.resid = stats::rstandard(mdl, infl = infl),
    .stud.resid = stats::rstudent(mdl, infl = infl),
    .cooksd = stats::cooks.distance(mdl, infl = infl),
    .hat = stats::hatvalues(mdl, infl = infl)
    )
  #
  # Theoretical normal quantile
  df$.quantile <- stats::qnorm((1:nrow(df) - 0.5) / nrow(df))[
    rank(df$.resid, ties.method = "first")]
  # Extreme values thresholds
  # Outlier per standardized residual > 3 (default)
  # outl = list(meas = "boxplot", thrshld = 1.5)
  if (parms$xtrem$outl$meas == "boxplot") {
    outl.lst <- outlier(df$.resid, coef = parms$xtrem$outl$thrshld)
    df$.is.outl <- ifelse(outl.lst, "outl", "reg")
  } else {
    df$.is.outl <- ifelse(
      abs(df[[parms$xtrem$outl$meas]]) > parms$xtrem$outl$thrshld,
      "outl", "reg")
  }
  # Influential per Cook's D > F_quantile(0.5, k+1, n - (k+1)) (default)
  df$.is.infl <- ifelse(
    abs(df[[parms$xtrem$infl$meas]]) > parms$xtrem$infl$thrshld,
    "infl", df$.is.outl)
  # High leverage per hat > 2(k+1)/n (default)
  df$.is.lev <- ifelse(
    abs(df[[parms$xtrem$lev$meas]]) > parms$xtrem$lev$thrshld,
    "lev", df$.is.outl)
  #
  df
}
