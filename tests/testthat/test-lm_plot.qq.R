test_options <- list(scipen = 2, digits = 6, width = 90)

test_that("lm_plot.qq produces expected plot elements for cars", {
  withr::local_options(test_options)
  fit <- lm(mpg ~ wt + hp, data = mtcars)
  lm_plot.qq_cars <- lm_plot.qq(mdl = fit, opt = list(pval.SW = TRUE))
  str.out <- utils::capture.output(str(lm_plot.qq_cars$plts))
  lm_plot.qq_cars$plts <-
    grep("environment", str.out, ignore.case = TRUE, value = TRUE, invert = TRUE)
  expect_snapshot(lm_plot.qq_cars)
})
