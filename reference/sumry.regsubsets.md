# Summary for Subset Selection (`regsubsets`) Objects

Generates a BAQM summary for objects of class `regsubsets` (from the
`leaps` package), showing model selection statistics for best subsets,
including R-squared, adjusted R-squared, standard error of estimate,
Mallows' Cp, and AIC.

## Usage

``` r
# S3 method for class 'regsubsets'
sumry(x, ...)
```

## Arguments

- x:

  An object of class `regsubsets`.

- ...:

  Additional arguments (not currently used).

## Value

Returns a matrix containing a summary table for the best subsets
analysis. Each row summarizes a model showing: the number of predictors,
`k`, used; "which best" that model is for that `k`; performance
statistics (see above); and a series of columns with asterisks
indicating the specific predictors included in the model.

## Details

The function formats a table summarizing the best models selected,
including the number of predictors, R-squared, adjusted R-squared,
standard error of estimate (SEE), Mallows' Cp, and included variables.
It is first converted to a summary.regsubsets with
[`summary()`](https://rdrr.io/r/base/summary.html). If not, the object
is returned unmodified.

## See also

[`regsubsets`](https://rdrr.io/pkg/leaps/man/regsubsets.html),
[`print.sumry.regsubsets`](https://cpa-wrk.github.io/BAQM/reference/print.sumry.regsubsets.md)

## Examples

``` r
fit <- leaps::regsubsets(Fertility ~ ., data = swiss, nbest = 3)
summary.regsubsets(fit)
#> Error in summary.regsubsets(fit): could not find function "summary.regsubsets"
```
