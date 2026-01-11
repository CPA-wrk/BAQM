test_options <- list(scipen = 0, digits = 4, width = 90, max.print = 10000)
# fixt_path <- testthat::test_path("fixtures", sysnm())
#
# lm_plot.4way_cars <- lm_plot.4way_cars_bld(test_options)
# #
# test_that("lm_plot.4way plot attributes for cars data are ok", {
#   withr::local_options(test_options)
#   lm_plot.4way_cars.old <- readRDS(
#     file = file.path(fixt_path, "lm_plot.4way_cars.rds"))
#   lm_plot.4way_cars.new <- attributes(lm_plot.4way_cars)
#   chk <- list()
#   for (nm in (names(lm_plot.4way_cars.old) %notof% "layers")) {
#     expect_equal(lm_plot.4way_cars.new[[nm]],
#                  lm_plot.4way_cars.old[[nm]])
#   }
# })
#
test_that("lm_plot.4way plot graphics for cars data are ok", {
  withr::local_options(test_options)
  vdiffr::expect_doppelganger(
    title = "lm-plot-4way-cars",
    fig = lm_plot.4way_cars_bld(test_options),
    variant = sysnm()
  )
})
