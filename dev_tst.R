# dev_tst.R
#### Example code for testing BAQM package readme ####
stat_desc(swiss)
names(swiss) <- substr(names(swiss), 1, 4) # Narrows output
regs <- leaps::regsubsets(Fert ~ ., data = swiss, nbest = 3)
summary(regs)
stat_desc(iris) # Includes non-numeric variable
mdl <- lm(Sepal.Length ~ ., data = iris)
summary(mdl)
lm_plot.4way(mdl)
#### End of example ####

### test-summary.lm.R ###
# Snapshot tests for custom summary.lm method
# library(testthat)

test_that("summary.lm: reporting simple regression (iris)", {
  mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
  sumry <- summary.lm(mdl)
  expect_snapshot(sumry)
})

test_that("summary.lm: reporting regression with numeric and faactor variables", {
  mdl <- lm(Sepal.Length ~ ., data = iris)
  sumry <- summary.lm(mdl)
  expect_snapshot(sumry)
})

test_that("summary.lm: regression with interaction term", {
  mdl <- lm(Sepal.Length ~ Sepal.Width + Petal.Width * Petal.Length, data = iris)
  sumry <- summary.lm(mdl)
  expect_snapshot(sumry)
})
### End of test-summary.lm.R ###


test_options <- list(scipen = 2, digits = 6, width = 80)




print.default(summary(lm(Sepal.Length ~ Sepal.Width, data = iris)))
print.default(summary(lm(Sepal.Length ~ Sepal.Length, data = iris)))

print.summary.lm(summary(lm(Sepal.Length ~ Sepal.Width, data = iris)))

mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
summary.lm(mdl)

expect_snapshot(
  print.summary.lm(summary(lm(hwy ~ displ + year + cyl + fl, data = mpg)))
)

expect_snapshot(print.summary.lm(summary(lm(
  hwy ~ displ + year + cyl + fl, data = mpg
))))
expect_snapshot(print.summary.lm(summary(lm(
  hwy ~ displ + year + cyl * fl, data = mpg
))))
expect_snapshot(print.summary.lm(summary(
  lm(hwy ~ displ + year + cyl + trans * fl, data = mpg)
)))
expect_snapshot(print.summary.lm(summary(
  lm(hwy ~ displ + year + cyl * trans * fl, data = mpg)
)))


mdl <- lm(Sepal.Length ~ Sepal.Width + Petal.Length, data = iris)
rslt <- lm_plot.infl(mdl)

mdl <- lm(hwy ~ displ + year + cyl + fl, data = mpg)

mdl <- lm(hwy ~  year + cyl * fl, data = mpg)

ql <- quantile(df$.resid, c(0.25, 0, 0.75))
outl.lim <- ql[c(1, 3)] + c(-1.5, 1.5) * (ql[3] - ql[1])
which(df$.resid < outl.lim[1] | df$.resid > outl.lim[2])


lm_plot.lst <- lm_plot.4way(mdl)
lm_plot.lst$p_4way


mdl <- lm(Sepal.Length ~ Sepal.Width + Petal.Length + Species, data = iris)

mdl <- lm(Sepal.Length ~ Sepal.Width + Petal.Length, data = iris)
lm_plot.4way <- lm_plot.4way(mdl)
lm_plot.4way

infl <- influence.measures(mdl)

object <- mdl
summary <- summary.lm(mdl)
print.summary.lm(summary)

object <- lm(hwy ~ displ + year + cyl * fl, data = mpg)
summary.lm(object)


object <- lm(hwy ~ displ + year + cyl + trans * fl, data = mpg)
summary.lm(object)


stat_desc(airquality)




## check of default printing of a complex object ----
fil <- tempfile("summary")
sink(file = fil)
print(summary(lm(
  Sepal.Length ~ Sepal.Width, data = iris
)), width = 75)
sink()
lins <- readLines(fil)
lins <- sub(".*nvironment.*", "", lins)
cat(paste(lins, "\n"))
file.remove(fil)



## build file with all scripts for AI documentation ----
fil_out <- "BAQM_all.R"
fils <- list.files("R")
fils <- fils[!fils %in% c(".DS_Store", "utils.R")]
for (fil in fils) {
  fil_in <- file.path("R", fil)
  if (file.exists(fil_in)) {
    cat(paste0("# ", fil, "\n"), file = fil_out, append = TRUE)
    cat(paste0(readLines(fil_in), "\n"), file = fil_out, append = TRUE)
    cat("\n\n", file = fil_out, append = TRUE)
  }
}





