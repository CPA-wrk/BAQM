#' Set or Retrieve Default Plot Parameters for Model Diagnostic Plots
#'
#' Initializes or updates a list of plot element parameters for use in model diagnostic plotting functions. If any required parameter is missing or invalid, a default value will be supplied.
#'
#' @param parms A list of plot parameters. Any missing or invalid entries are replaced with defaults.
#'
#' @details
#' The returned list contains parameters for points (size, color, shape), lines (type, color, size), options for plot features, and Cook's distance/Influence contours. These are used by other \code{lm_plot.*} functions to control plot appearance and annotation. Key defaults include:
#' \itemize{
#'   \item \strong{pts}: Properties for points (size, color, shape, outlier flags)
#'   \item \strong{lins}: Properties for lines (type, color, size)
#'   \item \strong{opt}: Logical options for plot features (e.g., time series, prediction interval, test statistics)
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
#' parms <- lm_plot.parms()
#' # Set custom color for regular points
#' parms <- lm_plot.parms(list(pts = list(colr = list(reg = "blue"))))
lm_plot.parms <- function(parms = list()) {
  # Copyright 2025, Peter Lert, All rights reserved.
  #
  # Default plot element parameters
  #
  def.parms <- list(
    pts = list(
      size = 1.5,
      csz = 2.25,
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
      ltyp = "solid",
      size = 0.5,
      size_lg = 1,
      csz = 4,
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
    opt = list(
      ts = FALSE,
      pred_intvl_pts = 100,
      pval.SW = FALSE,
      pval.BP = FALSE,
      pval.DW = FALSE,
      cook.loess = FALSE
    ),
    cook = list(
      n = 100,
      level = c(0.5, 1),
      ltyp = "dashed"
    ),
    infl = list(ltyp = "dashed")
  )
  #
  # Assign input elements to override defaults
  n.parms <- utils::modifyList(def.parms, parms)
  parms <- n.parms
  parms
}
