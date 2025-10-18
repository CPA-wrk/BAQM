# Testing code for stat_desc
test_options <- list(scipen = 0, digits = 4, width = 90)

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
test_that("Check printed results: mtcars numeric only", {
  withr::local_options(test_options)
  df.out <- testthat::capture_output_lines(
    df <- stat_desc(mtcars, pad = 1))
  # dump("df.out", file = "")
  df.txt <- c(
    "          mpg   cyl  disp    hp   drat     wt  qsec     vs     am   gear  carb",
    "n.val      32    32    32    32     32     32    32     32     32     32    32",
    "n.na        0     0     0     0      0      0     0      0      0      0     0",
    "min      10.4     4  71.1    52   2.76  1.513  14.5      0      0      3     1",
    "Q1       15.2     4 120.7    95   3.08  2.542 16.88     NA     NA      3     1",
    "median   19.2     6 196.3   123  3.695  3.325 17.71      0      0      4     2",
    "mean    20.09 6.188 230.7 146.7  3.597  3.217 17.85 0.4375 0.4062  3.688 2.812",
    "Q3       22.8     8   334   180   3.92   3.65  18.9      1      1      5     4",
    "max      33.9     8   472   335   4.93  5.424  22.9      1      1      5     8",
    "std.dev 6.027 1.786 123.9 68.56 0.5347 0.9785 1.787  0.504  0.499 0.7378 1.615"
  )
  expect_equal(df.out, df.txt)
})
#
test_that("Check printed results: penguins mixed types, and transpose", {
  withr::local_options(test_options)
  df.out <- testthat::capture_output_lines(
    df <- stat_desc(penguins, pad = 1, transpose = TRUE))
  # dump("df.out", file = "")
  df.txt <- c(
    "            n.val n.na      min       Q1   median     mean   Q3  max std.dev",
    "species       344    0 n.lvls=3 Adel:152 Gent:124 Chns: 68                  ",
    "island        344    0 n.lvls=3 Bisc:168 Drem:124 Trgr: 52                  ",
    "bill_len      342    2     32.1     39.2    44.45    43.92 48.5 59.6    5.46",
    "bill_dep      342    2     13.1    15.45     17.3    17.15 18.7 21.5   1.975",
    "flipper_len   342    2      172      190      197    200.9  214  231   14.06",
    "body_mass     342    2     2700     3550     4050     4202 4800 6300     802",
    "sex           333   11 n.lvls=2 male:168 feml:165                           ",
    "year          344    0     2007     2007     2008     2008 2009 2009  0.8184"
  )
  expect_equal(df.out, df.txt)
})
#
test_that("Check printed results: vector, and transpose", {
  withr::local_options(test_options)
  df.out <- testthat::capture_output_lines(
    df <- stat_desc(1:10, transpose = TRUE))
  # dump("df.out", file = "")
  df.txt <- c(
    "    n.val  n.na  min  Q1  median  mean  Q3  max  std.dev",
    "V1     10     0    1   3     5.5   5.5   8   10    3.028"
  )
  expect_equal(df.out, df.txt)
})

