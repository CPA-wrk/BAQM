#' Q-Q Plot of Residuals to Assess Normality
#'
#' Produces a Q-Q plot of residuals from a linear model to test for normality, optionally annotating outlier points and adding the Shapiro-Wilk test p-value.
#'
#' @param mdl An object of class \code{lm}, representing the fitted linear model.
#' @param parms List of plot customization parameters. Passed to \code{lm_plot.parms()}.
#' @param df Data frame with augmented model data. Defaults to \code{lm_plot.df(mdl)}.
#' @param plts List of ggplot objects to build upon. Defaults to empty list.
#'
#' @details
#' The plot visualizes the distribution of residuals against theoretical normal quantiles. Points are colored and shaped by outlier status, and a reference Q-Q line is added. Optionally, outlier and regular points can be labeled. If enabled, the Shapiro-Wilk normality test p-value is displayed.
#'
#' @return A list containing:
#'   \item{mdl}{The model object}
#'   \item{parms}{Parameters used for plotting, including Q-Q line and test results}
#'   \item{df}{Data frame used for plotting}
#'   \item{plts}{A list of ggplot objects, including the Q-Q plot}
#'
#' @seealso \code{\link{lm_plot.df}}, \code{\link{lm_plot.parms}}, \code{\link[stats]{shapiro.test}}
#' @import ggplot2 ggrepel stats
#' @export
#'
#' @examples
#' mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
#' result <- lm_plot.qq(mdl)
#' print(result$plts$qq)
lm_plot.qq <- function(mdl,
                       parms = list(),
                       df = lm_plot.df(mdl),
                       plts = list()) {
  # Copyright 2025, Peter Lert, All rights reserved.
  #
  # Q-Q Plot of Residuals to test normality
  #
  # df:     augmented model data
  #
  # Default plot element parameters
  parms <- lm_plot.parms(parms)
  #
  # Add qqline elements
  qqlin <- list(probs = c(0.25, 0.75))
  qqlin$theory <- stats::qnorm(p = qqlin$probs)
  qqlin$resid <- stats::quantile(df$.resid,
                                 probs = qqlin$probs,
                                 names = FALSE,
                                 na.rm = TRUE)
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
    ggplot2::aes(x = .quantile, y = .resid, sample = .resid) +
    #
    # PLot axis labels
    ggplot2::labs(x = "Theoretical Quantile", y = "Residual") +
    #
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
  plts$qq <- plts$qq +
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
  # Add Q-Q line
  plts$qq <- plts$qq +
    ggplot2::geom_abline(
      ggplot2::aes(slope = qqlin$slope, intercept = qqlin$int),
      linetype = parms$lins$ltyp,
      color = parms$lins$colr$qq,
      linewidth = parms$lins$size
    )
  #
  # ID outlier points if desired
  if (parms$pts$id$outl) {
    plts$qq <- plts$qq + ggrepel::geom_text_repel(
      data = df[df$outlier == "outl", ],
      ggplot2::aes(x = .quantile, y = .resid, label = .id),
      color = parms$pts$colr$outl,
      size = parms$pts$csz
    )
  }
  #
  # ID regular points if desired
  if (parms$pts$id$reg) {
    plts$qq <- plts$qq + ggrepel::geom_text_repel(
      data = df[df$outlier == "reg", ],
      ggplot2::aes(x = .quantile, y = .resid, label = .id),
      color = parms$pts$colr$reg,
      size = parms$pts$csz
    )
  }
  #
  # Return Q-Q results
  parms$qq <- list(lim = lim,
                   qqlin = qqlin,
                   SW = stats::shapiro.test(df$.resid))
  #
  # Add Shapiro-Wilk normality test p-value if desired
  if (parms$opt$pval.SW) {
    note_qq <- paste0("Normality: SW p-val=", round(parms$qq$SW$p.value, 4))
    plts$qq <- plts$qq +
      ggplot2::annotate(
        "test",
        x = lim["min", "x"],
        y = lim["max", "y"],
        label = note_qq,
        hjust = 0,
        vjust = 1,
        color = parms$lins$colr$qq,
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
