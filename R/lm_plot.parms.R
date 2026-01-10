#' Set or Retrieve Default Plot Parameters for Model Diagnostic Plots
#'
#' Initializes or updates a list of plot element parameters for use in model diagnostic plotting functions. If any required parameter is missing or invalid, a default value will be supplied.
#'
#' @param mdl An object of class \code{lm}.
#' @param parms A list of plot parameters. Any missing or invalid entries are replaced with defaults.
#'
#' @details
#' The returned list contains parameters for points (size, color, shape), lines (type, color, size), options for plot features, and Cook's distance/Influence contours. These are used by other \code{lm_plot.*} functions to control plot appearance and annotation. Key defaults include:
#' \itemize{
#'   \item \strong{pts}: Properties for points (size, color, shape, outlier flags)
#'   \item \strong{lins}: Properties for lines (type, color, size)
#'   \item \strong{cook}: Cook's distance contour settings (points, levels, line type)
#'   \item \strong{infl}: Influence line settings (line type)
#' }
#' See function code for full list of available settings and default values.
#'
#' @return A list of plot element parameters with defaults filled in for any missing or invalid entries.
#'
#' @seealso \code{\link{lm_plot.fit}}, \code{\link{lm_plot.lev}}, \code{\link{lm_plot.infl}}
#' @export
#'
#' @examples
#' # Retrieve default parameters
#' parms <- lm_plot.parms(mdl = lm(Sepal.Length ~ Sepal.Width, data = iris))
#' # Set custom color for regular points
#' parms <- lm_plot.parms(mdl = lm(Sepal.Length ~ Sepal.Width, data = iris),
#'                        parms = list(pts = list(colr = list(reg = "blue"))))
lm_plot.parms <- function(mdl, parms = list()) {
  # Copyright 2025, Peter Lert, All rights reserved.
  #
  # Default plotting and statistical parameters for residual analysis
  #
  # Residual outliers:
  #   Measured by standardized residuals.
  #     abs(std.resid) > 3
  #
  # Influence values:
  #   Measured by Cook's distance.
  #   Thresholds for high Influence per Mendenhall & Sincich p. 420 (& others):
  #     cooksd > qf(p = 0.5, df1 = mdl$rank, df2 = n - mdl$rank)
  #
  # Leverage values:
  #   Measured by hat values (diagonal of hat matrix).
  #   Rule of thumb for high leverage per Mendenhall & Sincich p. 418:
  #     hat > 2*mdl$rank / n
  #
  def.parms <- list(
    pts = list(
      symsz = 1.5,
      lblsz = 2.25,
      shape = list(reg = "circle", outl = "circle open", cook = "square open"),
      colr = list(
        reg = "black",
        outl = "red",
        cook = "green4",
        infl = "green4"
      ),
      id = list(
        reg = FALSE,
        outl = TRUE,
        cook = TRUE,
        infl = TRUE
      ),
      offp = list(infl = 0.01)
    ),
    lins = list(
      size = 0.5,
      size_lg = 1,
      notesz = 3.5,
      ltyp = list(
        fit = "solid",
        pi = "dashed",
        qq = "solid",
        var = "dashed",
        ac = "solid",
        lev = "dotted",
        infl = "dotted",
        cook = "dotted"
      ),
      colr = list(
        fit = "orange",
        qq = "dodgerblue",
        var = "purple",
        ac = "green4",
        lev = "green4",
        infl = "green4",
        cook = "gray70"
      )
    ),
    seed = list(                         # for reproducible jitter
      ac = list(outl = 123, reg = 123),
      fit = list(outl = 123, reg = 123),
      infl = list(infl = 123, outl = 123, reg = 123),
      lev = list(lev = 123, outl = 123, reg = 123),
      qq = list(outl = 123, reg = 123),
      var = list(outl = 123, reg = 123)
    ),
    cook = list(
      n = 100,
      level = c(0.5, 1)
    ),
    xtrem = list(
      infl = list(meas = ".cooksd",
                  thrshld = stats::qf(p = 0.5, df1 = mdl$rank,
                               df2 = nrow(mdl$model) - mdl$rank,
                               lower.tail = FALSE)),
      lev = list(meas = ".hat",
                 thrshld = 2 * mdl$rank / nrow(mdl$model)),
      # outl = list(meas = ".std.resid", thrshld = 3),
      outl = list(meas = "boxplot", thrshld = 1.5)
    )
  )
  #
  # Assign input elements to override defaults
  parm <- utils::modifyList(def.parms, parms)
  parm
}
