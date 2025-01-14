test_that("sumry for simple regression works", {
  withr::local_options(width = 80)
  expect_snapshot(
    sumry(lm(Sepal.Length ~ Sepal.Width, data = iris))
  )
})
test_that("sumry for identity regression warns", {
  withr::local_options(width = 80)
  expect_snapshot(
    sumry(lm(Sepal.Length ~ Sepal.Length, data = iris))
  )
})
