test_options <- list(scipen = 2, digits = 6, width = 90)

test_that("lm_plot.var produces expected plot elements for cars", {
  withr::local_options(test_options)
  fit <- lm(mpg ~ wt + hp, data = mtcars)
  lm_plot.var_cars <- lm_plot.var(mdl = fit, opt = list(pval.BP = TRUE))
  str.out <- utils::capture.output(str(lm_plot.var_cars$plts))
  lm_plot.var_cars$plts <-
    grep("environment", str.out, ignore.case = TRUE, value = TRUE, invert = TRUE)
  expect_snapshot(lm_plot.var_cars)
})
