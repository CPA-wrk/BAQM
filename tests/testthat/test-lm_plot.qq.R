test_options <- list(scipen = 0, digits = 4, width = 90, max.print = 10000)

test_that("lm_plot.qq produces expected plot graphics for cars", {
  withr::local_options(test_options)
  fit <- lm(mpg ~ wt + hp, data = mtcars)
  set.seed(123)
  lm_plot.qq_cars <- lm_plot.qq(mdl = fit)
  vdiffr::expect_doppelganger(
    title = "lm-plot-qq-cars",
    fig = lm_plot.qq_cars$plts$qq,
    variant = sysnm()
  )
})

test_that("lm_plot.qq produces expected plot elements for cars", {
  withr::local_options(test_options)
  lm_plot.qq_cars.out <- lm_plot.qq_cars_bld(test_options)
  load(testthat::test_path("fixtures", sysnm(), "lm_plot.qq_cars.Rdata"))
  expect_equal(lm_plot.qq_cars.out, lm_plot.qq_cars.rda)
})
