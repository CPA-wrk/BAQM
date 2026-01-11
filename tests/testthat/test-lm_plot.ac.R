test_options <- list(scipen = 0, digits = 4, width = 90, max.print = 10000)
# fixt_path <- testthat::test_path("fixtures", sysnm())
# #
# lm_plot.ac_longley <- lm_plot.ac_longley_bld(test_options)
# #
# test_that("lm_plot.ac plot attributes for longley data are ok", {
#   withr::local_options(test_options)
#   expect_equal(
#     (lm_plot.ac_longley.new <- attributes(lm_plot.ac_longley)),
#     (lm_plot.ac_longley.old <- readRDS(
#       file = file.path(fixt_path, "lm_plot.ac_longley.rds")))
#   )
# })
#
test_that("lm_plot.ac plot graphics for longley data are ok", {
  withr::local_options(test_options)
  vdiffr::expect_doppelganger(
    title = "lm-plot-ac-longley",
    fig = lm_plot.ac_longley_bld(test_options),
    variant = sysnm())
})
