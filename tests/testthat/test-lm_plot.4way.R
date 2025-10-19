test_options <- list(scipen = 0, digits = 4, width = 90, max.print = 10000)

test_that("lm_plot.4way produces expected plot graphics for cars", {
  withr::local_options(test_options)
  fit <- lm(mpg ~ wt + hp, data = mtcars)
  set.seed(123)
  lm_plot.4way_cars <-
    lm_plot.4way(mdl = fit,
                 opt = list(ts = FALSE,
                            pval.BP = TRUE,
                            pval.DW = TRUE,
                            pval.SW = TRUE))
  vdiffr::expect_doppelganger(
    title = "lm-plot-4way-cars-p-4way",
    fig = lm_plot.4way_cars$p_4way,
    variant = sysnm()
  )
})

test_that("lm_plot.4way produces expected plot content for cars", {
  withr::local_options(test_options)
  load(testthat::test_path("fixtures", sysnm(), "lm_plot.4way_cars.Rdata"))
  lm_plot.4way_cars.out <- lm_plot.4way_cars_bld(test_options)
  expect_equal(lm_plot.4way_cars.out, lm_plot.4way_cars.rda)
})
