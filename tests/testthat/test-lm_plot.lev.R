test_options <- list(scipen = 0, digits = 4, width = 90, max.print = 10000)

test_that("lm_plot.lev produces expected plot graphics for cars", {
  withr::local_options(test_options)
  fit <- lm(mpg ~ wt + hp, data = mtcars)
  set.seed(123)
  lm_plot.lev_cars <- lm_plot.lev(mdl = fit, opt = list(cook.loess = TRUE))
  vdiffr::expect_doppelganger(
    title = "lm-plot-lev-cars",
    fig = lm_plot.lev_cars$plts$lev,
    variant = sysnm()
  )
})

test_that("lm_plot.lev produces expected plot elements for cars", {
  withr::local_options(test_options)
  load(testthat::test_path("fixtures", sysnm(), "lm_plot.lev_cars.Rdata"))
  lm_plot.lev_cars.out <- lm_plot.lev_cars_bld(test_options)
  expect_equal(lm_plot.lev_cars.out, lm_plot.lev_cars.rda)
})
