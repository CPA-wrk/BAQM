#' Plot Residuals vs. Observation Order (Autocorrelation Check)
#'
#' Creates a plot of residuals against the sequence/order of observations to visually assess independence and detect autocorrelation. Outliers are labeled by default. Optionally includes p-value result from the Durbin–Watson test for autocorrelation.
#'
#' @param mdl A fitted model object (typically from \code{\link[stats]{lm}}).
#' @param pval.DW (logical, default = FALSE) Option to show Durbin-Watson p-value on the plot.
#' @param parms A list of plotting parameters, usually from \code{lm_plot.parms()}.
#' @param df Data frame with augmented model data. Defaults to \code{lm_plot.df(mdl)}.
#' @param ... Additional arguments (not currently used).
#'
#' @details
#' Points are colored and shaped according to whether they are residual outliers
#' (as determined by Tukey's boxplot rule). The function can label points using
#' \pkg{ggrepel} if \code{parm$pts$id$outl} or \code{parm$pts$id$reg} are set to \code{TRUE}.
#'
#' @return A \code{ggplot} object representing the residuals vs. order plot. Included as an attribute \code{"parm"} is a list containing:
#' \itemize{
#'   \item \code{lim} Plotted limits on \code{x} and \code{y} axes,
#'   \item \code{pval.DW} Option to show Durbin-Watson p-value,
#'   \item \code{DW} The \code{htest} object with Durbin-Watson test results.
#' }
#'
#' @seealso \code{\link[lmtest]{dwtest}}, \code{\link{lm_plot.df}}, \code{\link{lm_plot.parms}}
#'
#' @examples
#' fit <- lm(res ~ ., data = data.frame(time = time(austres), res = austres))
#' lm_plot.ac(fit, pval.DW = TRUE)
#'
#' @export
lm_plot.ac <- function(mdl, ...,
                       pval.DW = FALSE,
                       parms = lm_plot.parms(mdl),
                       df = lm_plot.df(mdl, parms = parms)) {
  # Copyright 2026, Peter Lert, All rights reserved.
  #
  # Plot of Residuals vs order to test independence (autocorrelation)
  #
  # mdl:     fitted linear model
  # pval.DW: option to include Durbin-Watson autocorrelation test p-value
  # parms:   plot element parameters
  # df:      augmented model data
  #
  # Find x, y limits for placing elements
  lim <- data.frame(
    x = range(df$.sequence, na.rm = TRUE),
    y = range(df$.resid, na.rm = TRUE),
    row.names = c("min", "max")
  )
  #
  # Plot of Residuals vs order
  plt_ac <- ggplot2::ggplot(data = df) +
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
    plt_ac <- plt_ac +
      ggplot2::geom_vline(
        color = "white",
        linewidth = parms$lins$size_lg,
        xintercept = 0
      )
  }
  #
  # Plot points - vary color & shape for normal/outlier points
  plt_ac <- plt_ac +
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
  # Add sequence line
  plt_ac <- plt_ac +
    ggplot2::geom_path(
      linetype = parms$lins$ltyp$ac,
      color = parms$pts$colr$reg,
      linewidth = parms$lins$size
    )
  #
  # Add legend for outliers
  plt_ac <- plt_ac +
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
  # ID outlier points if desired
  if (parms$pts$id$outl) {
    set.seed(parms$seed$ac$outl) # For reproducible ID placement
    df.outl <- df[df$.is.outl == "outl", , drop = FALSE]
    plt_ac <- plt_ac + ggrepel::geom_text_repel(
      data = df.outl,
      ggplot2::aes(x = .sequence, y = .resid, label = .id),
      color = parms$pts$colr$outl,
      size = parms$pts$lblsz
    )
  }
  #
  # ID regular points if desired
  if (parms$pts$id$reg) {
    set.seed(parms$seed$ac$reg) # For reproducible ID placement
    df.reg <- df[df$.is.outl == "reg", , drop = FALSE]
    plt_ac <- plt_ac + ggrepel::geom_text_repel(
      data = df.reg,
      ggplot2::aes(x = .sequence, y = .resid, label = .id),
      color = parms$pts$colr$reg,
      size = parms$pts$lblsz
    )
  }
  #
  # Return autocorrelation results
  parms_ac <- list(lim = lim, pval.DW = pval.DW, DW = lmtest::dwtest(mdl))
  #
  # Add Durbin-Watson autocorrelation test p-value to plot if desired
  if (pval.DW) {
    note_ac <- paste0(
      "Autocorrelation: DW p-val=",
      round(parms_ac$DW$p.value, 4)
    )
    plt_ac <- plt_ac +
      ggplot2::annotate(
        "text",
        x = lim["min", "x"],
        y = lim["max", "y"],
        label = note_ac,
        hjust = 0,
        vjust = 1,
        color = parms$lins$colr$ac,
        size = parms$lins$notesz
      )
  }
  # Return results
  attr(plt_ac, "parms") <- parms_ac
  plt_ac
}
