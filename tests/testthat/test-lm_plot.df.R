test_options <- list(scipen = 0, digits = 4, width = 90, max.print = 10000)

test_that("lm_plot.df produces expected augmented data frame for longley", {
  withr::local_options(test_options)
  load(testthat::test_path("fixtures", sysnm(), "lm_plot.df_longley.Rdata"))
  lm_plot.df_longley.out <- lm_plot.df_longley_bld(test_options)
  expect_equal(lm_plot.df_longley.out, lm_plot.df_longley.rda)
})
