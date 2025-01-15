lm_plot.var <- function(mdl,
                        parms = list(),
                        df = lm_plot.df(mdl),
                        plts = list()) {
  #
  # Plot Residuals vs Fitted Values to test Homoskedasticity
  #
  # df:     augmented model data
  #
  # Default plot element parameters
  parms <- lm_plot.parms(parms)
  #
  # Find x, y limits for placing elements
  lim <- data.frame(
    x = range(df$.fits, na.rm = TRUE),
    y = range(df$.resid, na.rm = TRUE),
    row.names = c("min", "max")
  )
  #
  # Plot of Residuals vs Fitted Values
  plts$var <- ggplot(data = df) +
    ggplot2::aes(x = .fits, y = .resid) +
    #
    # PLot axis labels
    ggplot2::labs(x = "Fitted Value", y = "Residual") +
    #
    # Highlight axes, if within frame
    ggplot2::geom_hline(
      color = "white",
      size = parms$lins$size_lg,
      yintercept = 0
    )
  #
  if (prod(sign(lim$x)) %in% -1)
    plts$var <- plts$var +
    ggplot2::geom_vline(
      color = "white",
      size = parms$lins$size_lg,
      xintercept = 0
    )
  #
  # Plot points - vary color & shape for normal/outlier points
  plts$var <- plts$var +
    ggplot2::geom_point(
      ggplot2::aes(shape = .outlier, color = .outlier),
      size = parms$pts$size,
      show.legend = FALSE
    ) +
    ggplot2::scale_shape_manual(values = c(
      outl = parms$pts$shape$outl,
      reg = parms$pts$shape$reg
    )) +
    ggplot2::scale_color_manual(values = c(
      outl = parms$pts$colr$outl,
      reg = parms$pts$colr$reg
    ))
  #
  # Add legend for outliers
  plts$var <- plts$var +
    ggplot2::annotate(
      "point",
      x = lim["max", "x"],
      y = lim["min", "y"],
      shape = parms$pts$shape$outl,
      color = parms$pts$colr$outl,
      size = parms$pts$size
    ) +
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
  #
  # ID outlier points if desired
  if (parms$pts$id$outl) {
    plts$var <- plts$var + ggrepel::geom_text_repel(
      data = df[df$.outlier == "outl", ],
      ggplot2::aes(x = .fits, y = .resid, label = .id),
      color = parms$pts$colr$outl,
      size = parms$pts$csz
    )
  }
  #
  # ID regular points if desired
  if (parms$pts$id$reg) {
    plts$var <- plts$var + ggrepel::geom_text_repel(
      data = df[df$.outlier == "reg", ],
      ggplot2::aes(x = .fits, y = .resid, label = .id),
      color = parms$pts$colr$reg,
      size = parms$pts$csz
    )
  }
  #
  # Return variance results
  parms$var <- list(lim = lim, BP = lmtest::bptest(mdl))
  #
  # Add Breusch-Pagan heteroskedasticity test p-value if desired
  if (parms$opt$pval.BP) {
    note_var <- str_c("Const.Var: BP p-val=", round(parms$var$BP$p.value, 4))
    plts$var <- plts$var +
      ggplot2::annotate(
        "text",
        x = lim["min", "x"],
        y = lim["max", "y"],
        label = note_var,
        hjust = 0,
        vjust = 1,
        color = parms$lins$colr$var,
        size = parms$lins$csz
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
