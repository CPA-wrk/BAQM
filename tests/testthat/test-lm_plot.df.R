test_options <- list(scipen = 0, digits = 4, width = 90, max.print = 10000)
fixt_path <- testthat::test_path("fixtures", sysnm())
#
test_that("lm_plot.df for langley time series data is ok", {
  withr::local_options(test_options)
  expect_equal(
    (lm_plot.df_longley.new <- lm_plot.df_longley_bld(test_options)),
    (lm_plot.df_longley.old <- readRDS(
      file = file.path(fixt_path, "lm_plot.df_longley.rds")))
  )
})
#
test_that("lm_plot.df for cars data is ok", {
  withr::local_options(test_options)
  expect_equal(
    (lm_plot.df_cars.new <- lm_plot.df_cars_bld(test_options)),
    (lm_plot.df_cars.old <- readRDS(
      file = file.path(fixt_path, "lm_plot.df_cars.rds")))
  )
})
