test_that("sumry WORKS for simple regression", {
  withr::local_options(width = 75)
  expect_snapshot({
    fil <- tempfile("sumry")
    sink(file = fil)
    print.default(sumry(lm(Sepal.Length ~ Sepal.Width, data = iris)), width = 75)
    sink()
    lins <- readLines(fil)
    lins <- sub(".*nvironment.*", "", lins)
    cat(paste(lins, "\n"))
    file.remove(fil)
  })
})
test_that("sumry WARNS for identity regression", {
  withr::local_options(width = 80)
  expect_snapshot({
    fil <- tempfile("sumry")
    sink(file = fil)
    print.default(sumry(lm(Sepal.Length ~ Sepal.Length, data = iris)), width = 75)
    sink()
    lins <- readLines(fil)
    lins <- sub(".*nvironment.*", "", lins)
    cat(paste(lins, "\n"))
    file.remove(fil)
  })
})
test_that("print.sumry.lm WORKS", {
  withr::local_options(width = 80)
  expect_snapshot(print.sumry.lm(sumry(
    lm(Sepal.Length ~ Sepal.Width, data = iris)
  )))
  expect_snapshot(print.sumry.lm(sumry(lm(
    Sepal.Length ~ ., data = iris
  ))))
  expect_snapshot(print.sumry.lm(sumry(lm(
    hwy ~ displ + year + cyl + fl, data = ggplot2::mpg
  ))))
  expect_snapshot(print.sumry.lm(sumry(lm(
    hwy ~ displ + year + cyl * fl, data = ggplot2::mpg
  ))))
  expect_snapshot(print.sumry.lm(sumry(
    lm(hwy ~ displ + year + cyl + trans * fl, data = ggplot2::mpg)
  )))
  expect_snapshot
  (print.sumry.lm(sumry(
    lm(hwy ~ displ + year + cyl * trans * fl, data = ggplot2::mpg)
  )))

})
