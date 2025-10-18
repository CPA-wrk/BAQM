lm_plot.4way_cars_bld <- function(test_options) {
  withr::local_options(test_options)
  fit <- lm(mpg ~ wt + hp, data = mtcars)
  set.seed(123)
  lm_plot.test <-
    lm_plot.4way(mdl = fit,
                 opt = list(ts = FALSE,
                            pval.BP = TRUE,
                            pval.DW = TRUE,
                            pval.SW = TRUE))
  nms <- names(lm_plot.test)
  lm_plot.4way_cars <- lm_plot.test[nms[!nms %in% c("mdl", "plts", "p_4way")]]
  lm_plot.4way_cars
}
#
lm_plot.ac_longley_bld <- function(test_options) {
  withr::local_options(test_options)
  fit <- lm(GNP ~ ., data = longley[-1])
  set.seed(123)
  lm_plot.test <-
    lm_plot.ac(mdl = fit, opt = list(ts = TRUE, pval.DW = TRUE))
  nms <- names(lm_plot.test)
  lm_plot.ac_longley <- lm_plot.test[nms[!nms %in% c("mdl", "plts", "p_4way")]]
  lm_plot.ac_longley
}
#
lm_plot.df_longley_bld <- function(test_options) {
  withr::local_options(test_options)
  fit <- lm(GNP ~ ., data = longley[-1])
  set.seed(123)
  lm_plot.test <-
    lm_plot.df(mdl = fit)
  lm_plot.df_longley <- lm_plot.test
  lm_plot.df_longley
}
#
lm_plot.fit_cars_bld <- function(test_options) {
  withr::local_options(test_options)
  fit <- lm(mpg ~ wt + hp, data = mtcars)
  set.seed(123)
  lm_plot.test <-
    lm_plot.fit(mdl = fit)
  nms <- names(lm_plot.test)
  lm_plot.fit_cars <- lm_plot.test[nms[!nms %in% c("mdl", "plts", "p_4way")]]
  lm_plot.fit_cars
}
#
lm_plot.infl_cars_bld <- function(test_options) {
  withr::local_options(test_options)
  fit <- lm(mpg ~ wt + hp, data = mtcars)
  set.seed(123)
  lm_plot.test <-
    lm_plot.infl(mdl = fit)
  nms <- names(lm_plot.test)
  lm_plot.infl_cars <- lm_plot.test[nms[!nms %in% c("mdl", "plts", "p_4way")]]
  lm_plot.infl_cars
}
#
lm_plot.lev_cars_bld <- function(test_options) {
  withr::local_options(test_options)
  fit <- lm(mpg ~ wt + hp, data = mtcars)
  set.seed(123)
  lm_plot.test <-
    lm_plot.lev(mdl = fit, opt = list(cook.loess = TRUE))
  nms <- names(lm_plot.test)
  lm_plot.lev_cars <- lm_plot.test[nms[!nms %in% c("mdl", "plts", "p_4way")]]
  lm_plot.lev_cars
}
#
lm_plot.qq_cars_bld <- function(test_options) {
  withr::local_options(test_options)
  fit <- lm(formula = mpg ~ disp + drat, data = mtcars)
  set.seed(123)
  lm_plot.test <-
    lm_plot.qq(mdl = fit, opt = list(pval.SW = TRUE))
  nms <- names(lm_plot.test)
  lm_plot.qq_cars <- lm_plot.test[nms[!nms %in% c("mdl", "plts", "p_4way")]]
  lm_plot.qq_cars
}
#
lm_plot.var_cars_bld <- function(test_options) {
  withr::local_options(test_options)
  fit <- lm(formula = mpg ~ disp + drat, data = mtcars)
  set.seed(123)
  lm_plot.test <-
    lm_plot.var(mdl = fit, opt = list(pval.BP = TRUE))
  nms <- names(lm_plot.test)
  lm_plot.var_cars <- lm_plot.test[nms[!nms %in% c("mdl", "plts", "p_4way")]]
  lm_plot.var_cars
}








