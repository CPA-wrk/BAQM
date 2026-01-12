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
sumry(fit)
#>                        
#> Call: eval(expr, envir)
#>    _k_i.best    rsq  adjr2       see    cp Agriculture Examination Education
#> 1   1  ( 1 ) 0.4406 0.4282  9.446029 35.20                                 *
#> 2   1  ( 2 ) 0.4172 0.4042  9.642000 38.48                       *          
#> 3   1  ( 3 ) 0.2150 0.1976 11.189945 66.75                                  
#> 4   2  ( 1 ) 0.5745 0.5552  8.331442 18.49                                 *
#> 5   2  ( 2 ) 0.5648 0.5450  8.426136 19.85                                 *
#> 6   2  ( 3 ) 0.5363 0.5152  8.697447 23.83                       *          
#> 7   3  ( 1 ) 0.6625 0.6390  7.505417  8.18                                 *
#> 8   3  ( 2 ) 0.6423 0.6173  7.727757 11.01           *                     *
#> 9   3  ( 3 ) 0.6191 0.5925  7.973957 14.25                       *         *
#> 10  4  ( 1 ) 0.6993 0.6707  7.168166  5.03           *                     *
#> 11  4  ( 2 ) 0.6639 0.6319  7.579356  9.99                       *         *
#> 12  4  ( 3 ) 0.6498 0.6164  7.736422 11.96           *           *         *
#> 13  5  ( 1 ) 0.7067 0.6710  7.165369  6.00           *           *         *
#>    Catholic Infant.Mortality
#> 1                           
#> 2                           
#> 3         *                 
#> 4         *                 
#> 5                          *
#> 6                          *
#> 7         *                *
#> 8         *                 
#> 9                          *
#> 10        *                *
#> 11        *                *
#> 12        *                 
#> 13        *                *
```
