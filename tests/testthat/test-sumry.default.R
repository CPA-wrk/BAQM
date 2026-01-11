# Testing code for sumry.default
test_options <- list(scipen = 0, digits = 4, width = 90)

test_that("Call with no data works", {
  withr::local_options(test_options)
  expect_null(sumry())
})
#
test_that("Call with data.frame works", {
  withr::local_options(test_options)
  expect_type(sumry(iris), "list")
})
#
test_that("Call with matrix works", {
  withr::local_options(test_options)
  expect_type(sumry(as.matrix(mtcars)), "list")
})
#
test_that("Call with vector works", {
  withr::local_options(test_options)
  expect_type(sumry(1:10, transpose = TRUE), "list")
})
#
test_that("Call with missing data", {
  withr::local_options(test_options)
  expect_type(sumry(airquality), "list")
})
