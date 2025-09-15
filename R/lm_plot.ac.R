#' Plot Residuals vs. Observation Order (Autocorrelation Check)
#'
#' Creates a plot of residuals against the sequence/order of observations to visually
#' assess independence and detect autocorrelation. Optionally overlays results from the
#' Durbin–Watson test and labels outliers.
#'
#' @param mdl A fitted model object (typically from \code{\link[stats]{lm}}).
#' @param parms A list of plotting and option parameters, usually from \code{lm_plot.parms()}.
#' @param df An augmented model data frame; if missing, is generated via \code{lm_plot.df(mdl)}.
#' @param plts A list of existing plots to which this plot will be added.
#'
#' @details
#' Points are colored and shaped according to whether they are residual outliers
#' (as determined by Tukey's boxplot rule). The function can label points using
#' \pkg{ggrepel} if \code{parms$pts$id$outl} or \code{parms$pts$id$reg} are set to \code{TRUE}.
#'
#' @return A list containing:
#' \itemize{
#'   \item \code{mdl} – the fitted model object,
#'   \item \code{parms} – the parameter list with autocorrelation test results added,
#'   \item \code{df} – the data frame used for plotting,
#'   \item \code{plts} – the plot list with an \code{$ac} ggplot element.
#' }
#'
#' @examples
#' \dontrun{
#' fit <- lm(mpg ~ wt + hp, data = mtcars)
#' lm_plot.ac(fit)
#' }
#' @export
lm_plot.ac <- function(mdl,
                       opt = list(),
                       parm = list(),
                       df = lm_plot.df(mdl),
                       plts = list()) {
  # Copyright 2025, Peter Lert, All rights reserved.
  #
  # Plot of Residuals vs order to test independence (autocorrelation)
  #
  # mdl:    fitted linear model
  # opt:    pval.DW: include Durbin-Watson autocorrelation test p-value?
  # parm:   plot element parameters
  # df:     augmented model data
  # plts:   list of ggplot objects to add to
  #
  # Default plot element parameters
  parms <- lm_plot.parms(parm)
  #
  if (is.null(opt$pval.DW)) opt$pval.DW <- FALSE
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
    # PLot axis labels
    ggplot2::labs(x = "Order", y = "Residual") +
    # Highlight axes, if within frame
    ggplot2::geom_hline(
      color = "white",
      linewidth = parms$lins$size_lg,
      yintercept = 0
    )
  #
  if (prod(sign(lim$x)) %in% -1) {
    plts$ac <- plts$ac +
      ggplot2::geom_vline(
        color = "white",
        linewidth = parms$lins$size_lg,
        xintercept = 0
      )
  }
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
    df.outl <- df[df$outlier == "outl", , drop = FALSE]
    plts$ac <- plts$ac + ggrepel::geom_text_repel(
      data = df.outl,
      ggplot2::aes(x = .sequence, y = .resid, label = .id),
      color = parms$pts$colr$outl,
      size = parms$pts$csz
    )
  }
  #
  # ID regular points if desired
  if (parms$pts$id$reg) {
    df.reg <- df[df$.attn == "reg", , drop = FALSE]
    plts$ac <- plts$ac + ggrepel::geom_text_repel(
      data = df.reg,
      ggplot2::aes(x = .sequence, y = .resid, label = .id),
      color = parms$pts$colr$reg,
      size = parms$pts$csz
    )
  }
  #
  # Return autocorrelation results
  parms$ac <- list(lim = lim, DW = lmtest::dwtest(mdl))
  #
  # Add Durbin-Watson autocorrelation test p-value if desired
  if (opt$pval.DW) {
    note_ac <- paste0(
      "Autocorrelation: DW p-val=",
      round(parms$ac$DW$p.value, 4)
    )
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
  # Return results
  list(
    mdl = mdl,
    opt = opt,
    parm = parms,
    df = df,
    plts = plts
  )
}
