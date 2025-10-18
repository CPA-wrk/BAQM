#' Plot Leverage vs. Fitted Values to Visualize Inflential Observations
#'
#' Creates a plot of leverage values versus the linear fitted values, including an identification of points with a large Cook's distance, to visualize high-leverage and influential observations.
#'
#' @param mdl A fitted model object (typically from \code{\link[stats]{lm}}).
#' @param opt List of options (not used).
#' @param parm List of plotting parameters, usually from \code{lm_plot.parms()}.
#' @param df Data frame with augmented model data. Defaults to \code{lm_plot.df(mdl)}.
#' @param plts List of ggplot objects to which this plot will be added.
#'
#' @details
#' The plot visualizes the calculated leverage of individual data points, defined as the diagonal element of the 'hat' matrix, as a function of the fitted values and implicitly relative to their location in the field of predictor variables, and the threshold value of high leverage is indicated. In addition, Cook's distance can be used to label influential points, along with outlier and regular points.
#'
#' @return A list containing:
#' \itemize{
#'   \item \code{mdl} Fitted model object,
#'   \item \code{opt} List of options (unchanged),
#'   \item \code{parm} Parameter list for plotting,
#'   \item \code{df} Data frame used for plotting,
#'   \item \code{plts} List of ggplot objects, including the \code{$infl} element.
#' }
#'
#' @seealso \code{\link{lm_plot.df}}, \code{\link{lm_plot.parms}}, \code{\link{outlier}}
#' @import ggplot2 ggrepel
#' @export
#'
#' @examples
#' \dontrun{
#' mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
#' result <- lm_plot.infl(mdl)
#' print(result$plts$infl)
#' }
lm_plot.infl <- function(mdl,
                         opt = list(),
                         parm = list(),
                         df = lm_plot.df(mdl, parm),
                         plts = list()) {
  # Copyright 2025, Peter Lert, All rights reserved.
  #
  # Comb plot of studentized residual vs sequence
  # Influence values: Measured by Cook's distance.
  #   Thresholds for high Influence per Mendenhall & Sincich p. 420 (& others):
  #     cooksd > qf(p = 0.5, df1 = mdl$rank, df2 = n - mdl$rank)
  #
  # mdl:    fitted linear model
  # opt:    not used
  # parm:   plot element parameters
  # df:     augmented model data
  # plts:   list of ggplot objects to add to
  #
  # Default plot element parameters
  parms <- lm_plot.parms(mdl, parm)
  #
  # Find x, y limits for placing elements
  lim <- data.frame(
    x = range(df$.sequence, na.rm = TRUE),
    y = range(df$.stud.resid, na.rm = TRUE),
    row.names = c("min", "max")
  )
  offp_y <- diff(lim$y) * parms$pts$offp$infl
  #
  # Limits for high Influence points
  infl_lims <- outlier(df$.stud.resid, rpt = TRUE)
  #
  # Plot of studentized residuals vs sequence
  plts$infl <- ggplot2::ggplot(data = df) +
    ggplot2::aes(x = .sequence, y = .stud.resid) +
    # Plot axis labels
    ggplot2::labs(x = "Sequence", y = "Studentized Residual") +
    # Highlight axes within frame
    ggplot2::geom_hline(
      colour = "white",
      linewidth = parms$lins$size_lg,
      yintercept = 0
    )
  #
  # Drop lines for influence measure
  plts$infl <- plts$infl +
    ggplot2::geom_segment(
      ggplot2::aes(xend = .sequence, yend = 0, color = .is.infl),
      show.legend = FALSE
    ) +
    ggplot2::scale_color_manual(values = c(
      infl = parms$pts$colr$infl,
      outl = parms$pts$colr$outl,
      reg = parms$pts$colr$reg
    ))
  #
  # ID influential points if requested
  if (parms$pts$id$infl) {
    set.seed(parms$seed$infl$infl) # For reproducible ID placement
    df.infl <- df[df$.is.infl == "infl", , drop = FALSE]
    plts$infl <- plts$infl +
      ggrepel::geom_text_repel(
        data = df.infl,
        ggplot2::aes(x = .sequence, y = .stud.resid, label = .id, color = .is.infl),
        nudge_y = -sign(df.infl$.stud.resid) * offp_y,
        size = parms$pts$lblsz,
        show.legend = FALSE
      )
  }
  #
  # ID outlier points if requested
  if (parms$pts$id$outl) {
    set.seed(parms$seed$infl$outl) # For reproducible ID placement
    df.outl <- df[df$.is.infl == "outl", , drop = FALSE]
    plts$infl <- plts$infl +
      ggrepel::geom_text_repel(
        data = df.outl,
        ggplot2::aes(x = .sequence, y = .stud.resid, label = .id, color = .is.infl),
        nudge_y = -sign(df.outl$.stud.resid) * offp_y,
        size = parms$pts$lblsz,
        show.legend = FALSE
      )
  }
  # ID regular points if desired
  if (parms$pts$id$reg) {
    set.seed(parms$seed$infl$reg) # For reproducible ID placement
    df.reg <- df[df$.is.infl == "reg", , drop = FALSE]
    plts$fit <- plts$fit +
      ggrepel::geom_text_repel(
        data = df.reg,
        ggplot2::aes(x = .sequence, y = .stud.resid, label = .id, color = .is.infl),
        nudge_y = -sign(df.reg$.stud.resid) * offp_y,
        size = parms$pts$lblsz
      )
  }
  #
  # Show limits for influential points
  for (i in 1:length(infl_lims)) {
    if (infl_lims[i] >= lim["min", "y"] &   # Only if within y limits
      infl_lims[i] <= lim["max", "y"]) {
      plts$infl <- plts$infl +
        ggplot2::geom_hline(
          yintercept = infl_lims[i],
          color = parms$lins$colr$infl,
          linewidth = parms$lins$size,
          linetype = parms$lins$ltyp$infl
        ) +
        ggplot2::annotate(
          "label",
          x = lim["min", "x"],
          y = infl_lims[i],
          label = paste("Influential", c('\u2193', '\u2191')[i]), # Arrows
          hjust = 0,
          color = parms$lins$colr$infl,
          size = parms$pts$lblsz
        )
    }
  }
  #
  # Add legend for outliers
  plts$infl <- plts$infl +
    ggplot2::annotate(
      "text",
      x = lim["max", "x"],
      y = lim["min", "y"],
      label = "Residual Outlier |",
      hjust = 1,
      vjust = 0.5,
      color = parms$pts$colr$outl,
      size = parms$pts$lblsz
    )
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
