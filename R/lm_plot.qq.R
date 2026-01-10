#' Q-Q Plot of Residuals to Assess Normality
#'
#' Produces a Q-Q plot of residuals from a linear model to test for normality, optionally annotating outlier points and adding the Shapiro-Wilk test p-value.
#'
#' @param mdl A fitted model object (typically from \code{\link[stats]{lm}}).
#' @param pval.SW (logical, default = FALSE) indicates whether to include Shapiro-Wilk p-value on the plot.
#' @param parm List of plotting parameters, usually from \code{lm_plot.parms()}.
#' @param df Data frame with augmented model data. Defaults to \code{lm_plot.df(mdl)}.
#' @param plts List of ggplot objects to which this plot will be added.
#' @param ... Additional arguments (not currently used).
#'
#' @details
#' The plot visualizes the distribution of residuals against theoretical normal quantiles. Points are colored and shaped by outlier status, and a reference Q-Q line is added. Optionally, outlier and regular points can be labeled. If enabled, the Shapiro-Wilk normality test p-value is displayed.
#'
#' @return A list containing:
#' \itemize{
#'   \item \code{mdl} Fitted model object,
#'   \item \code{pval.SW} Option for including Shapiro-Wilk p-value,
#'   \item \code{parm} Parameter list with Shapiro-Wilk test results added,
#'   \item \code{df} Data frame used for plotting,
#'   \item \code{plts} List of ggplot objects, including the \code{$qq} element.
#' }
#'
#' @seealso \code{\link{lm_plot.df}}, \code{\link{lm_plot.parms}}, \code{\link[stats]{shapiro.test}}
#' @import ggplot2 ggrepel stats
#' @export
#'
#' @examples
#' mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
#' result <- lm_plot.qq(mdl)
#' print(result$plts$qq)
lm_plot.qq <- function(mdl, ...,
                       pval.SW = FALSE,
                       parm = list(),
                       df = lm_plot.df(mdl),
                       plts = list()) {
  # Copyright 2025, Peter Lert, All rights reserved.
  #
  # Q-Q Plot of Residuals to test normality
  #
  # mdl:    fitted linear model
  # pval.SW:include Shapiro-Wilk normality test p-value?
  # parm:   plot element parameters
  # df:     augmented model data
  # plts:   list of ggplot objects to add to
  #
  # Default plot element parameters
  parms <- lm_plot.parms(mdl, parm)
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
  plts$qq <- ggplot2::ggplot(data = df) +
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
  plts$qq <- plts$qq +
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
  plts$qq <- plts$qq +
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
    plts$qq <- plts$qq +
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
    plts$qq <- plts$qq +
      ggrepel::geom_text_repel(
        data = df.reg,
        ggplot2::aes(x = .quantile, y = .resid, label = .id),
        color = parms$pts$colr$reg,
        size = parms$pts$lblsz
      )
  }
  #
  # Add legend for outliers
  plts$qq <- plts$qq +
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
  parms$qq <- list(
    lim = lim,
    qqlin = qqlin,
    SW = stats::shapiro.test(df$.resid)
  )
  #
  # Add Shapiro-Wilk normality test p-value if desired
  if (pval.SW) {
    note_qq <- paste0("Normality: SW p-val=", round(parms$qq$SW$p.value, 4))
    plts$qq <- plts$qq +
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
  # Return results
  list(
    mdl = mdl,
    pval.SW = pval.SW,
    parm = parms,
    df = df,
    plts = plts
  )
}
