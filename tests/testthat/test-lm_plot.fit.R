test_options <- list(scipen = 0, digits = 4, width = 90, max.print = 10000)
# fixt_path <- testthat::test_path("fixtures", sysnm())
# #
# lm_plot.fit_cars <- lm_plot.fit_cars_bld(test_options)
# #
# test_that("lm_plot.fit plot attributes for cars data are ok", {
#   withr::local_options(test_options)
#   expect_equal(
#     (lm_plot.fit_cars.new <- attributes(lm_plot.fit_cars)),
#     (lm_plot.fit_cars.old <- readRDS(
#       file = file.path(fixt_path, "lm_plot.fit_cars.rds")))
#   )
# })
#
test_that("lm_plot.fit plot graphics for cars data are ok", {
  withr::local_options(test_options)
  vdiffr::expect_doppelganger(
    title = "lm-plot-fit-cars",
    fig = lm_plot.fit_cars_bld(test_options),
    variant = sysnm())
})
