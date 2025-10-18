#' Plot Residuals vs. Fitted Values to Assess Homoskedasticity
#'
#' Produces a scatter plot of residuals against fitted values from a linear model, highlighting outlier points and optionally displaying the Breusch-Pagan test p-value for heteroskedasticity.
#'
#' @param mdl A fitted model object (typically from \code{\link[stats]{lm}}).
#' @param opt List of options, where \code{pval.BP} (logical, default = FALSE) indicates whether to include Breusch-Pagan p-value on the plot.
#' @param parm List of plotting parameters, usually from \code{lm_plot.parms()}.
#' @param df Data frame with augmented model data. Defaults to \code{lm_plot.df(mdl)}.
#' @param plts List of ggplot objects to which this plot will be added.
#'
#' @details
#' The plot visualizes residuals versus fitted values to assess homoskedasticity (constant variance). Points are colored and shaped by outlier status, and outlier/regular points can be labeled. If enabled, the Breusch-Pagan test for heteroskedasticity is run and its p-value is annotated on the plot.
#'
#' @return A list containing:
#' \itemize{
#'   \item \code{mdl} Fitted model object,
#'   \item \code{opt} Options used, including \code{pval.BP},
#'   \item \code{parm} Parameter list with Breusch-Pagan test results added,
#'   \item \code{df} Data frame used for plotting,
#'   \item \code{plts} List of ggplot objects, including the \code{$var} element.
#' }
#'
#' @seealso \code{\link{lm_plot.df}}, \code{\link{lm_plot.parms}}, \code{\link[lmtest]{bptest}}
#' @import ggplot2 ggrepel lmtest
#' @export
#'
#' @examples
#' mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
#' result <- lm_plot.var(mdl)
#' print(result$plts$var)
lm_plot.var <- function(mdl,
                        opt = list(),
                        parm = list(),
                        df = lm_plot.df(mdl),
                        plts = list()) {
  # Copyright 2025, Peter Lert, All rights reserved.
  #
  # Plot Residuals vs Fitted Values to test Homoskedasticity
  #
  # mdl:    fitted linear model
  # opt:    pval.BP: include Breusch-Pagan homoskedasticity test p-value?
  # parm:   plot element parameters
  # df:     augmented model data
  # plts:   list of ggplot objects to add to
  #
  # Default plot element parameters
  parms <- lm_plot.parms(mdl, parm)
  #
  if (is.null(opt$pval.BP)) opt$pval.BP <- FALSE
  #
  # Find x, y limits for placing elements
  lim <- data.frame(
    x = range(df$.fits, na.rm = TRUE),
    y = range(df$.resid, na.rm = TRUE),
    row.names = c("min", "max")
  )
  #
  # Plot of Residuals vs Fitted Values
  plts$var <- ggplot2::ggplot(data = df) +
    ggplot2::aes(x = .fits, y = .resid) +
    #
    # PLot axis labels
    ggplot2::labs(x = "Fitted Value", y = "Residual") +
    #
    # Highlight axes, if within frame
    ggplot2::geom_hline(
      color = "white",
      linewidth = parms$lins$size_lg,
      yintercept = 0
    )
  #
  if (prod(sign(lim$x)) %in% -1) {
    plts$var <- plts$var +
      ggplot2::geom_vline(
        color = "white",
        linewidth = parms$lins$size_lg,
        xintercept = 0
      )
  }
  #
  # Plot points - vary color & shape for normal/outlier points
  plts$var <- plts$var +
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
  # Add legend for outliers
  plts$var <- plts$var +
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
    df.outl <- df[df$.is.outl == "outl", , drop = FALSE]
    plts$var <- plts$var +
      ggrepel::geom_text_repel(
        data = df.outl,
        ggplot2::aes(x = .fits, y = .resid, label = .id),
        color = parms$pts$colr$outl,
        size = parms$pts$lblsz
      )
  }
  #
  # ID regular points if desired
  if (parms$pts$id$reg) {
    df.reg <- df[df$.is.outl == "reg", , drop = FALSE]
    plts$var <- plts$var +
      ggrepel::geom_text_repel(
        data = df.reg,
        ggplot2::aes(x = .fits, y = .resid, label = .id),
        color = parms$pts$colr$reg,
        size = parms$pts$lblsz
      )
  }
  #
  # Return variance results
  parms$var <- list(lim = lim, BP = lmtest::bptest(mdl))
  #
  # Add Breusch-Pagan heteroskedasticity test p-value if desired
  if (opt$pval.BP) {
    note_var <- paste0("Const.Var: BP p-val=", round(parms$var$BP$p.value, 4))
    plts$var <- plts$var +
      ggplot2::annotate(
        "text",
        x = lim["min", "x"],
        y = lim["max", "y"],
        label = note_var,
        hjust = 0,
        vjust = 1,
        color = parms$lins$colr$var,
        size = parms$lins$notesz
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
