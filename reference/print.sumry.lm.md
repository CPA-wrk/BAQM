# Print a `sumry` Summarization for Linear Model Objects

Prints a comprehensive summary for objects of class `summary.lm` or
`lm`, including model statistics, ANOVA table, coefficients, and
optional tables (correlations, covariance, fits), followed by a
five-number summary of residuals and the model call.

## Usage

``` r
# S3 method for class 'sumry.lm'
print(
  x,
  ...,
  digits = max(5, getOption("digits") - 2),
  symbolic.cor = NULL,
  signif.stars = getOption("show.signif.stars"),
  options = NULL,
  na.print = "",
  eps = .Machine$double.eps
)
```

## Arguments

- x:

  An object of class `sumry.lm` or `lm`.

- ...:

  Additional arguments (not currently used).

- digits:

  Minimal number of significant digits. Defaults to
  `max(5, getOption("digits") - 2)`.

- symbolic.cor:

  Not implemented. Defaults to `NULL`.

- signif.stars:

  Logical; whether to show significance stars in the coefficients table.
  Defaults to `getOption("show.signif.stars")`.

- options:

  A character vector of optional summary tables to print (e.g.,
  `"v.correlation"`, `"cov.unscaled"`, `"correlation"`, `"fits"`).
  Printed in the given order if present.

- na.print:

  String to use for NA values in the tables.

- eps:

  Smallest positive floating-point value, used for formatting near-zero
  residuals. Defaults to `.Machine$double.eps`.

## Details

The function prints summary statistics, ANOVA, and coefficients tables
for a linear model in order, along with specified optional tables if
provided. It concludes with a five-number-plus-mean summary of residuals
and the model call. For objects not of class `sumry.lm`, a default print
method is used.

## See also

[`sumry.lm`](https://cpa-wrk.github.io/BAQM/reference/sumry.lm.md),
[`print.table.sumry.lm`](https://cpa-wrk.github.io/BAQM/reference/print.table.sumry.lm.md)

## Examples

``` r
mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
sumry(mdl)
#> 
#> Summary Statistics:
#>                  Value      Performance      Measure  Err(Resids)   Metric
#> Observations =     150      R-Squared =     0.013823       MAPE =  0.11751
#> F-Statistic =   2.0744      Adj-R2 =       0.0071593       MAD  =   0.6749
#> Pr(b's=0) =      0.152      Std.Err.Est =     0.8251       RMSE =  0.81958
#> 
#> Analysis of Variance:
#>                Deg.Frdm  Sum.of.Sqs  Mean.Sum.Sqs  F.statistic  p-value(F)    
#> Regression            1      1.4122       1.41224       2.0744       0.152    
#> Error(Resids)       148    100.7561       0.68078                             
#> Total               149    102.1683                                           
#> 
#> Coefficients:
#>              Coefficient  Std.Error   t-stat  p-value      VIF
#> (Intercept)      6.52622    0.47890  13.6276   <2e-16 ***     
#> Sepal.Width     -0.22336    0.15508  -1.4403    0.152         
#>                                                                      
#> Signif.Levels:  0 ‘***’ 0.001 ‘** ’ 0.01 ‘ * ’ 0.05 ‘ . ’ 0.1 ‘   ’ 1
#>                                                           
#> Summary of   Min     1Q    Median   Mean     3Q      Max  
#> Residuals: -1.556  -0.6333 -0.112  <3e-14  0.5579   2.223 
#>                                                             
#> Call:  lm(formula = Sepal.Length ~ Sepal.Width, data = iris)
sumry(mdl, options = c("correlation", "fits"))
#> 
#> Summary Statistics:
#>                  Value      Performance      Measure  Err(Resids)   Metric
#> Observations =     150      R-Squared =     0.013823       MAPE =  0.11751
#> F-Statistic =   2.0744      Adj-R2 =       0.0071593       MAD  =   0.6749
#> Pr(b's=0) =      0.152      Std.Err.Est =     0.8251       RMSE =  0.81958
#> 
#> Analysis of Variance:
#>                Deg.Frdm  Sum.of.Sqs  Mean.Sum.Sqs  F.statistic  p-value(F)    
#> Regression            1      1.4122       1.41224       2.0744       0.152    
#> Error(Resids)       148    100.7561       0.68078                             
#> Total               149    102.1683                                           
#> 
#> Coefficients:
#>              Coefficient  Std.Error   t-stat  p-value      VIF
#> (Intercept)      6.52622    0.47890  13.6276   <2e-16 ***     
#> Sepal.Width     -0.22336    0.15508  -1.4403    0.152         
#>                                                                      
#> Signif.Levels:  0 ‘***’ 0.001 ‘** ’ 0.01 ‘ * ’ 0.05 ‘ . ’ 0.1 ‘   ’ 1
#>                                                           
#> Summary of   Min     1Q    Median   Mean     3Q      Max  
#> Residuals: -1.556  -0.6333 -0.112  <3e-14  0.5579   2.223 
#>                                                             
#> Call:  lm(formula = Sepal.Length ~ Sepal.Width, data = iris)
```
