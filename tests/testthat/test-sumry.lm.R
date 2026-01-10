# Testing code for sumry.lm
test_options <- list(scipen = 0, digits = 4, width = 90)

test_that("sumry.lm: simple regression (iris) works", {
  withr::local_options(test_options)
  expect_snapshot(sumry(lm(Sepal.Length ~ Sepal.Width, data = iris)))
})

test_that("sumry.lm: numeric and factor variables (iris)", {
  withr::local_options(test_options)
  expect_snapshot(sumry(mdl <- lm(Sepal.Length ~ ., data = iris)))
})

test_that("sumry.lm: with interaction term (iris)", {
  withr::local_options(test_options)
  expect_snapshot(sumry(lm(
    Sepal.Length ~ Sepal.Width + Petal.Width * Petal.Length, data = iris)))
})
