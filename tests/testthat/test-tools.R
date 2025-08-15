# test-tools.R -- testthat unit tests for general purpose tools
test_options <- list(scipen = 2, digits = 6, width = 80)

test_that("char2dt converts MM/DD/YYYY to Date", {
  expect_equal(char2dt("12/31/2024"), as.Date("2024-12-31"))
})

test_that("char2dt falls back for other date formats", {
  # This will use as.Date directly
  expect_equal(char2dt("2025-01-01"), as.Date("2025-01-01"))
})

test_that("dt2xlseq converts Date to Excel serial", {
  expect_equal(as.numeric(dt2xlseq(as.Date("1970-01-01"))), 25569)
})

test_that("is.ok works for NULL, list, numeric, and NA", {
  expect_false(is.ok(NULL))
  expect_true(is.ok(list(1, NA)))
  expect_false(is.ok(list(NA, NA)))
  expect_true(is.ok(c(1, 2, NA)))
  expect_false(is.ok(c(NA, NA)))
})

test_that("if.ok returns x or default", {
  expect_equal(if.ok(NA, "default"), "default")
  expect_equal(if.ok(1, "default"), 1)
  expect_equal(if.ok(list(NA, NA), "default"), "default")
  expect_equal(if.ok(list(1, NA), "default"), list(1, NA))
})

test_that("if.na replaces NA", {
  expect_equal(if.na(c(1, NA), 0), c(1, 0))
})

test_that("if.blank replaces blanks", {
  expect_equal(if.blank(c("a", "", NA), "x"), c("a", "x", "x"))
})

test_that("pr adds comma as big.mark", {
  expect_equal(pr(10000), "10,000")
})

test_that("attrs_get gets only user attrs", {
  x <- structure(1, foo="bar", class="baz", names="y")
  expect_equal(attrs_get(x), list(foo="bar"))
})

test_that("attrs_add adds or replaces attributes", {
  x <- 1
  y <- attrs_add(x, list(test="val"))
  expect_equal(attr(y, "test"), "val")
})

test_that("hd returns n rows", {
  df <- data.frame(a=1:50)
  expect_equal(nrow(hd(df, 10)), 10)
})

test_that("%of% and %notof% filter items", {
  expect_equal(c(1,2,3) %of% c(2,3,4), c(2,3))
  expect_equal(c(1,2,3) %notof% c(2,3,4), 1)
})

test_that("rpt_space works as expected", {
  expect_equal(rpt_space(c(1,15,3), 15), c(1+3+1, 1, 0))
  expect_equal(rpt_space(c(1,14,3), 15), c(1,14,3))
})

test_that("trim removes leading and trailing spaces", {
  expect_equal(trim("  hello  "), "hello")
  expect_equal(trim("world"), "world")
})

test_that("file_ext, file_lname, and file_split work", {
  expect_equal(file_ext("foo.bar"), file_split("foo.bar", 2, "."))
  expect_equal(file_lname("dir/foo"), file_split("dir/foo", 2, "/"))
  expect_equal(file_split("foo.bar.baz", 2, "."), c("baz", "foo.bar"))
})

test_that("permute computes nPk", {
  expect_equal(permute(5, 3), choose(5,3)*factorial(3))
})

test_that("outlier flags outliers", {
  x <- c(1,2,3,4,100)
  out <- outlier(x)
  expect_true(out[5])
  expect_false(out[1])
  lims <- outlier(x, rpt=TRUE)
  expect_length(lims, 2)
})
