#' Plot Studentized Residuals vs. Sequence with Influence Identification
#'
#' Creates a "comb" plot of studentized residuals versus sequence, highlighting influence and outlier points using a robust outlier heuristic.
#'
#' @param mdl A fitted model object (typically from \code{\link[stats]{lm}}).
#' @param opt List of options (not used).
#' @param parm List of plotting parameters, usually from \code{lm_plot.parms()}.
#' @param df Data frame with augmented model data. Defaults to \code{lm_plot.df(mdl)}.
#' @param plts List of ggplot objects to which this plot will be added.
#'
#' @details
#' The plot visualizes studentized residuals by sequence order, marking regular, outlier, and influential points. Influence thresholds are set using robust outlier detection. Influential and outlier points can be labeled, and influence threshold lines are shown.
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
                         df = lm_plot.df(mdl),
                         plts = list()) {
  # Copyright 2025, Peter Lert, All rights reserved.
  #
  # Comb plot of studentized residual vs sequence with influence level
  # set by robust outlier heuristic
  #
  # mdl:    fitted linear model
  # opt:    not used
  # parm:   plot element parameters
  # df:     augmented model data
  # plts:   list of ggplot objects to add to
  #
  # Default plot element parameters
  parms <- lm_plot.parms(parm)
  #
  # Find x, y limits for placing elements
  lim <- data.frame(
    x = range(df$.sequence, na.rm = TRUE),
    y = range(df$.stud.resid, na.rm = TRUE),
    row.names = c("min", "max")
  )
  offp_y <- diff(lim$y) * parms$pts$offp$infl
  #
  # Thresholds for high Influence point per Mendenhall & Sincich, others
  # qf(p = c(0.2, 0.5), df1 = mdl$rank, df2 = nrow(df) - mdl$rank)
  # cutoffs <- 2:3 * (mdl$rank + 1) / nrow(df)
  #
  # Limits for high Influence points per studentized residuals outliers
  infl_lims <- outlier(df$.stud.resid, rpt = TRUE)
  #
  df$.attn <- ifelse(df$.stud.outl == "infl",
    "infl",
    ifelse(df$outlier == "outl", "outl", "reg")
  )
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
      ggplot2::aes(xend = .sequence, yend = 0, color = .attn),
      show.legend = FALSE
    ) +
    ggplot2::scale_color_manual(values = c(
      outl = parms$pts$colr$outl,
      infl = parms$pts$colr$infl,
      reg = parms$pts$colr$reg
    ))
  #
  # ID outlier and influential points if requested
  df.reg <- df[df$.attn == "reg", , drop = FALSE]
  plts$infl <- plts$infl +
  ggrepel::geom_text_repel(
    data = df.reg,
    ggplot2::aes(x = .sequence, y = .stud.resid, label = .id, color = .attn),
    nudge_y = -sign(df.reg$.stud.resid) * offp_y,
    size = parms$pts$csz,
    show.legend = FALSE
  )
  if (any(df$outlier %in% "outl")) {
    #
    # Add legend for outliers
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
  }
  #
  # Show limits for influential points
  for (i in 1:length(infl_lims)) {
    plts$infl <- plts$infl +
      ggplot2::geom_hline(
        yintercept = infl_lims[i],
        color = parms$lins$colr$infl,
        linewidth = parms$lins$size,
        linetype = parms$infl$ltyp
      ) +
      ggplot2::annotate(
        "text",
        x = lim["min", "x"],
        y = infl_lims[i],
        label = "Influential",
        hjust = 0,
        vjust = c(2, -1)[i],
        color = parms$lins$colr$infl,
        size = parms$pts$csz
      )
  }
  #
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
