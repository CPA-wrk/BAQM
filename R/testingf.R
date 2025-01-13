
mdl <- lm(hwy ~ displ + year + cyl + fl, data = mpg)
object <- mdl
sumry <- sumry.lm(mdl)
print.sumry.lm(sumry)

object <- lm(hwy ~ displ + year + cyl * fl, data = mpg)
sumry.lm(object)


object <- lm(hwy ~ displ + year + cyl + trans * fl, data = mpg)
sumry.lm(object)
