#' Q-Q Plot of Residuals to Assess Normality
#'
#' Produces a Q-Q plot of residuals from a linear model to test for normality, optionally annotating outlier points and adding the Shapiro-Wilk test p-value.
#'
#' @param mdl A fitted model object (typically from \code{\link[stats]{lm}}).
#' @param pval.SW (logical, default = FALSE) indicates whether to include Shapiro-Wilk p-value on the plot.
#' @param parms List of plotting parameters, usually from \code{lm_plot.parms()}.
#' @param df Data frame with augmented model data. Defaults to \code{lm_plot.df(mdl)}.
#' @param ... Additional arguments (not currently used).
#'
#' @details
#' The plot visualizes the distribution of residuals against theoretical normal quantiles. Points are colored and shaped by outlier status, and a reference Q-Q line is added. Optionally, outlier and regular points can be labeled. If enabled, the Shapiro-Wilk normality test p-value is displayed.
#'
#' @return A \code{ggplot} object representing the quantile-quantile plot. Included as an attribute \code{"parm"} is a list containing:
#' \itemize{
#'   \item \code{lim} Plotted limits on \code{x} and \code{y} axes,
#'   \item \code{pval.SW} Option to show Shapiro-Wilk p-value,
#'   \item \code{DW} The \code{htest} object with Shapiro-Wilk test results.
#' }
#'
#' @seealso \code{\link{lm_plot.df}}, \code{\link{lm_plot.parms}}, \code{\link[stats]{shapiro.test}}
#'
#' @examples
#' mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
#' lm_plot.qq(mdl)
#'
#' @export
lm_plot.qq <- function(mdl, ...,
                       pval.SW = FALSE,
                       parms = lm_plot.parms(mdl),
                       df = lm_plot.df(mdl, parms = parms)) {
  # Copyright 2026, Peter Lert, All rights reserved.
  #
  # Q-Q Plot of Residuals to test normality
  #
  # mdl:    fitted linear model
  # pval.SW:include Shapiro-Wilk normality test p-value?
  # parms:  plot element parameters
  # df:     augmented model data
  #
  # Add qqline elements
  qqlin <- list(probs = c(0.25, 0.75))
  qqlin$theory <- stats::qnorm(p = qqlin$probs)
  qqlin$resid <- stats::quantile(df$.resid,
    probs = qqlin$probs,
    names = FALSE,
    na.rm = TRUE
  )
  qqlin$slope <- diff(qqlin$resid) / diff(qqlin$theory)
  qqlin$int <- qqlin$resid[[1L]] - qqlin$slope * qqlin$theory[[1L]]
  #
  # Find x, y limits for placing elements
  lim <- data.frame(
    x = range(df$.quantile, na.rm = TRUE),
    y = range(df$.resid, na.rm = TRUE),
    row.names = c("min", "max")
  )
  #
  # Q-Q Plot of Residuals
  plt_qq <- ggplot2::ggplot(data = df) +
    ggplot2::aes(x = .quantile, y = .resid) +
    # PLot axis labels
    ggplot2::labs(x = "Theoretical Quantile", y = "Residual") +
    # Highlight axes within frame
    ggplot2::geom_hline(
      color = "white",
      linewidth = parms$lins$size_lg,
      yintercept = 0
    ) +
    ggplot2::geom_vline(
      color = "white",
      linewidth = parms$lins$size_lg,
      xintercept = 0
    )
  #
  # Plot points - vary color & shape for normal/outlier points
  plt_qq <- plt_qq +
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
  # Add Q-Q line
  plt_qq <- plt_qq +
    ggplot2::geom_abline(
      ggplot2::aes(slope = qqlin$slope, intercept = qqlin$int),
      linetype = parms$lins$ltyp$qq,
      color = parms$lins$colr$qq,
      linewidth = parms$lins$size
    )
  #
  # ID outlier points if desired
  if (parms$pts$id$outl) {
    df.outl <- df[df$.is.outl == "outl", , drop = FALSE]
    plt_qq <- plt_qq +
      ggrepel::geom_text_repel(
        data = df.outl,
        ggplot2::aes(x = .quantile, y = .resid, label = .id),
        color = parms$pts$colr$outl,
        size = parms$pts$lblsz
      )
  }
  #
  # ID regular points if desired
  if (parms$pts$id$reg) {
    df.reg <- df[df$.is.outl == "reg", , drop = FALSE]
    plt_qq <- plt_qq +
      ggrepel::geom_text_repel(
        data = df.reg,
        ggplot2::aes(x = .quantile, y = .resid, label = .id),
        color = parms$pts$colr$reg,
        size = parms$pts$lblsz
      )
  }
  #
  # Add legend for outliers
  plt_qq <- plt_qq +
    ggplot2::annotate(
      "text",
      x = lim["max", "x"],
      y = lim["min", "y"],
      label = "Residual Outlier   ",
      hjust = 1,
      vjust = 0.5,
      color = parms$pts$colr$outl,
      size = parms$pts$lblsz
    ) +
    ggplot2::annotate(
      "point",
      x = lim["max", "x"],
      y = lim["min", "y"],
      shape = parms$pts$shape$outl,
      color = parms$pts$colr$outl,
      size = parms$pts$symsz
    )
  #
  # Return Q-Q results
  parms_qq <- list(
    lim = lim,
    pval.SW = pval.SW,
    SW = stats::shapiro.test(df$.resid)
  )
  #
  # Add Shapiro-Wilk normality test p-value if desired
  if (pval.SW) {
    note_qq <- paste0("Normality: SW p-val=", round(parms_qq$SW$p.value, 4))
    plt_qq <- plt_qq +
      ggplot2::annotate(
        "text",
        x = lim["min", "x"],
        y = lim["max", "y"],
        label = note_qq,
        hjust = 0,
        vjust = 1,
        color = parms$lins$colr$qq,
        size = parms$lins$notesz
      )
  }
  # Return Q-Q results
  attr(plt_qq, "parms") <- parms_qq
  plt_qq
}
