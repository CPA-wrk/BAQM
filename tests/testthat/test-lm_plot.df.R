test_that("lm_plot.df produces expected augmented data frame for longley", {
  mdl <- lm(GNP ~ ., data = longley[-1])
  df <- lm_plot.df(mdl)
  case <-
    c(.id = "1951", .sequence = "5", .obs = "328.975", .fits = "320.933659983208",
      .resid = "8.04134001679231", .se.fit = "1.52835308928163", .lower.pi = "312.438373249374",
      .upper.pi = "329.428946717032", .std.resid = "2.56021372975148",
      .stud.resid = "4.13793437067065", .cooksd = "0.258668881310225",
      .hat = "0.191448040156637", .quantile = "1.86273186742165", .is.outl = "outl",
      .is.infl = "outl", .is.lev = "outl")
  expect_equal(unlist(df[5, ]), case)
})
