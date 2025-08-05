lm_plot.ac <- function(mdl,
                       parms = list(),
                       df = lm_plot.df(mdl),
                       plts = list()) {
  #
  # Plot of Residuals vs order to test independence (autocorrelation)
  #
  # df:     augmented model data
  #
  # Default plot element parameters
  parms <- lm_plot.parms(parms)
  #
  # Assure data
  if (!is.ok(df))
    df <- data.frame(.resid = residuals(mdl))
  if (!is.ok(df$.resid))
    df$.resid <- residuals(mdl)
  if (!is.ok(df$.id))
    df$.id <- row.names(mdl$model)
  if (!is.ok(df$outlier))
    df$outlier <- ifelse(df$.resid %in% boxplot(df$.resid, plot = FALSE)$out,
                         "outl",
                         "reg")
  if (!is.ok(df$.sequence))
    df$.sequence <- 1:nrow(df)
  #
  # Find x, y limits for placing elements
  lim <- data.frame(
    x = range(df$.sequence, na.rm = TRUE),
    y = range(df$.resid, na.rm = TRUE),
    row.names = c("min", "max")
  )
  #
  # Plot of Residuals vs order
  plts$ac <- ggplot2::ggplot(data = df) +
    ggplot2::aes(x = .sequence, y = .resid) +
    #
    # PLot axis labels
    ggplot2::labs(x = "Order", y = "Residual") +
    #
    # Highlight axes, if within frame
    ggplot2::geom_hline(
      color = "white",
      linewidth = parms$lins$size_lg,
      yintercept = 0
    )
  #
  if (prod(sign(lim$x)) %in% -1)
    plts$ac <- plts$ac +
    ggplot2::geom_vline(
      color = "white",
      linewidth = parms$lins$size_lg,
      xintercept = 0
    )
  #
  # Plot points - vary color & shape for normal/outlier points
  plts$ac <- plts$ac +
    ggplot2::geom_point(
      ggplot2::aes(shape = outlier, color = outlier),
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
  # Add sequence line
  plts$ac <- plts$ac +
    ggplot2::geom_path(
      linetype = parms$lins$ltyp,
      color = parms$pts$colr$reg,
      linewidth = parms$lins$size
    )
  #
  # Add legend for outliers
  plts$ac <- plts$ac +
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
    plts$ac <- plts$ac + ggrepel::geom_text_repel(
      data = df[df$outlier == "outl", ],
      ggplot2::aes(x = .quantile, y = .resid, label = .id),
      color = parms$pts$colr$outl,
      size = parms$pts$csz
    )
  }
  #
  # ID regular points if desired
  if (parms$pts$id$reg) {
    plts$ac <- plts$ac + ggrepel::geom_text_repel(
      data = df[df$outlier == "reg", ],
      ggplot2::aes(x = .quantile, y = .resid, label = .id),
      color = parms$pts$colr$reg,
      size = parms$pts$csz
    )
  }
  #
  # Return autocorrelation results
  parms$ac <- list(lim = lim, DW = lmtest::dwtest(mdl))
  #
  # Add Durbin-Watson autocorrelation test p-value if desired
  if (parms$opt$pval.DW) {
    note_ac <- paste0("Autocorrelation: DW p-val=",
                      round(parms$ac$DW$p.value, 4))
    plts$ac <- plts$ac +
      ggplot2::annotate(
        "text",
        x = lim["min", "x"],
        y = lim["max", "y"],
        label = note_ac,
        hjust = 0,
        vjust = 1,
        color = parms$lins$colr$ac,
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
