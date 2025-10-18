#' Plot Standard Residuals vs. Leverage with Cook's Distance Contours
#'
#' Creates a plot of standard residuals versus leverage values, including Cook's distance contours to visualize influential observations.
#'
#' @param mdl A fitted model object (typically from \code{\link[stats]{lm}}).
#' @param opt List of options, where \code{cook.loess} (logical, default = FALSE) indicates whether to show loess curve for Cook's distances on the plot.
#' @param parm List of plotting parameters, usually from \code{lm_plot.parms()}.
#' @param df Data frame with augmented model data. Defaults to \code{lm_plot.df(mdl)}.
#' @param plts List of ggplot objects to which this plot will be added.
#'
#' @details
#' The plot displays standard residuals against leverage, overlays Cook's distance contours, and marks outliers based on residuals and Cook's distance. Outlier and influential points can be labeled, and a loess fit line is optionally added.
#'
#' @return A list containing:
#' \itemize{
#'   \item \code{mdl} Fitted model object,
#'   \item \code{opt} List of options, including \code{cook.loess},
#'   \item \code{parm} Parameter list for plotting, including Cook's distance contours,
#'   \item \code{df} Data frame used for plotting,
#'   \item \code{plts} List of ggplot objects, including the \code{$lev} element.
#' }
#'
#' @seealso \code{\link{lm_plot.df}}, \code{\link{lm_plot.parms}}
#' @import ggplot2 ggrepel stats
#' @export
#'
#' @examples
#' \dontrun{
#' mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
#' result <- lm_plot.lev(mdl)
#' print(result$plts$lev)
#' }
lm_plot.lev <- function(mdl,
                        opt = list(),
                        parm = list(),
                        df = lm_plot.df(mdl),
                        plts = list()) {
  # Copyright 2025, Peter Lert, All rights reserved.
  #
  # Plot Standard residuals vs. Leverage with Cook's distance contours
  #
  # mdl:    fitted linear model
  # opt:    pval.DW: include Durbin-Watson autocorrelation test p-value?
  # parm:   plot element parameters
  # df:     augmented model data
  # plts:   list of ggplot objects to add to
  #
  # Default plot element parameters
  parms <- lm_plot.parms(mdl, parm)
  #
  if (is.null(opt$cook.loess)) opt$cook.loess <- FALSE
  #
  # Find x, y limits for placing elements
  lim <- data.frame(
    x = range(df$.hat, na.rm = TRUE),
    y = range(df$.std.resid, na.rm = TRUE),
    row.names = c("min", "max")
  )
  #
  # Build Cook's distance contours
  x <- lim["min", "x"] + (0:parms$cook$n) * diff(lim$x) / parms$cook$n
  parms$cook$labl <- character()
  parms$cook$cont <- list()
  parms$cook$level <- unique(abs(parms$cook$level))
  for (level in parms$cook$level) {
    y <- sqrt(level * length(stats::coef(mdl)) * (1 - x) / x)
    parms$cook$cont[paste0(c("pos.", "neg."), level)] <- data.frame(y, -y)
    parms$cook$labl <- c(parms$cook$labl, paste0("d = ", c("+", "-"), level))
  }
  names(parms$cook$labl) <- names(parms$cook$cont)
  parms$cook$level <- rep(parms$cook$level, each = 2) * rep(c(1, -1), 2)
  names(parms$cook$level) <- names(parms$cook$cont)
  parms$cook$cont$x <- x
  parms$cook$cont <- data.frame(parms$cook$cont)
  #
  plts$lev <- ggplot2::ggplot(df) +
    ggplot2::aes(x = .hat, y = .std.resid) +
    # Plot axis labels
    ggplot2::labs(x = "Leverage", y = "Standard Residual") +
    # Highlight axes within frame
    ggplot2::geom_hline(
      colour = "white",
      linewidth = parms$lins$size_lg,
      yintercept = 0
    ) +
    ggplot2::geom_vline(
      colour = "white",
      linewidth = parms$lins$size_lg,
      xintercept = 0
    )
  #
  # Plot points - vary color & shape for normal/outlier points
  plts$lev <- plts$lev +
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
  plts$lev <- plts$lev +
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
  # Add loess line
  if (opt$cook.loess) {
    plts$lev <- plts$lev +
      ggplot2::geom_smooth(
        se = FALSE,
        method = "loess",
        formula = y ~ x,
        linetype = parms$lins$ltyp$lev,
        color = parms$lins$colr$lev,
        linewidth = parms$lins$size
      )
  }
  #
  # ID large(Cook's Distance) points if desired
  if (parms$pts$id$cook &&
      is.ok(i_d <- which(abs(df$.cooksd) >= min(abs(parms$cook$level))))) {
    df.i_d <- df[i_d, , drop = FALSE]
    plts$lev <- plts$lev +
      ggrepel::geom_text_repel(
        data = df.i_d,
        ggplot2::aes(x = .hat, y = .std.resid, label = .id),
        color = parms$pts$colr$cook,
        size = parms$pts$lblsz
      )
  } else {
    i_d <- 0
  }
  #
  # ID outlier points not large(Cook's Distance) if desired
  if (parms$pts$id$outl) {
    set.seed(parms$seed$lev$outl) # For reproducible ID placement
    i_outl <- which(df$.is.outl == "outl")
    df.outl <- df[i_outl[!i_outl %in% i_d], , drop = FALSE]
    plts$lev <- plts$lev + ggrepel::geom_text_repel(
      data = df.outl,
      ggplot2::aes(x = .hat, y = .std.resid, label = .id),
      color = parms$pts$colr$outl,
      size = parms$pts$lblsz
    )
  }
  #
  # ID regular points if desired
  if (parms$pts$id$reg) {
    set.seed(parms$seed$lev$reg) # For reproducible ID placement
    i_reg <- which(df$.is.outl == "reg")
    df.reg <- df[i_reg[!i_reg %in% i_d], , drop = FALSE]
    plts$lev <- plts$lev +
      ggrepel::geom_text_repel(
        data = df.reg,
        ggplot2::aes(x = .hat, y = .std.resid, label = .id),
        color = parms$pts$colr$reg,
        size = parms$pts$lblsz
      )
  }
  #
  # Add CooksD legend
  lgd_x <- lim["max", "x"] - diff(lim$x) / 15
  l.dat <- data.frame(
    x = c(lgd_x, lim["max", "x"]),
    y = c(lim["max", "y"], lim["max", "y"])
  )
  plts$lev <- plts$lev +
    ggplot2::geom_line(
      data = l.dat,
      ggplot2::aes(x = x, y = y),
      linetype = parms$lins$ltyp$cook,
      linewidth = parms$lins$size,
      color = parms$lins$colr$cook
    ) +
    ggplot2::annotate(
      "text",
      x = lgd_x,
      y = lim["max", "y"],
      label = "Cook's distance ",
      hjust = 1,
      vjust = 0.5,
      color = parms$lins$colr$cook,
      size = parms$lins$notesz
    )
  #
  # Plot Cook's distance contours
  for (d_nm in names(parms$cook$labl)) {
    t_nm <- data.frame(.hat = parms$cook$cont$x,
                       .std.resid = parms$cook$cont[[d_nm]])
    i_cont <- which(t_nm$.std.resid >= lim["min", "y"] &
                      t_nm$.std.resid <= lim["max", "y"])
    if (length(i_cont) <= 1) next
    t_nm <- t_nm[i_cont, ]
    k_mid <- ceiling(length(i_cont) / 2)
    plts$lev <- plts$lev +
      ggplot2::geom_line(
        data = t_nm,
        ggplot2::aes(x = .hat, y = .std.resid),
        linetype = parms$lins$ltyp$cook,
        linewidth = parms$lins$size,
        color = parms$lins$colr$cook
      ) +
      ggplot2::geom_text(
        x = t_nm$.hat[k_mid],
        y = t_nm$.std.resid[k_mid],
        label = parms$cook$labl[d_nm],
        hjust = 0,
        vjust = ifelse(parms$cook$level[[d_nm]] < 0, 1, 0),
        size = parms$lins$notesz,
        color = parms$lins$colr$cook
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
