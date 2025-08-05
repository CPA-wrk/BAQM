lm_plot.4way <- function(mdl, opt = list()) {
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
    cat(
      "Inputs: mdl,",
      "        opt = list(ts=FALSE, pred.pts=100, pval.SW=FALSE,",
      "                   pval.BP=FALSE, pval.DW=FALSE, cook.loess=FALSE)",
      "        <default option values>",
      sep = "\n"
    )
  invisible()
  #
  parms <- lm_plot.parms(parms = list(opt = opt)) # inputs override defaults
  #
  # Plot panels
  plt_nms <- c("fit", "var", "qq", ifelse(parms$opt$ts, "ac", "infl"))
  #
  lm_plot.lst <- list(mdl = mdl, parms = parms)
  for (nm in plt_nms)
    lm_plot.lst <- do.call(paste0("lm_plot.", nm), args = lm_plot.lst)
  #
  lm_plot.lst$p_4way <- cowplot::plot_grid(lm_plot.lst$plts[[plt_nms[1]]],
                                           lm_plot.lst$plts[[plt_nms[2]]],
                                           lm_plot.lst$plts[[plt_nms[3]]],
                                           lm_plot.lst$plts[[plt_nms[4]]])
  #
  # Change this in pkg to return invisible(lm_plot.lst)
  lm_plot.lst$p_4way
}
