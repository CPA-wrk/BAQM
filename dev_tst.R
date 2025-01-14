object <- lm(Sepal.Length ~ Sepal.Width, data = iris)
sumry(lm(Sepal.Length ~ Sepal.Width, data = iris))
dump("sumry.sepal_1.out", file = "sumry.sepal_1.out.R")

mdl <- lm(hwy ~ displ + year + cyl + fl, data = mpg)
object <- mdl
sumry <- sumry.lm(mdl)
print.sumry.lm(sumry)

object <- lm(hwy ~ displ + year + cyl * fl, data = mpg)
sumry.lm(object)


object <- lm(hwy ~ displ + year + cyl + trans * fl, data = mpg)
sumry.lm(object)
