#' Plot Observed vs. Fitted Values to Check Linearity
#'
#' Generates a scatter plot of observed values versus fitted values from a linear model, with optional prediction intervals and identification of outlier points. The plot includes a reference line \code{y = x} for assessing linearity.
#'
#' @param mdl An object of class \code{lm}, representing the fitted linear model.
#' @param parms List of plot customization parameters. Passed to \code{lm_plot.parms()}.
#' @param df Data frame with augmented model data. Defaults to \code{lm_plot.df(mdl)}.
#' @param plts List of ggplot objects to build upon. Defaults to empty list.
#'
#' @details
#' The plot visualizes observed versus fitted values, includes a diagonal reference line, marks outliers, and can optionally display loess-smoothed prediction intervals. Outlier and regular points can be labeled. This plot is useful for visually assessing linearity and model fit quality.
#'
#' @return A list containing:
#'   \item{mdl}{The model object}
#'   \item{parms}{Parameters used for plotting, including plot limits}
#'   \item{df}{Data frame used for plotting}
#'   \item{plts}{A list of ggplot objects, including the fit plot}
#'
#' @seealso \code{\link{lm_plot.df}}, \code{\link{lm_plot.parms}}
#' @import ggplot2 ggrepel
#' @export
#'
#' @examples
#' mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
#' result <- lm_plot.fit(mdl)
#' print(result$plts$fit)
lm_plot.fit <- function(mdl,
                        opt = list(),
                        parm = list(),
                        df = lm_plot.df(mdl),
                        plts = list()) {
  # Copyright 2025, Peter Lert, All rights reserved.
  #
  # Plot of observed versus fitted to test linearity
  #
  # mdl:    fitted linear model
  # opt:    pred_intvl_pts: # of pts for prediction interval of fitted values
  # parm:   plot element parameters
  # df:     augmented model data
  # plts:   list of ggplot objects to add to
  #
  # Default plot element parameters
  parms <- lm_plot.parms(parm)
  #
  if (is.null(opt$pred_intvl_pts)) opt$pred_intvl_pts <- 100
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
    # PLot axis labels
    ggplot2::labs(x = "Fitted Value", y = "Observed Value")
  #
  # Highlight axes, if within frame
  if (prod(sign(lim$y)) %in% -1) {
    plts$fit <- plts$fit +
      ggplot2::geom_hline(
        color = "white",
        linewidth = parms$lins$size_lg,
        yintercept = 0
      )
  }
  if (prod(sign(lim$x)) %in% -1) {
    plts$fit <- plts$fit +
      ggplot2::geom_vline(
        color = "white",
        linewidth = parms$lins$size_lg,
        xintercept = 0
      )
  }
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
  if (opt$pred_intvl_pts > 0) {
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
    df.outl <- df[df$outlier == "outl", ]
    plts$fit <- plts$fit +
      ggrepel::geom_text_repel(
        data = df.outl,
        ggplot2::aes(x = .fits, y = .obs, label = .id),
        color = parms$pts$colr$outl,
        size = parms$pts$csz
      )
  }
  #
  # ID regular points if desired
  if (parms$pts$id$reg) {
    df.reg <- df[df$outlier == "reg", ]
    plts$fit <- plts$fit + ggrepel::geom_text_repel(
      data = df.reg,
      ggplot2::aes(x = .fits, y = .obs, label = .id),
      color = parms$pts$colr$reg,
      size = parms$pts$csz
    )
  }
  #
  # Return fit results
  parms$fit <- list(lim = lim)
  #
  # Return results
  list(
    mdl = mdl,
    opt = opt,
    parm = parms,
    df = df,
    plts = plts
  )
}
