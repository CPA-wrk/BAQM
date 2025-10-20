#' Plot Observed vs. Fitted Values to Check Linearity
#'
#' Generates a scatter plot of fitted values versus observed values from a linear model, with optional prediction intervals and identification of outlier points. The plot includes a reference line \code{y = x} for assessing linearity.
#'
#' @param mdl A fitted model object (typically from \code{\link[stats]{lm}}).
#' @param opt List of options, where \code{pred_intvl_pts} (numeric, default = 100) is used for prediction interval bounds of fitted values (0 to skip).
#' @param parm List of plotting parameters, usually from \code{lm_plot.parms()}.
#' @param df Data frame with augmented model data. Defaults to \code{lm_plot.df(mdl)}.
#' @param plts List of ggplot objects to which this plot will be added.
#'
#' @details
#' The plot visualizes fitted versus observed values, includes a diagonal reference line, marks outliers, and can optionally display loess-smoothed prediction intervals. Outlier and regular points can be labeled. This plot is useful for visually assessing linearity and model fit quality.
#'
#' @return A list containing:
#' \itemize{
#'   \item \code{mdl} Fitted model object,
#'   \item \code{opt} Options used, including \code{pred_intvl_pts},
#'   \item \code{parm} Parameter list with autocorrelation test results added,
#'   \item \code{df} Data frame used for plotting,
#'   \item \code{plts} List of ggplot objects, including the \code{$fit} element.
#' }
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
  parms <- lm_plot.parms(mdl, parm)
  #
  if (is.null(opt$pred.intvl)) opt$pred.intvl <- TRUE
  #
  # Find x, y limits for placing elements
  if (opt$pred.intvl) {
    lim <- data.frame(
      x = range(df$.obs, na.rm = TRUE),
      y = range(df$.obs, df$.fits, na.rm = TRUE),
      row.names = c("min", "max")
    )
  } else {
    lim <- data.frame(
      x = range(df$.obs, na.rm = TRUE),
      y = range(c(df$.obs, df$.fits, df$.lower.pi, df$.upper.pi, na.rm = TRUE)),
      row.names = c("min", "max")
    )
  }
  #
  # Return fit results
  parms$fit <- list(lim = lim)
  #
  # Plot Fitted vs. Observed
  plts$fit <- ggplot2::ggplot(data = df) +
    ggplot2::aes(x = .obs, y = .fits) +
    # Set axis limits
    ggplot2::coord_cartesian(xlim = lim$x, ylim = lim$y) +
    # Plot axis labels
    ggplot2::labs(x = "Observed Value", y = "Fitted Value")
  #
  # Plot points - vary color & shape for normal/outlier points
  plts$fit <- plts$fit +
    ggplot2::geom_point(
      ggplot2::aes(shape = .is.outl, color = .is.outl),
      size = parms$pts$symsz,
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
  # Add y = x line
  plts$fit <- plts$fit +
    ggplot2::geom_abline(
      ggplot2::aes(slope = 1, intercept = 0),
      linetype = parms$lins$ltyp$fit,
      color = parms$lins$colr$fit,
      linewidth = parms$lins$size
    ) +
    ggplot2::annotate(
      "label",
      x = lim["min", "x"],
      y = lim["min", "x"],
      label = "y = x",
      hjust = 0,
      color = parms$lins$colr$fit,
      size = parms$pts$lblsz
    )
  #
  # Add legend for outliers
  plts$fit <- plts$fit +
    ggplot2::annotate(
      "point",
      x = lim["max", "x"],
      y = lim["min", "y"],
      shape = parms$pts$shape$outl,
      color = parms$pts$colr$outl,
      size = parms$pts$symsz
    ) +
    ggplot2::annotate(
      "text",
      x = lim["max", "x"],
      y = lim["min", "y"],
      label = "Residual Outlier   ",
      hjust = 1,
      vjust = 0.5,
      color = parms$pts$colr$outl,
      size = parms$pts$lblsz
    )
  #
  # Plot prediction interval if desired
  if (opt$pred.intvl) {
    p.int <- df[order(df$.obs), ]
    plts$fit <- plts$fit +
      ggplot2::geom_smooth(  # Upper limit with quadratic smoothing
        data = p.int,
        ggplot2::aes(x = .obs, y = .upper.pi),
        method = "lm",
        formula = y ~ poly(x, 2),
        se = FALSE,
        na.rm = TRUE,
        linetype = parms$lins$ltyp$pi,
        color = parms$lins$colr$fit,
        linewidth = parms$lins$size
      ) +
      ggplot2::geom_smooth(  # Lower limit with quadratic smoothing
        data = p.int,
        ggplot2::aes(x = .obs, y = .lower.pi),
        method = "lm",
        formula = y ~ poly(x, 2),
        se = FALSE,
        na.rm = TRUE,
        linetype = parms$lins$ltyp$pi,
        color = parms$lins$colr$fit,
        linewidth = parms$lins$size
      ) +
      ggplot2::annotate(    # Label for prediction interval
        "label",
        x = lim["max", "x"],
        y = utils::tail(p.int$.lower.pi, 1),
        label = "95% P.I.",
        hjust = 0.7,
        vjust = 1.8,
        color = parms$lins$colr$fit,
        size = parms$pts$lblsz
      )
  }
  #
  # ID outlier points if desired
  if (parms$pts$id$outl) {
    set.seed(parms$seed$fit$outl) # For reproducible ID placement
    df.outl <- df[df$.is.outl == "outl", , drop = FALSE]
    plts$fit <- plts$fit +
      ggrepel::geom_text_repel(
        data = df.outl,
        ggplot2::aes(x = .obs, y = .fits, label = .id),
        color = parms$pts$colr$outl,
        size = parms$pts$lblsz
      )
  }
  #
  # ID regular points if desired
  if (parms$pts$id$reg) {
    set.seed(parms$seed$fit$reg) # For reproducible ID placement
    df.reg <- df[df$.is.outl == "reg", , drop = FALSE]
    plts$fit <- plts$fit + ggrepel::geom_text_repel(
      data = df.reg,
      ggplot2::aes(x = .obs, y = .fits, label = .id),
      color = parms$pts$colr$reg,
      size = parms$pts$lblsz
    )
  }
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
  # Return results
  list(
    mdl = mdl,
    opt = opt,
    parm = parms,
    df = df,
    plts = plts
  )
}
