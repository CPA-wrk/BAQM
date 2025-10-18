build_test_Rdata <- function() {
  #
  test_options <- list(scipen = 0, digits = 4, width = 90, max.print = 10000)
  withr::local_options(test_options)
  #
  fil <- testthat::test_path("fixtures", "lm_plot.4way_cars.Rdata")
  lm_plot.4way_cars.rda <- lm_plot.4way_cars_bld(test_options)
  save(lm_plot.4way_cars.rda, file = fil, ascii = TRUE)
  #
  fil <- testthat::test_path("fixtures", "lm_plot.ac_longley.Rdata")
  lm_plot.ac_longley.rda <- lm_plot.ac_longley_bld(test_options)
  save(lm_plot.ac_longley.rda, file = fil, ascii = TRUE)
  #
  fil <- testthat::test_path("fixtures", "lm_plot.df_longley.Rdata")
  lm_plot.df_longley.rda <- lm_plot.df_longley_bld(test_options)
  save(lm_plot.df_longley.rda, file = fil, ascii = TRUE)
  #
  fil <- testthat::test_path("fixtures", "lm_plot.fit_cars.Rdata")
  lm_plot.fit_cars.rda <- lm_plot.fit_cars_bld(test_options)
  save(lm_plot.fit_cars.rda, file = fil, ascii = TRUE)
  #
  fil <- testthat::test_path("fixtures", "lm_plot.infl_cars.Rdata")
  lm_plot.infl_cars.rda <- lm_plot.infl_cars_bld(test_options)
  save(lm_plot.infl_cars.rda, file = fil, ascii = TRUE)
  #
  fil <- testthat::test_path("fixtures", "lm_plot.lev_cars.Rdata")
  lm_plot.lev_cars.rda <- lm_plot.lev_cars_bld(test_options)
  save(lm_plot.lev_cars.rda, file = fil, ascii = TRUE)
  #
  fil <- testthat::test_path("fixtures", "lm_plot.qq_cars.Rdata")
  lm_plot.qq_cars.rda <- lm_plot.qq_cars_bld(test_options)
  save(lm_plot.qq_cars.rda, file = fil, ascii = TRUE)
  #
  fil <- testthat::test_path("fixtures", "lm_plot.var_cars.Rdata")
  lm_plot.var_cars.rda <- lm_plot.var_cars_bld(test_options)
  save(lm_plot.var_cars.rda, file = fil, ascii = TRUE)
}
