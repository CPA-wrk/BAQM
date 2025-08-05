lm_plot.fit <- function(mdl,
                        parms = list(),
                        df = lm_plot.df(mdl),
                        plts = list()) {
  #
  # Plot observed values vs. fitted values to check linearity
  #
  # df:     augmented model data
  #
  # Default plot element parameters
  parms <- lm_plot.parms(parms)
  #
  # Find x, y limits for placing elements
  lim <- data.frame(
    x = range(df$.fits, na.rm = TRUE),
    y = range(df$.obs, na.rm = TRUE),
    row.names = c("min", "max")
  )
  #
  # Plot Fitted vs. Observed
  note_fit <- "y = x"
  plts$fit <- ggplot2::ggplot(data = df) +
    ggplot2::aes(x = .fits, y = .obs) +
    #
    # PLot axis labels
    ggplot2::labs(x = "Fitted Value", y = "Observed Value")
  #
  # Highlight axes, if within frame
  if (prod(sign(lim$y)) %in% -1)
    plts$fit <- plts$fit +
    ggplot2::geom_hline(
      color = "white",
      linewidth = parms$lins$size_lg,
      yintercept = 0
    )
  if (prod(sign(lim$x)) %in% -1)
    plts$fit <- plts$fit +
    ggplot2::geom_vline(
      color = "white",
      linewidth = parms$lins$size_lg,
      xintercept = 0
    )
  #
  # Plot points - vary color & shape for normal/outlier points
  plts$fit <- plts$fit +
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
  # Add legend for outliers
  plts$fit <- plts$fit +
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
  # Add y = x line
  plts$fit <- plts$fit +
    ggplot2::geom_line(
      data = lim,
      ggplot2::aes(x = x, y = x),
      linetype = parms$lins$ltyp,
      color = parms$lins$colr$fit,
      linewidth = parms$lins$size
    )
  #
  # Plot prediction interval if desired
  if (parms$opt$pred.pts > 0) {
    p.int <- df[order(df$.fits), ]
    plts$fit <- plts$fit +
      ggplot2::scale_y_continuous(expand = c(0, 0)) +
      ggplot2::geom_smooth(
        data = p.int,
        ggplot2::aes(x = .fits, y = .upper.pi),
        method = "loess",
        formula = y ~ x,
        color = parms$lins$colr$fit,
        linewidth = parms$lins$size
      ) +
      ggplot2::geom_smooth(
        data = p.int,
        ggplot2::aes(x = .fits, y = .lower.pi),
        method = "loess",
        formula = y ~ x,
        color = parms$lins$colr$fit,
        linewidth = parms$lins$size
      )
  }
  #
  # ID outlier points if desired
  if (parms$pts$id$outl) {
    plts$fit <- plts$fit + ggrepel::geom_text_repel(
      data = df[df$outlier == "outl", ],
      ggplot2::aes(x = .fits, y = .obs, label = .id),
      color = parms$pts$colr$outl,
      size = parms$pts$csz
    )
  }
  #
  # ID regular points if desired
  if (parms$pts$id$reg) {
    plts$fit <- plts$fit + ggrepel::geom_text_repel(
      data = df[df$outlier == "reg", ],
      ggplot2::aes(x = .fits, y = .obs, label = .id),
      color = parms$pts$colr$reg,
      size = parms$pts$csz
    )
  }
  #
  # Return fit results
  parms$fit <- list(lim = lim)
  #
  list(
    mdl = mdl,
    parms = parms,
    df = df,
    plts = plts
  )
}
