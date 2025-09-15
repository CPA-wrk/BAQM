test_options <- list(scipen = 2, digits = 6, width = 90)

test_that("lm_plot.4way produces expected plot for cars", {
  withr::local_options(test_options)
  fit <- lm(mpg ~ wt + hp, data = mtcars)
  lm_plot.4way_cars <-
    lm_plot.4way(mdl = fit,
                 opt = list(ts = FALSE,
                            pval.BP = TRUE,
                            pval.DW = TRUE,
                            pval.SW = TRUE))
  for (nm in names(lm_plot.4way_cars$plts)) {
    str.out <- utils::capture.output(str(lm_plot.4way_cars$plts[[nm]]))
    lm_plot.4way_cars$plts[[nm]] <-
      grep("environment", str.out, ignore.case = TRUE, value = TRUE, invert = TRUE)
  }
  str.out <- utils::capture.output(str(lm_plot.4way_cars$p_4way))
  lm_plot.4way_cars$p_4way <-
    grep("environment", str.out, ignore.case = TRUE, value = TRUE, invert = TRUE)
  expect_snapshot(lm_plot.4way_cars)
})
