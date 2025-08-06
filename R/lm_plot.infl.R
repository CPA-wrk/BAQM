lm_plot.infl <- function(mdl,
                         parms = list(),
                         df = lm_plot.df(mdl),
                         plts = list()) {
  # Copyright 2025, Peter Lert, All rights reserved.
  #
  # Comb plot of studentized residual vs sequence with influence level
  # set by robust outlier heuristic
  #
  # df:     augmented model data
  #
  # Default plot element parameters
  parms <- lm_plot.parms(parms)
  #
  # Find x, y limits for placing elements
  lim <- data.frame(
    x = range(df$.sequence, na.rm = TRUE),
    y = range(df$.stud.resid, na.rm = TRUE),
    row.names = c("min", "max")
  )
  offp_y <- diff(lim$y) * parms$pts$offp$infl
  #
  # Thresholds for high Influence point per Mendenhall & Sincich, others
  # qf(p = c(0.2, 0.5), df1 = mdl$rank, df2 = nrow(df) - mdl$rank)
  # cutoffs <- 2:3 * (mdl$rank + 1) / nrow(df)
  #
  # Limits for high Influence points per studentized residuals outliers
  infl_lims <- outlier(df$.stud.resid, rpt = TRUE)
  #
  df$.attn <- ifelse(df$.stud.outl == "infl",
                     "infl",
                     ifelse(df$outlier == "outl", "outl", "reg"))
  # Plot of studentized residuals vs sequence
  plts$infl <- ggplot2::ggplot(data = df) +
    #
    ggplot2::aes(x = .sequence, y = .stud.resid) +
    #
    # Plot axis labels
    ggplot2::labs(x = "Sequence", y = "Studentized Residual") +
    # Highlight axes within frame
    ggplot2::geom_hline(
      colour = "white",
      linewidth = parms$lins$size_lg,
      yintercept = 0
    )
  #
  # Drop lines for influence measure
  plts$infl <- plts$infl +
    ggplot2::geom_segment(ggplot2::aes(
      xend = .sequence,
      yend = 0,
      color = .attn
    ),
    show.legend = FALSE) +
    ggplot2::scale_color_manual(values = c(
      outl = parms$pts$colr$outl,
      infl = parms$pts$colr$infl,
      reg = "black"
    ))
  #
  # ID outlier and influential points if requested
  plts$infl <- plts$infl +
    ggrepel::geom_text_repel(
      data = df[df$.attn != "reg", , drop = FALSE],
      ggplot2::aes(
        x = .sequence,
        y = .stud.resid,
        label = .id,
        color = .attn
      ),
      nudge_y = -sign(df$.stud.resid) * df$offp_y,
      size = parms$pts$csz,
      show.legend = FALSE
    )
  if (any(df$outlier %in% "outl")) {
    #
    # Add legend for outliers
    ggplot2::annotate(
      "text",
      x = lim["max", "x"],
      y = lim["min", "y"],
      label = "Residual Outlier   ",
      hjust = 1,
      vjust = 0.5,
      color = parms$pts$colr$outl,
      size = parms$pts$csz
    )
  }
  #
  # Show limits for influential points
  for (i in 1:length(infl_lims)) {
    plts$infl <- plts$infl +
      ggplot2::geom_hline(
        yintercept = infl_lims[i],
        color = parms$lins$colr$infl,
        linewidth = parms$lins$size,
        linetype = parms$infl$ltyp
      ) +
      ggplot2::annotate(
        "text",
        x = lim["min", "x"],
        y = infl_lims[i],
        label = "Influential",
        hjust = 0,
        vjust = c(2, -1)[i],
        color = parms$lins$colr$infl,
        size = parms$pts$csz
      )
  }
  #
  list(
    mdl = mdl,
    parms = parms,
    df = df,
    plts = plts
  )
}
