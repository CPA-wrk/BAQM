# test-summary-lm.R
# Snapshot tests for custom summary.lm method
# library(testthat)

test_that("summary.lm: reporting simple regression (iris)", {
  mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
  sumry <- summary.lm(mdl)
  expect_snapshot(sumry)
})

test_that("summary.lm: reporting regression with numeric and faactor variables", {
  mdl <- lm(Sepal.Length ~ ., data = iris)
  sumry <- summary.lm(mdl)
  expect_snapshot(sumry)
})

test_that("summary.lm: regression with interaction term", {
  mdl <- lm(Sepal.Length ~ Sepal.Width + Petal.Width * Petal.Length, data = iris)
  sumry <- summary.lm(mdl)
  expect_snapshot(sumry)
})
