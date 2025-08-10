# Testing code for summary.lm
test_options <- list(scipen = 2, digits = 6, width = 80)

test_that("summary.lm: simple regression (iris) works", {
  withr::local_options(test_options)
  expect_snapshot(summary(lm(Sepal.Length ~ Sepal.Width, data = iris)))
})

test_that("summary.lm: numeric and factor variables (iris)", {
  withr::local_options(test_options)
  expect_snapshot(summary(mdl <- lm(Sepal.Length ~ ., data = iris)))
})

test_that("summary.lm: with interaction term (iris)", {
  withr::local_options(test_options)
  expect_snapshot(summary(lm(
    Sepal.Length ~ Sepal.Width + Petal.Width * Petal.Length, data = iris)))
})
