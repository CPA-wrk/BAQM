test_options <- list(scipen = 2, digits = 6, width = 90, max.print = 10000)

test_that("lm_plot.ac produces expected plot graphics for longley", {
  withr::local_options(test_options)
  fit <- lm(GNP ~ ., data = longley[-1])
  set.seed(123)
  lm_plot.ac_longley <-
    lm_plot.ac(mdl = fit, opt = list(ts = TRUE, pval.DW = TRUE))
  vdiffr::expect_doppelganger(
    title = "lm-plot-ac-longley",
    fig = lm_plot.ac_longley$plts$ac)
})

test_that("lm_plot.ac produces expected plot elements for longley", {
  withr::local_options(test_options)
  fit <- lm(GNP ~ ., data = longley[-1])
  # Delete plot graphics and mdl from output for test
  lm_plot.ac_longley.out <- list()
  set.seed(123)
  lm_plot.ac_longley <-
    lm_plot.ac(mdl = fit, opt = list(ts = TRUE, pval.DW = TRUE))
  nms <- names(lm_plot.ac_longley)
  for (nm in nms[!nms %in% c("mdl", "plts", "p_4way")]) {
    lm_plot.ac_longley.out[[nm]] <-
      testthat::capture_output_lines(print(lm_plot.ac_longley[[nm]]))
  }
  # lm_plot.ac_longley.txt <- lm_plot.ac_longley.out
  # dump("lm_plot.ac_longley.txt", file = "chk/lm_plot.ac_longley.txt")
  lm_plot.ac_longley.txt <- list(
    opt = c("$ts", "[1] TRUE", "", "$pval.DW", "[1] TRUE", ""),
    parm = c("$pts", "$pts$symsz", "[1] 1.5", "", "$pts$lblsz",
             "[1] 2.25", "", "$pts$shape", "$pts$shape$reg", "[1] \"circle\"",
             "", "$pts$shape$outl", "[1] \"circle open\"", "", "$pts$shape$cook",
             "[1] \"square open\"", "", "", "$pts$colr", "$pts$colr$reg",
             "[1] \"black\"", "", "$pts$colr$outl", "[1] \"red\"", "", "$pts$colr$cook",
             "[1] \"green4\"", "", "$pts$colr$infl", "[1] \"green4\"", "",
             "", "$pts$id", "$pts$id$reg", "[1] FALSE", "", "$pts$id$outl",
             "[1] TRUE", "", "$pts$id$cook", "[1] TRUE", "", "$pts$id$infl",
             "[1] TRUE", "", "", "$pts$offp", "$pts$offp$infl", "[1] 0.01",
             "", "", "", "$lins", "$lins$size", "[1] 0.5", "", "$lins$size_lg",
             "[1] 1", "", "$lins$notesz", "[1] 3.5", "", "$lins$ltyp", "$lins$ltyp$fit",
             "[1] \"solid\"", "", "$lins$ltyp$pi", "[1] \"dashed\"", "", "$lins$ltyp$qq",
             "[1] \"solid\"", "", "$lins$ltyp$var", "[1] \"dashed\"", "",
             "$lins$ltyp$ac", "[1] \"solid\"", "", "$lins$ltyp$lev", "[1] \"dotted\"",
             "", "$lins$ltyp$infl", "[1] \"dotted\"", "", "$lins$ltyp$cook",
             "[1] \"dotted\"", "", "", "$lins$colr", "$lins$colr$fit", "[1] \"orange\"",
             "", "$lins$colr$qq", "[1] \"dodgerblue\"", "", "$lins$colr$var",
             "[1] \"purple\"", "", "$lins$colr$ac", "[1] \"green4\"", "",
             "$lins$colr$lev", "[1] \"green4\"", "", "$lins$colr$infl", "[1] \"green4\"",
             "", "$lins$colr$cook", "[1] \"gray70\"", "", "", "", "$seed",
             "$seed$ac", "$seed$ac$outl", "[1] 123", "", "$seed$ac$reg", "[1] 123",
             "", "", "$seed$fit", "$seed$fit$outl", "[1] 123", "", "$seed$fit$reg",
             "[1] 123", "", "", "$seed$infl", "$seed$infl$infl", "[1] 123",
             "", "$seed$infl$outl", "[1] 123", "", "$seed$infl$reg", "[1] 123",
             "", "", "$seed$lev", "$seed$lev$lev", "[1] 123", "", "$seed$lev$outl",
             "[1] 123", "", "$seed$lev$reg", "[1] 123", "", "", "$seed$qq",
             "$seed$qq$outl", "[1] 123", "", "$seed$qq$reg", "[1] 123", "",
             "", "$seed$var", "$seed$var$outl", "[1] 123", "", "$seed$var$reg",
             "[1] 123", "", "", "", "$cook", "$cook$n", "[1] 100", "", "$cook$level",
             "[1] 0.5 1.0", "", "", "$xtrem", "$xtrem$infl", "$xtrem$infl$meas",
             "[1] \".cooksd\"", "", "$xtrem$infl$thrshld", "[1] 0.954357",
             "", "", "$xtrem$lev", "$xtrem$lev$meas", "[1] \".hat\"", "",
             "$xtrem$lev$thrshld", "[1] 0.75", "", "", "$xtrem$outl", "$xtrem$outl$meas",
             "[1] \"boxplot\"", "", "$xtrem$outl$thrshld", "[1] 1.5", "",
             "", "", "$ac", "$ac$lim", "     x        y", "min  1 -4.35663",
             "max 16  8.04134", "", "$ac$DW", "", "\tDurbin-Watson test",
             "", "data:  mdl", "DW = 2, p-value = 0.165",
             "alternative hypothesis: true autocorrelation is greater than 0",
             "", "", ""),
    df = c("      .id .sequence    .obs   .fits    .resid .se.fit .lower.pi .upper.pi",
           "1947 1947         1 234.289 234.784 -0.495419 2.41969   225.317   244.252",
           "1948 1948         2 259.426 258.502  0.924269 2.15726   249.354   267.649",
           "1949 1949         3 258.054 258.555 -0.501178 2.10088   249.473   267.637",
           "1950 1950         4 284.599 287.088 -2.488700 2.22193   277.864   296.312",
           "1951 1951         5 328.975 320.934  8.041340 1.52835   312.438   329.429",
           "1952 1952         6 346.999 345.588  1.411014 2.26889   336.307   354.869",
           "1953 1953         7 365.385 369.742 -4.356629 1.93907   360.840   378.643",
           "1954 1954         8 363.112 365.902 -2.790471 2.31668   356.563   375.242",
           "1955 1955         9 397.469 398.524 -1.054868 1.27924   390.235   406.812",
           "1956 1956        10 419.180 420.103 -0.922953 2.59797   410.403   429.803",
           "1957 1957        11 442.769 444.925 -2.155757 1.68833   436.280   453.569",
           "1958 1958        12 444.546 443.411  1.135230 2.08727   434.344   452.477",
           "1959 1959        13 482.704 480.169  2.535045 2.03408   471.163   489.175",
           "1960 1960        14 502.601 503.050 -0.448790 1.67440   494.419   511.681",
           "1961 1961        15 518.173 515.881  2.291898 2.38588   506.456   525.306",
           "1962 1962        16 554.894 556.018 -1.124029 2.91712   545.878   566.158",
           "     .std.resid .stud.resid    .cooksd     .hat  .quantile .is.outl .is.infl",
           "1947  -0.196661   -0.186931 0.00594694 0.479868  0.0784124      reg      reg",
           "1948   0.336437    0.320994 0.01163254 0.381426  0.4022501      reg      reg",
           "1949  -0.179596   -0.170655 0.00304689 0.361748 -0.0784124      reg      reg",
           "1950  -0.923386   -0.915919 0.09658269 0.404637 -1.0099902      reg      reg",
           "1951   2.560214    4.137934 0.25866888 0.191448  1.8627319     outl     outl",
           "1952   0.531299    0.511302 0.03433742 0.421919  0.7764218      reg      reg",
           "1953  -1.499521   -1.615781 0.16693365 0.308170 -1.8627319      reg      reg",
           "1954  -1.067428   -1.075793 0.14913504 0.439880 -1.3180109      reg      reg",
           "1955  -0.324543   -0.309523 0.00271922 0.134124 -0.4022501      reg      reg",
           "1956  -0.395292   -0.377972 0.03224256 0.553186 -0.2372021      reg      reg",
           "1957  -0.704986   -0.686075 0.02525127 0.233623 -0.7764218      reg      reg",
           "1958   0.405327    0.387725 0.01520751 0.357075  0.5791322      reg      reg",
           "1959   0.892735    0.882833 0.06815590 0.339109  1.3180109      reg      reg",
           "1960  -0.146399   -0.139036 0.00106569 0.229784  0.2372021      reg      reg",
           "1961   0.898362    0.888884 0.11764138 0.466553  1.0099902      reg      reg",
           "1962  -0.585033   -0.564761 0.13150005 0.697450 -0.5791322      reg      reg",
           "     .is.lev", "1947     reg", "1948     reg", "1949     reg",
           "1950     reg", "1951    outl", "1952     reg", "1953     reg",
           "1954     reg", "1955     reg", "1956     reg", "1957     reg",
           "1958     reg", "1959     reg", "1960     reg", "1961     reg",
           "1962     reg"))
  expect_equal(lm_plot.ac_longley.out, lm_plot.ac_longley.txt)
})
