# Testing code for stat_desc
test_options <- list(scipen = 2, digits = 6, width = 90)

test_that("Call with no data works", {
  withr::local_options(test_options)
  expect_null(stat_desc())
})
#
test_that("Call with data.frame works", {
  withr::local_options(test_options)
  expect_type(stat_desc(iris), "list")
})
#
test_that("Call with matrix works", {
  withr::local_options(test_options)
  expect_type(stat_desc(as.matrix(mtcars)), "list")
})
#
test_that("Call with vector works", {
  withr::local_options(test_options)
  expect_type(stat_desc(1:10, transpose = TRUE), "list")
})
#
test_that("Call with missing data", {
  withr::local_options(test_options)
  expect_type(stat_desc(airquality), "list")
})
#
test_that("Check printed results: numeric only", {
  withr::local_options(test_options)
  expect_snapshot(stat_desc(mtcars, pad = 1))
})
#
test_that("Check printed results: mixed types", {
  withr::local_options(test_options)
  expect_snapshot(stat_desc(iris, pad = 1))
})
#
test_that("Check printed results: vector, and transpose", {
  withr::local_options(test_options)
  expect_snapshot(stat_desc(1:10, transpose = TRUE))
})

