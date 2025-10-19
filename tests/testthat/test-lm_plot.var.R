test_options <- list(scipen = 0, digits = 4, width = 90, max.print = 10000)

test_that("lm_plot.var produces expected plot graphics for cars", {
  withr::local_options(test_options)
  fit <- lm(formula = mpg ~ disp + drat, data = mtcars)
  set.seed(123)
  lm_plot.var_cars <- lm_plot.var(mdl = fit, opt = list(pval.BP = TRUE))
  vdiffr::expect_doppelganger(
    title = "lm-plot-var-cars",
    fig = lm_plot.var_cars$plts$var,
    variant = sysnm()
  )
})

test_that("lm_plot.var produces expected plot elements for cars", {
  withr::local_options(test_options)
  lm_plot.var_cars.out <- lm_plot.var_cars_bld(test_options)
  load(testthat::test_path("fixtures", sysnm(), "lm_plot.var_cars.Rdata"))
  expect_equal(lm_plot.var_cars.out, lm_plot.var_cars.rda)
})
