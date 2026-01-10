# Method `sumry` to Summarize Linear Model (`lm`) Objects

Computes a comprehensive summary for an object of class `lm`, including
performance statistics, ANOVA, coefficients with VIFs, and
correlation/covariance tables. Handles factor variable recoding and
collinearity/singularity warnings.

## Usage

``` r
# S3 method for class 'lm'
sumry(x, ...)
```

## Arguments

- x:

  An object of class `lm`.

- ...:

  Additional arguments (currently unused).

## Value

An object of class `sumry.lm` containing tables and statistics described
above.

## Details

The returned `sumry` object includes:

- **stats**: Performance statistics (F-statistic, R-squared, RMSE, etc.)

- **anova**: Simplified ANOVA table (Sum of squares, mean squares,
  F-statistic, p-value)

- **coefficients**: Table of regression coefficients with standard
  errors, t-stats, p-values, and VIFs

- **cov.unscaled**, **correlation**: Covariance and correlation matrices
  for coefficients

- **v.correlation**: Variable correlation matrix (for models with
  interaction terms)

- **fits**: Observed, fitted, and residual values

- **aliased**: Logical vector indicating aliased coefficients

- **df**: Degrees of freedom

- **sigma**: Estimated standard deviation of residuals

- **r.squared**, **adj.r.squared**: R-squared and adjusted R-squared

- **fstatistic**, **f.pval**: F-statistic and p-value for overall
  regression

- **notes**: Warnings, singularity, and collinearity notes (attached as
  attribute)

Factor variable names are recoded for clarity, and coefficients for
aliased or singular variables are omitted with notes produced as
attributes.

## See also

[`print.sumry.lm`](https://cpa-wrk.github.io/BAQM/reference/print.sumry.lm.md),
[`lm`](https://rdrr.io/r/stats/lm.html)

## Examples

``` r
mdl <- lm(Sepal.Length ~ Sepal.Width + Petal.Length, data = iris)
sumry(mdl)
#> 
#> Summary Statistics:
#>                  Value      Performance    Measure  Err(Resids)    Metric
#> Observations =     150      R-Squared =    0.84018       MAPE =  0.045172
#> F-Statistic =   386.39      Adj-R2 =        0.8380       MAD  =   0.26563
#> Pr(b's=0) =     <2e-16 ***  Std.Err.Est =  0.33329       RMSE =   0.32994
#> 
#> Analysis of Variance:
#>                Deg.Frdm  Sum.of.Sqs  Mean.Sum.Sqs  F.statistic  p-value(F)    
#> Regression            2      85.840      42.91978       386.39      <2e-16 ***
#> Error(Resids)       147      16.329       0.11108                             
#> Total               149     102.168                                           
#> 
#> Coefficients:
#>               Coefficient  Std.Error   t-stat   p-value         VIF
#> (Intercept)       2.24914   0.247970   9.0702  7.04e-16 ***        
#> Sepal.Width       0.59552   0.069328   8.5899  1.16e-14 ***  1.2248
#> Petal.Length      0.47192   0.017118  27.5692   < 2e-16 ***  1.2248
#>                                                                      
#> Signif.Levels:  0 ‘***’ 0.001 ‘** ’ 0.01 ‘ * ’ 0.05 ‘ . ’ 0.1 ‘   ’ 1
#>                                                                       
#> Summary of    Min       1Q       Mean     Median      3Q        Max   
#> Residuals:  -0.9616   -0.2349   <3e-14   0.0007718  0.2145    0.7856  
#>                                                                            
#> Call:  lm(formula = Sepal.Length ~ Sepal.Width + Petal.Length, data = iris)
```
