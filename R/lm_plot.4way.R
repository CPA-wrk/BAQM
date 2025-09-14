#' Create a Four-Panel Regression Assumptions Plot
#'
#' Generates a 4-panel diagnostic plot for a multiple regression model, including:
#' 1) Fitted values vs. observed values (check for non-linearity),
#' 2) Quantile–Quantile plot of residuals (check for non-normality),
#' 3) Residuals vs. fitted values (check for heteroskedasticity),
#' 4) Autocorrelation or influence plot depending on whether data are time series.
#'
#' @param mdl A fitted model object (typically from \code{\link[stats]{lm}}) to be analyzed.
#' @param opt A named \code{list} of options. Recognized elements include:
#'   \describe{
#'     \item{\code{ts}}{Logical; \code{TRUE} if data are time series, \code{FALSE} otherwise.}
#'     \item{\code{pred.pts}}{Integer; number of prediction points (default 100).}
#'     \item{\code{pval.SW}, \code{pval.BP}, \code{pval.DW}}{Logical; include p-values from Shapiro–Wilk,
#'       Breusch–Pagan, and Durbin–Watson tests in the plots.}
#'     \item{\code{cook.loess}}{Logical; whether to overlay Cook's distance loess curve.}
#'   }
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
                         opt = list()) {
  # Copyright 2025, Peter Lert, All rights reserved.
  #
  # PLert, Spring 2025
  #
  # Build 4-panel plot of for multiple regression assumption analysis:
  #   Fitted.Values vs. Observed.Values: checking for non-linearity
  #   Quantiile-Quantile plot of Residuals: checking non-normality
  #   Residuals vs. Fitted.Values: checking for heteroskedasticity
  #
  # ts:     TRUE for time-series data, else false
  # pvals:  Print test pvals, etc?
  #
  #
  # Plot settings
  if (missing(mdl)) {
    cat(
      "Inputs: mdl,",
      "        opt = list(ts=FALSE, pred.pts=100, pval.SW=FALSE,",
      "                   pval.BP=FALSE, pval.DW=FALSE, cook.loess=FALSE)",
      "        <default option values>",
      sep = "\n"
    )
  }
  invisible()
  #
  parms <- lm_plot.parms(parms = list(opt = opt)) # inputs override defaults
  #
  # Plot panels
  plt_nms <- c("fit", "var", "qq", ifelse(parms$opt$ts, "ac", "infl"))
  #
  lm_plot.lst <- list(mdl = mdl, parms = parms)
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
  # Change this in pkg to return invisible(lm_plot.lst)
  lm_plot.lst$p_4way
}
