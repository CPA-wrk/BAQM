test_options <- list(scipen = 2, digits = 6, width = 90)

test_that("lm_plot.ac produces expected plot elements for faithful", {
  withr::local_options(test_options)
  fit <- lm(eruptions ~ waiting, data = faithful)
  lm_plot.ac_faithful <-
    lm_plot.ac(mdl = fit, opt = list(pval.DW = TRUE))
  str.out <- utils::capture.output(str(lm_plot.ac_faithful$plts))
  lm_plot.ac_faithful$plts <-
    grep("environment", str.out, ignore.case = TRUE, value = TRUE, invert = TRUE)
  expect_snapshot(lm_plot.ac_faithful)
})
