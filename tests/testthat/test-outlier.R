test_that("outlier detects outliers correctly and handles NA", {
  # Simple case with obvious outliers
  x <- c(1:10, 100, -100)
  expect_equal(outlier(x), c(rep(FALSE, 10), TRUE, TRUE))

  # Case with NAs
  x_na <- c(1:10, NA, 100, -100)
  expect_equal(outlier(x_na), c(rep(FALSE, 10), NA, TRUE, TRUE))

  # rpt = TRUE returns correct upper amd lower fences (enclosing 99.3% of norm)
  x <- stats::qnorm(1:999 / 1000)
  lims <- outlier(x, rpt = TRUE)
  abs(sum(x > lims[1] & x < lims[2]) / length(x))
  expect_length(lims, 2)
  expect_true(lims[1] > min(x) && lims[2] < max(x))
  expect_equal(round(lims, 7), c(lower = -2.6916719, upper = 2.6916719))

  # No outliers in an interval range
  y <- 1:10
  expect_false(any(outlier(y), na.rm = TRUE))

  # Edge case: all NAs
  expect_true(all(is.na(outlier(rep(NA_real_, 5)))))
})
