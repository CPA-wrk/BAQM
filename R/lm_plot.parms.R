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
  if (!is.ok(parms$pts$size)) {
    parms$pts$size <- 1.5
  }
  if (!is.ok(parms$pts$csz)) {
    parms$pts$csz <- 1.5 * parms$pts$size
  }
  if (!is.ok(parms$pts$shape$reg)) {
    parms$pts$shape$reg <- "circle"
  }
  if (!is.ok(parms$pts$shape$outl)) {
    parms$pts$shape$outl <- "circle open"
  }
  if (!is.ok(parms$pts$shape$cook)) {
    parms$pts$shape$cook <- "square open"
  }
  if (!is.ok(parms$pts$colr$reg)) {
    parms$pts$colr$reg <- "black"
  }
  if (!is.ok(parms$pts$colr$outl)) {
    parms$pts$colr$outl <- "red"
  }
  if (!is.ok(parms$pts$colr$cook)) {
    parms$pts$colr$cook <- "green4"
  }
  if (!is.ok(parms$pts$colr$infl)) {
    parms$pts$colr$infl <- "green4"
  }
  if (!is.ok(parms$pts$id$reg)) {
    parms$pts$id$reg <- FALSE
  }
  if (!is.ok(parms$pts$id$outl)) {
    parms$pts$id$outl <- TRUE
  }
  if (!is.ok(parms$pts$id$cook)) {
    parms$pts$id$cook <- TRUE
  }
  if (!is.ok(parms$pts$id$infl)) {
    parms$pts$id$infl <- TRUE
  }
  if (!is.ok(parms$pts$offp$infl)) {
    parms$pts$offp$infl <- .01
  }
  #
  if (!is.ok(parms$lins$ltyp)) {
    parms$lins$ltyp <- "solid"
  }
  if (!is.ok(parms$lins$size)) {
    parms$lins$size <- 0.5
  }
  if (!is.ok(parms$lins$size_lg)) {
    parms$lins$size_lg <- 1
  }
  if (!is.ok(parms$lins$csz)) {
    parms$lins$csz <- 4
  }
  if (!is.ok(parms$lins$colr$fit)) {
    parms$lins$colr$fit <- "orange"
  }
  if (!is.ok(parms$lins$colr$qq)) {
    parms$lins$colr$qq <- "dodgerblue"
  }
  if (!is.ok(parms$lins$colr$var)) {
    parms$lins$colr$var <- "purple"
  }
  if (!is.ok(parms$lins$colr$ac)) {
    parms$lins$colr$ac <- "green4"
  }
  if (!is.ok(parms$lins$colr$lev)) {
    parms$lins$colr$lev <- "green4"
  }
  if (!is.ok(parms$lins$colr$infl)) {
    parms$lins$colr$infl <- "green4"
  }
  if (!is.ok(parms$lins$colr$cook)) {
    parms$lins$colr$cook <- "gray70"
  }
  #
  if (!is.ok(parms$opt$ts)) {
    parms$opt$ts <- FALSE
  } # data is time series?
  if (!is.ok(parms$opt$pred.pts)) {
    parms$opt$pred.pts <- 100
  } # prediction intvl pts?
  if (!is.ok(parms$opt$pval.SW)) {
    parms$opt$pval.SW <- FALSE
  } # SW pval?
  if (!is.ok(parms$opt$pval.BP)) {
    parms$opt$pval.BP <- FALSE
  } # BP pval?
  if (!is.ok(parms$opt$pval.DW)) {
    parms$opt$pval.DW <- FALSE
  } # DW pval?
  if (!is.ok(parms$opt$cook.loess)) {
    parms$opt$cook.loess <- FALSE
  } # Cooks-D loess?
  #
  if (!is.ok(parms$cook$n)) {
    parms$cook$n <- 100
  } # points
  if (!is.ok(parms$cook$level)) {
    parms$cook$level <- c(0.5, 1)
  } # contour levels
  if (!is.ok(parms$cook$ltyp)) {
    parms$cook$ltyp <- "dashed"
  }
  if (!is.ok(parms$infl$ltyp)) {
    parms$infl$ltyp <- "dashed"
  }
  #
  parms
}
