lm_plot.4way <- function(mdl,
                         opt = list()
                         ) {
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
  if (missing(mdl))
    cat("Inputs: mdl,",
        "        opt = list(ts=FALSE, pred.pts=100, pval.SW=FALSE,",
        "                   pval.BP=FALSE, pval.DW=FALSE, cook.loess=FALSE)",
        "        <default option values>",
        sep = "\n")
  invisible()
  #
  parms <- lm_plot.parms(parms = list(opt)) # input values override defaults
  #
  # Plot panels
  plt_nms <- c("fit", "var", "qq", ifelse(parms$opt$ts, "ac", "infl"))
  #
  lm_plot.lst <- list(mdl = mdl, parms = parms)
  for (nm in plt_nms)
    lm_plot.lst <- do.call(str_c("lm_plot.", nm), args = lm_plot.lst)
  #
  lm_plot.lst$p_4way <- cowplot::plot_grid(lm_plot.lst$plts[[plt_nms[1]]],
                                           lm_plot.lst$plts[[plt_nms[2]]],
                                           lm_plot.lst$plts[[plt_nms[3]]],
                                           lm_plot.lst$plts[[plt_nms[4]]])
  #
  invisible(lm_plot.lst)
}
#
# Outlier function - boxplot heuristic
.outlier <- function(x, rpt = FALSE) {
  q <- quantile(x, c(0.25, 0, 0.75), na.rm = TRUE)
  lims <- q[c(1, 3)] + c(-1.5, 1.5) * (q[3] - q[1])
  if (rpt)
    return(lims)
  x < lims[1] | x > lims[2]
}
