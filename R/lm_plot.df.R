#' Augment Model Data for Diagnostic Plots
#'
#' Generates an augmented data frame from a linear model object, including fitted values, residuals, leverage, Cook's distance, prediction intervals, and outlier/influence flags. This function prepares model diagnostics for plotting.
#'
#' @param mdl An object of class \code{lm}, representing the fitted linear model.
#'
#' @details
#' The returned data frame contains key statistics for each observation:
#' \itemize{
#'   \item \code{.id}: Observation identifier
#'   \item \code{.sequence}: Sequence index
#'   \item \code{.fits}: Fitted/predicted values
#'   \item \code{.resid}: Residuals
#'   \item \code{.obs}: Observed values
#'   \item \code{.sigma}: Estimated standard deviation for each residual
#'   \item \code{.std.resid}: Standardized residuals
#'   \item \code{.stud.resid}: Studentized residuals
#'   \item \code{.lower.pi}, \code{.upper.pi}: Lower/upper 95\% prediction interval bounds
#'   \item \code{.cooksd}: Cook's distance
#'   \item \code{.hat}: Leverage (diagonal of the hat matrix)
#'   \item \code{.cooksd.is.infl}, \code{.hat.is.infl}: Logical flags for influential points
#'   \item \code{.quantile}: Theoretical normal quantile of residuals
#'   \item \code{outlier}: Flag for ordinary residual outlier ("outl" or "reg")
#'   \item \code{.stud.outl}: Flag for studentized residual influential point ("infl" or "reg")
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
