#' Create a Four-Panel Regression Assumptions Plot
#'
#' Generates a 4-panel diagnostic plot for a multiple regression model, including:
#' 1) Fitted values vs. observed values (check for non-linearity),
#' 2) Quantile–Quantile plot of residuals (check for non-normality),
#' 3) Residuals vs. fitted values (check for heteroskedasticity),
#' 4) Autocorrelation for time series otherwise influence plot (leverage also available).
#'
#' @param mdl A fitted model object (typically from \code{\link[stats]{lm}}).
#' @param is.ts Logical; \code{TRUE} if data are time series, \code{FALSE} otherwise.
#' @param pred.intvl Logical; plot prediction interval on fitted vs observed.
#' @param pval.SW Logical; include Shapiro–Wilk p-value in \code{qq}  plot.
#' @param pval.BP Logical; include Breusch–Pagan p-value in \code{var} plot.
#' @param pval.DW Logical; include Durbin–Watson p-value in \code{ac}  plot.
#' @param cook.loess Logical; overlay Cook's distance loess curve in \code{infl}  plot.
#' @param rtn.all Logical; return all plots and parameters (vs. 4-way plot only).
#' @param plt.nms Character vector of which panels to plot. Defaults to fit, var, qq, and ac/infl depending on \code{is.ts}.
#' @param parm List of plot formatting parameters (see \code{\link{lm_plot.parms}}).
#' @param ... Additional arguments (not currently used).
#'
#' @details
#' This function is a high-level wrapper that calls internal plotting functions
#' (\code{lm_plot.fit}, \code{lm_plot.var}, \code{lm_plot.qq}, and either \code{lm_plot.ac} or
#' \code{lm_plot.infl}) and assembles their outputs into a combined \code{\link[cowplot]{plot_grid}}.
#'
#' @return A \code{ggplot} object representing the 4-way diagnostic panel.
#'   Optionally invisibly returns a list containing:
#'   \itemize{
#'     \item \code{p_4way} – the combined plot,
#'     \item other elements passed through from the individual plot functions.
#'   }
#'
#' @examples
#' \dontrun{
#' fit <- lm(mpg ~ wt + hp, data = mtcars)
#' lm_plot.4way(fit, is.ts = FALSE, pval.DW = TRUE)
#' }
#' @export
lm_plot.4way <- function(mdl, ...,
                         is.ts = FALSE,
                         pred.intvl = TRUE,
                         pval.SW = FALSE,
                         pval.BP = FALSE,
                         pval.DW = FALSE,
                         cook.loess = FALSE,
                         rtn.all = FALSE,
                         plt.nms = c("fit", "var", "qq",
                                     ifelse(is.ts, "ac", "infl")),
                         parm = list()) {
  # Copyright 2026, Peter Lert, All rights reserved.
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
  #   is.ts:          TRUE for time-series, gives ac plot; FALSE gives infl or lev plot
  #   pred.intvl:     Plot prediction interval on fitted vs observed plot?
  #   pvals:          Print test pvals on plots?
  #   cook.loess:     add loess curve to Cook's distance plot?
  #   rtn.all:        return full list of plots and data?
  #
  # plot format parameters:
  #   see lm_plot.parms()
  #
  # Plot settings
  if (missing(mdl)) {
    cat(
      "Inputs: mdl<required>, <options:>",
      "        is.ts=<is time series?>,",
      "        pred.intvl=<pred. invl. on fit?>,",
      "        pval.SW=<SW pval?>,",
      "        pval.BP=<BP pval?>,",
      "        pval.DW=<DW pval?>,",
      "        cook.loess=<loess of CooksD?)",
      "        <other options>",
      sep = "\n"
    )
    invisible()
  }
  #
  parms <- lm_plot.parms(mdl, parm)
  # Plot panels
  #
  lm_plot.lst <- list(mdl = mdl,
                      is.ts = is.ts,
                      pred.intvl = pred.intvl,
                      pval.SW = pval.SW,
                      pval.BP = pval.BP,
                      pval.DW = pval.DW,
                      cook.loess = cook.loess,
                      rtn.all = rtn.all,
                      parm = lm_plot.parms(mdl, parms), # inputs override defaults
                      df = lm_plot.df(mdl, parms),
                      plts = list())
  for (nm in plt.nms) {
    lm_plot.lst <- do.call(paste0("lm_plot.", nm), args = lm_plot.lst)
  }
  #
  lm_plot.lst$p_4way <- cowplot::plot_grid(
    lm_plot.lst$plts[[plt.nms[1]]],
    lm_plot.lst$plts[[plt.nms[2]]],
    lm_plot.lst$plts[[plt.nms[3]]],
    lm_plot.lst$plts[[plt.nms[4]]]
  )
  #
  if (rtn.all) {
    invisible(lm_plot.lst)
  }
  lm_plot.lst$p_4way
}
