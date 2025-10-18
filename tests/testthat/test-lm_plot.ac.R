test_options <- list(scipen = 0, digits = 4, width = 90, max.print = 10000)

test_that("lm_plot.ac produces expected plot graphics for longley", {
  withr::local_options(test_options)
  fit <- lm(GNP ~ ., data = longley[-1])
  set.seed(123)
  lm_plot.ac_longley <-
    lm_plot.ac(mdl = fit, opt = list(ts = TRUE, pval.DW = TRUE))
  vdiffr::expect_doppelganger(
    title = "lm-plot-ac-longley",
    fig = lm_plot.ac_longley$plts$ac)
})

test_that("lm_plot.ac produces expected plot elements for longley", {
  withr::local_options(test_options)
  lm_plot.ac_longley.out <- lm_plot.ac_longley_bld(test_options)
  load(testthat::test_path("fixtures", "lm_plot.ac_longley.Rdata"))
  expect_equal(lm_plot.ac_longley.out, lm_plot.ac_longley.rda)
})
