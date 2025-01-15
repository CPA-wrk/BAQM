lm_plot.lev <- function(mdl,
                        parms = list(),
                        df = lm_plot.df(mdl),
                        plts = list()) {
  #
  # Plot Standard residuals vs. Leverage with Cook's distance contours
  #
  # df:     augmented model data
  #
  # Default plot element parameters
  parms <- lm_plot.parms(parms)
  #
  # Find x, y limits for placing elements
  lim <- data.frame(
    x = range(df$.hat, na.rm = TRUE),
    y = range(df$.std.resid, na.rm = TRUE),
    row.names = c("min", "max")
  )
  #
  # Build Cook's distance contours
  x <- lim["min", "x"] + (0:parms$cook$n) * diff(lim$x) / parms$cook$n
  parms$cook$labl <- character()
  parms$cook$cont <- list()
  parms$cook$level <- unique(abs(parms$cook$level))
  for (level in parms$cook$level) {
    y <- sqrt(level * length(coef(mdl)) * (1 - x) / x)
    parms$cook$cont[str_c(c("pos.", "neg."), level)] <- data.frame(y, -y)
    parms$cook$labl <- c(parms$cook$labl, str_c("d = ", c("+", "-"), level))
  }
  names(parms$cook$labl) <- names(parms$cook$cont)
  parms$cook$level <- namewith(rep(parms$cook$level, each = 2) * rep(c(1, -1), 2),
                               names(parms$cook$cont))
  parms$cook$cont$x <- x
  parms$cook$cont <- data.frame(parms$cook$cont)
  #
  plts$lev <- ggplot2::ggplot(df) +
    ggplot2::aes(x = .hat, y = .std.resid)  +
    #
    # PLot axis labels
    ggplot2::labs(x = "Leverage", y = "Standard Residual") +
    #
    # Highlight axes within frame
    ggplot2::geom_hline(
      colour = "white",
      size = parms$lins$size_lg,
      yintercept = 0
    ) +
    ggplot2::geom_vline(
      colour = "white",
      size = parms$lins$size_lg,
      xintercept = 0
    )
  #
  # Plot points - vary color & shape for normal/outlier points
  plts$lev <- plts$lev +
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
  plts$lev <- plts$lev +
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
  # Add loess line
  if (parms$opt$cook.loess)
    plts$lev <- plts$lev +
    ggplot2::geom_smooth(
      linetype = parms$lins$ltyp,
      se = FALSE,
      method = "loess",
      formula = y ~ x,
      color = parms$lins$colr$lev,
      linewidth = parms$lins$size
    )
  #
  # ID large(Cook's Distance) points if desired
  if (parms$pts$id$cook &&
      is.ok(i_d <- which(abs(df$.cooksd) >= min(abs(parms$cook$level))))) {
    plts$lev <- plts$lev +
      ggrepel::geom_text_repel(
        data = df[i_d, ],
        ggplot2::aes(x = .hat, y = .std.resid, label = .id),
        color = parms$pts$colr$cook,
        size = parms$pts$csz
      )
  } else
    i_d <- 0
  #
  # ID outlier points if desired
  if (parms$pts$id$outl) {
    i_out <- which(df$.outlier == "outl")
    plts$lev <- plts$lev + ggrepel::geom_text_repel(
      data = df[i_out[!i_out %in% i_d], ],
      ggplot2::aes(x = .hat, y = .std.resid, label = .id),
      color = parms$pts$colr$outl,
      size = parms$pts$csz
    )
  }
  #
  # ID regular points if desired
  if (parms$pts$id$reg) {
    i_reg <- which(df$.outlier == "reg")
    plts$lev <- plts$lev + ggrepel::geom_text_repel(
      data = df[i_reg[!i_reg %in% i_d], ],
      ggplot2::aes(x = .hat, y = .std.resid, label = .id),
      color = parms$pts$colr$reg,
      size = parms$pts$csz
    )
  }
  #
  # Add CooksD legend
  lgd_x <- lim["max", "x"] - diff(lim$x) / 15
  plts$lev <- plts$lev +
    ggplot2::geom_segment(
      ggplot2::aes(
        x = lgd_x,
        xend = lim["max", "x"],
        y = lim["max", "y"],
        yend = lim["max", "y"]
      ),
      linetype = parms$cook$ltyp,
      linewidth = parms$lins$size,
      color = parms$lins$colr$cook
    ) +
    ggplot2::annotate(
      "text",
      x = lgd_x,
      y = lim["max", "y"],
      label = "Cook's distance ",
      hjust = 1,
      vjust = 0.5,
      color = parms$lins$colr$cook,
      size = parms$lins$csz
    )
  #
  # Plot Cook's distance contours
  tbl <- list()
  for (d_nm in names(parms$cook$labl)) {
    tbl[[d_nm]] <- data.frame(.hat = parms$cook$cont$x,
                              .std.resid = parms$cook$cont[[d_nm]])
    i_cont <- which(tbl[[d_nm]]$.std.resid >= lim["min", "y"] &
                      tbl[[d_nm]]$.std.resid <= lim["max", "y"])
    if (length(i_cont) <= 1)
      # next
      tbl[[d_nm]] <- tbl[[d_nm]][i_cont, ]
    k_mid <- ceiling(length(i_cont) / 2)
    plts$lev <- plts$lev  +
      ggplot2::geom_line(
        data = tbl[[d_nm]],
        ggplot2::aes(x = .hat, y = .std.resid),
        linetype = parms$cook$ltyp,
        linewidth = parms$lins$size,
        color = parms$lins$colr$cook
      ) +
      geom_text(
        x = tbl[[d_nm]]$.hat[k_mid],
        y = tbl[[d_nm]]$.std.resid[k_mid],
        label = parms$cook$labl[d_nm],
        hjust = 0,
        vjust = ifelse(parms$cook$level[[d_nm]] < 0, 1, 0),
        size = parms$lins$csz,
        color = parms$lins$colr$cook
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
