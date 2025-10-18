test_options <- list(scipen = 0, digits = 4, width = 90, max.print = 10000)

test_that("lm_plot.fit produces expected plot graphics for cars", {
  withr::local_options(test_options)
  fit <- lm(mpg ~ wt + hp, data = mtcars)
  set.seed(123)
  lm_plot.fit_cars <- lm_plot.fit(mdl = fit)
  vdiffr::expect_doppelganger(
    title = "lm-plot-fit-cars",
    fig = lm_plot.fit_cars$plts$fit
  )
})

test_that("lm_plot.fit produces expected plot elements for cars", {
  withr::local_options(test_options)
  lm_plot.fit_cars.out <- lm_plot.fit_cars_bld(test_options)
  load(testthat::test_path("fixtures", "lm_plot.fit_cars.Rdata"))
  expect_equal(lm_plot.fit_cars.out, lm_plot.fit_cars.rda)
})
