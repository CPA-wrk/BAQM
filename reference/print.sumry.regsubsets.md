# Print Method for Best Subset Selection (`regsubsets`) Objects

Prints a summary for objects of class `summary.regsubsets` or
`regsubsets` (from the `leaps` package), showing model selection
statistics for best subsets, including R-squared, adjusted R-squared,
standard error of estimate, Mallows' Cp, and AIC.

## Usage

``` r
# S3 method for class 'sumry.regsubsets'
print(x, ...)
```

## Arguments

- x:

  An object of class `summary.regsubsets` or `regsubsets`.

- ...:

  Additional arguments (not currently used).

## Value

Invisibly return the object printed.

## Details

The function prints the model call and a table summarizing the best
models selected, including the number of predictors, R-squared, adjusted
R-squared, standard error of estimate (SEE), Mallows' Cp, and included
variables. If the input is a `regsubsets` object, it is converted with
[`sumry()`](https://cpa-wrk.github.io/BAQM/reference/sumry.md). If not,
the object is returned unmodified.

## See also

[`regsubsets`](https://rdrr.io/pkg/leaps/man/regsubsets.html),
[`sumry.regsubsets`](https://cpa-wrk.github.io/BAQM/reference/sumry.regsubsets.md)

## Examples

``` r
fit <- leaps::regsubsets(Fertility ~ ., data = swiss, nbest = 3)
print.sumry.regsubsets(fit)
#> Error in print.sumry.regsubsets(fit): could not find function "print.sumry.regsubsets"
```
