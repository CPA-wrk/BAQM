#' Create a Four-Panel Regression Assumptions Plot
#'
#' Generates a 4-panel diagnostic plot for a multiple regression model, including:
#' 1) Fitted values vs. observed values (check for non-linearity),
#' 2) Quantile–Quantile plot of residuals (check for non-normality),
#' 3) Residuals vs. fitted values (check for heteroskedasticity),
#' 4) Autocorrelation or influence plot depending on whether data are time series.
#'
#' @param mdl A fitted model object (typically from \code{\link[stats]{lm}}).
#' @param opt A named \code{list} of options. Recognized elements include:
#'   \describe{
#'     \item{\code{ts}}{Logical; \code{TRUE} if data are time series, \code{FALSE} otherwise.}
#'     \item{\code{pred_intvl_pts}}{Integer; number of prediction points (default 100).}
#'     \item{\code{pval.SW}, \code{pval.BP}, \code{pval.DW}}{Logical; include p-values from Shapiro–Wilk,
#'       Breusch–Pagan, and Durbin–Watson tests in the plots.}
#'     \item{\code{cook.loess}}{Logical; whether to overlay Cook's distance loess curve.}
#'   }
#' @param parm List of plot formatting parameters (see \code{\link{lm_plot.parms}}).
#' @param plt_nms Character vector of which panels to plot. Defaults to fit, var, qq, and ac/infl depending on \code{opt$ts}.

#'
#' @details
#' This function is a high-level wrapper that calls internal plotting functions
#' (\code{lm_plot.fit}, \code{lm_plot.var}, \code{lm_plot.qq}, and either \code{lm_plot.ac} or
#' \code{lm_plot.infl}) and assembles their outputs into a combined \code{\link[cowplot]{plot_grid}}.
#'
#' @return A \code{ggplot} object representing the 4-way diagnostic panel.
#'   Invisibly returns a list containing:
#'   \itemize{
#'     \item \code{p_4way} – the combined plot,
#'     \item other elements passed through from the individual plot functions.
#'   }
#'
#' @examples
#' \dontrun{
#' fit <- lm(mpg ~ wt + hp, data = mtcars)
#' lm_plot.4way(fit, opt = list(ts = FALSE, pval.DW = TRUE))
#' }
#' @export
lm_plot.4way <- function(mdl,
                         opt = list(ts = FALSE),
                         parm = list(),
                         plt_nms = c("fit", "var", "qq",
                                     ifelse(opt$ts, "ac", "infl"))) {
  # Copyright 2025, Peter Lert, All rights reserved.
  #
  # PLert, Spring 2025
  #
  # Build 4-panel plot of for multiple regression assumption analysis
  # (order: top-left, top-right, bottom-left, bottom-right):
  #   fit:  Fitted.Values vs. Observed.Values: checking for non-linearity
  #   var:  Residuals vs. Fitted.Values: checking for heteroskedasticity
  #   qq:   Quantiile-Quantile plot of Residuals: checking non-normality
  #   ac:   Residuals vs. Order (time series): checking for autocorrelation
  #   infl: Comb plot of studentized residual vs sequence w/ influence level
  #   lev:  Standardized Residuals vs. Leverage with Cook's distance contours
  #
  # options:
  #   ts:             TRUE for time-series data, FALSE for infl/lev plots
  #   pred_intvl_pts: number of prediction interval points on q-q plot
  #   pvals:          Print test pvals?
  #   cook.loess:     add loess curve to Cook's distance plot?
  #
  # plot format parameters:
  #   see lm_plot.parms()
  #
  # Plot settings
  if (missing(mdl)) {
    cat(
      "Inputs: mdl,",
      "        opt = list(ts=FALSE, pred_intvl_pts=100, pval.SW=FALSE,",
      "                   pval.BP=FALSE, pval.DW=FALSE, cook.loess=FALSE)",
      "        <default option values>",
      sep = "\n"
    )
    invisible()
  }
  #
  # Plot panels
  #
  lm_plot.lst <- list(mdl = mdl,
                      opt = opt,
                      parm = lm_plot.parms(parm), # inputs override defaults
                      df = lm_plot.df(mdl),
                      plts = list())
  for (nm in plt_nms) {
    lm_plot.lst <- do.call(paste0("lm_plot.", nm), args = lm_plot.lst)
  }
  #
  lm_plot.lst$p_4way <- cowplot::plot_grid(
    lm_plot.lst$plts[[plt_nms[1]]],
    lm_plot.lst$plts[[plt_nms[2]]],
    lm_plot.lst$plts[[plt_nms[3]]],
    lm_plot.lst$plts[[plt_nms[4]]]
  )
  #
  invisible(lm_plot.lst)
}
