print.default(sumry(lm(Sepal.Length ~ Sepal.Width, data = iris)))
print.default(sumry(lm(Sepal.Length ~ Sepal.Length, data = iris)))

print.sumry.lm(sumry(lm(Sepal.Length ~ Sepal.Width, data = iris)))


expect_snapshot(print.sumry.lm(sumry(lm(
  hwy ~ displ + year + cyl + fl, data = mpg
))))
expect_snapshot(print.sumry.lm(sumry(lm(
  hwy ~ displ + year + cyl * fl, data = mpg
))))
expect_snapshot(print.sumry.lm(sumry(
  lm(hwy ~ displ + year + cyl + trans * fl, data = mpg)
)))
expect_snapshot(print.sumry.lm(sumry(
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
lm_plot.lst <- lm_plot.4way(mdl)
lm_plot.lst$p_4way

infl <- influence.measures(mdl)

object <- mdl
sumry <- sumry.lm(mdl)
print.sumry.lm(sumry)

object <- lm(hwy ~ displ + year + cyl * fl, data = mpg)
sumry.lm(object)


object <- lm(hwy ~ displ + year + cyl + trans * fl, data = mpg)
sumry.lm(object)



## check of default printing of a complex object ----
fil <- tempfile("sumry")
sink(file = fil)
print.default((sumry(lm(
  Sepal.Length ~ Sepal.Width, data = iris
))), width = 75)
sink()
lins <- readLines(fil)
lins <- sub(".*nvironment.*", "", lins)
cat(paste(lins, "\n"))
file.remove(fil)
