# Define test functions to build lm_plot outputs for tests
#
lm_plot.df_longley_bld <- function(test_options = NULL) {
  if (is.null(test_options)) test_options <-
      list(scipen = 0, digits = 4, width = 90, max.print = 10000)
  withr::local_options(test_options)
  fit <- lm(GNP ~ ., data = longley[-1])
  set.seed(123)
  lm_plot.df(mdl = fit)
}
#
lm_plot.ac_longley_bld <- function(test_options = NULL) {
  if (is.null(test_options)) test_options <-
      list(scipen = 0, digits = 4, width = 90, max.print = 10000)
  withr::local_options(test_options)
  fit <- lm(GNP ~ ., data = longley[-1])
  set.seed(123)
  lm_plot.ac(mdl = fit, is.ts = TRUE, pval.DW = TRUE)
}
#
lm_plot.df_cars_bld <- function(test_options = NULL) {
  if (is.null(test_options)) test_options <-
      list(scipen = 0, digits = 4, width = 90, max.print = 10000)
  withr::local_options(test_options)
  fit <- lm(mpg ~ wt + cyl, data = mtcars)
  set.seed(123)
  lm_plot.df(mdl = fit)
}
#
lm_plot.4way_cars_bld <- function(test_options = NULL) {
  if (is.null(test_options)) test_options <-
      list(scipen = 0, digits = 4, width = 90, max.print = 10000)
  withr::local_options(test_options)
  set.seed(123)
  fit <- lm(mpg ~ wt + cyl, data = mtcars)
  set.seed(123)
  lm_plot.4way(mdl = fit, pval.BP = TRUE, pval.DW = TRUE, pval.SW = TRUE)
}
#
lm_plot.fit_cars_bld <- function(test_options = NULL) {
  if (is.null(test_options)) test_options <-
      list(scipen = 0, digits = 4, width = 90, max.print = 10000)
  withr::local_options(test_options)
  fit <- lm(mpg ~ wt + cyl, data = mtcars)
  set.seed(123)
  lm_plot.fit(mdl = fit)
}
#
lm_plot.qq_cars_bld <- function(test_options = NULL) {
  if (is.null(test_options)) test_options <-
      list(scipen = 0, digits = 4, width = 90, max.print = 10000)
  withr::local_options(test_options)
  fit <- lm(mpg ~ ., data = mtcars)
  set.seed(123)
  lm_plot.qq(mdl = fit, pval.SW = TRUE)
}
#
lm_plot.var_cars_bld <- function(test_options = NULL) {
  if (is.null(test_options)) test_options <-
      list(scipen = 0, digits = 4, width = 90, max.print = 10000)
  withr::local_options(test_options)
  fit <- lm(formula = mpg ~ ., data = mtcars)
  set.seed(123)
  lm_plot.var(mdl = fit, pval.BP = TRUE)
}
#
lm_plot.infl_cars_bld <- function(test_options = NULL) {
  if (is.null(test_options)) test_options <-
      list(scipen = 0, digits = 4, width = 90, max.print = 10000)
  withr::local_options(test_options)
  fit <- lm(mpg ~ wt + cyl, data = mtcars)
  set.seed(123)
  lm_plot.infl(mdl = fit)
}
#
lm_plot.lev_cars_bld <- function(test_options = NULL) {
  if (is.null(test_options)) test_options <-
      list(scipen = 0, digits = 4, width = 90, max.print = 10000)
  withr::local_options(test_options)
  fit <- lm(mpg ~ wt + cyl, data = mtcars)
  set.seed(123)
  lm_plot.lev(mdl = fit, cook.loess = TRUE)
}
# Set up test fixtures for test. Functions used are defined in
# testthat/helper-test-functions.R
#
sysnm <- function() {
  #
  # Provide OS name for saving/locating fixtures
  #
  if ((os <- tolower(Sys.info()["sysname"])) == "darwin") {
    os <- "mac"
  } else if (!os %in% c("windows", "solaris")) {
    os <- "linux"
  }
  #
  if (!os %in% c("mac", "windows", "solaris", "linux")) {
    os <- "mac"
  }
  os
}
#
build_test_rds <- function(test_options = NULL) {
  if (is.null(test_options)) test_options <-
      list(scipen = 0, digits = 4, width = 90, max.print = 10000)
  #
  # Build test fixtures for lm_plots (stored as <___>.rds)
  # This runs once(!) locally on each platform to store lm_plot data
  #   plot object attributes are saved as .rds for expect_equal
  #   graphic itself is saved for vdiffr::expect_doppelganger
  #
  withr::local_options(test_options)
  #
  # Assure fixture directory (for os) is available
  fixt_path <- testthat::test_path("fixtures", sysnm())
  if (dir.exists(fixt_path)) {
    fixt_back <- paste0(fixt_path, ".bak")
    if (dir.exists(fixt_back))
      unlink(fixt_back, recursive = TRUE, force = TRUE)
    file.rename(fixt_path, fixt_back)
  }
  dir.create(path = fixt_path, recursive = TRUE)
  #
  lm_plot.df_longley <- lm_plot.df_longley_bld(test_options)
  saveRDS(lm_plot.df_longley, ascii = TRUE,
          file = file.path(fixt_path, "lm_plot.df_longley.rds"))
  #
  lm_plot.ac_longley <- lm_plot.ac_longley_bld(test_options)
  saveRDS(attributes(lm_plot.ac_longley), ascii = TRUE,
          file = file.path(fixt_path, "lm_plot.ac_longley.rds"))
  vdiffr::write_svg(plot = lm_plot.ac_longley,
                    file = file.path(fixt_path, "lm_plot.ac_longley.svg"))
  #
  lm_plot.df_cars <- lm_plot.df_cars_bld(test_options)
  saveRDS(lm_plot.df_cars, ascii = TRUE,
          file = file.path(fixt_path, "lm_plot.df_cars.rds"))
  #
  lm_plot.4way_cars <- lm_plot.4way_cars_bld(test_options)
  saveRDS(attributes(lm_plot.4way_cars), ascii = TRUE,
          file = file.path(fixt_path, "lm_plot.4way_cars.rds"))
  vdiffr::write_svg(plot = lm_plot.4way_cars,
                    file = file.path(fixt_path, "lm_plot.4way_cars.svg"))
  #
  lm_plot.fit_cars <- lm_plot.fit_cars_bld(test_options)
  saveRDS(attributes(lm_plot.fit_cars), ascii = TRUE,
          file = file.path(fixt_path, "lm_plot.fit_cars.rds"))
  vdiffr::write_svg(plot = lm_plot.fit_cars,
                    file = file.path(fixt_path, "lm_plot.fit_cars.svg"))
  #
  lm_plot.qq_cars <- lm_plot.qq_cars_bld(test_options)
  saveRDS(attributes(lm_plot.qq_cars), ascii = TRUE,
          file = file.path(fixt_path, "lm_plot.qq_cars.rds"))
  vdiffr::write_svg(plot = lm_plot.qq_cars,
                    file = file.path(fixt_path, "lm_plot.qq_cars.svg"))
  #
  lm_plot.var_cars <- lm_plot.var_cars_bld(test_options)
  saveRDS(attributes(lm_plot.var_cars), ascii = TRUE,
          file = file.path(fixt_path, "lm_plot.var_cars.rds"))
  vdiffr::write_svg(plot = lm_plot.var_cars,
                    file = file.path(fixt_path, "lm_plot.var_cars.svg"))
  #
  lm_plot.infl_cars <- lm_plot.infl_cars_bld(test_options)
  saveRDS(attributes(lm_plot.infl_cars), ascii = TRUE,
          file = file.path(fixt_path, "lm_plot.infl_cars.rds"))
  vdiffr::write_svg(plot = lm_plot.infl_cars,
                    file = file.path(fixt_path, "lm_plot.infl_cars.svg"))
  #
  lm_plot.lev_cars <- lm_plot.lev_cars_bld(test_options)
  saveRDS(attributes(lm_plot.lev_cars), ascii = TRUE,
          file = file.path(fixt_path, "lm_plot.lev_cars.rds"))
  vdiffr::write_svg(plot = lm_plot.lev_cars,
                    file = file.path(fixt_path, "lm_plot.lev_cars.svg"))
}

