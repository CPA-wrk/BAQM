test_options <- list(scipen = 0, digits = 4, width = 90, max.print = 10000)

test_that("lm_plot.infl produces expected plot graphics for cars", {
  withr::local_options(test_options)
  fit <- lm(mpg ~ wt + hp, data = mtcars)
  set.seed(123)
  lm_plot.infl_cars <- lm_plot.infl(mdl = fit)
  vdiffr::expect_doppelganger(
    title = "lm-plot-infl-cars",
    fig = lm_plot.infl_cars$plts$infl,
    variant = sysnm()
  )
})

test_that("lm_plot.infl produces expected plot elements for cars", {
  withr::local_options(test_options)
  load(testthat::test_path("fixtures", sysnm(), "lm_plot.infl_cars.Rdata"))
  lm_plot.infl_cars.out <- lm_plot.infl_cars_bld(test_options)
  expect_equal(lm_plot.infl_cars.out, lm_plot.infl_cars.rda)
})
