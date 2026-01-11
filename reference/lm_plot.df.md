# Augment Model Data for Diagnostic Plots

Generates an augmented data frame from a linear model object, including
fitted values, residuals, leverage, Cook's distance, prediction
intervals, and outlier/influence flags. This function prepares model
diagnostics for plotting.

## Usage

``` r
lm_plot.df(mdl, parms = lm_plot.parms(mdl))
```

## Arguments

- mdl:

  An object of class `lm`, representing the fitted linear model.

- parms:

  List of plotting parameters, usually from
  [`lm_plot.parms()`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.parms.md).

## Value

A data frame with augmented diagnostic variables, one row per
observation.

## Details

The returned data frame contains key statistics for each observation:

- `.id`: Observation identifier

- `.sequence`: Sequence index

- `.obs`: Observed values

- `.fits`: Fitted/predicted values

- `.resid`: Residuals

- `.se.fit`: Estimated standard error of fitted (mean) value

- `.lower.pi`: Lower bound on 95% prediction interval of fitted value

- `.upper.pi`: Upper bound on 95% prediction interval of fitted value

- `.std.resid`: Standardized residuals

- `.stud.resid`: Studentized residuals

- `.cooksd`: Cook's distance

- `.hat`: Leverage (diagonal of the hat matrix)

- `.quantile`: Theoretical normal quantile of residuals

- `.is.outl`: Flag for residual outlier ("outl" or "reg")

- `.is.infl`: Flag for influential point ("infl" or "outl" or "reg")

- `.is.lev`: Flag for high leverage point ("lev" or "infl" or "reg")

## See also

[`influence`](https://rdrr.io/r/stats/lm.influence.html),
[`influence.measures`](https://rdrr.io/r/stats/influence.measures.html),
[`rstandard`](https://rdrr.io/r/stats/influence.measures.html),
[`rstudent`](https://rdrr.io/r/stats/influence.measures.html),
[`outlier`](https://cpa-wrk.github.io/BAQM/reference/outlier.md)

## Examples

``` r
mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
df <- lm_plot.df(mdl)
head(df)
#>   .id .sequence .obs    .fits     .resid    .se.fit .lower.pi .upper.pi
#> 1   1         1  5.1 5.744459 -0.6444588 0.09618352  4.102926  7.385992
#> 2   2         2  4.9 5.856139 -0.9561394 0.06795306  4.220127  7.492152
#> 3   3         3  4.7 5.811467 -1.1114672 0.07090891  4.174965  7.447969
#> 4   4         4  4.6 5.833803 -1.2338033 0.06769302  4.197833  7.469773
#> 5   5         5  5.0 5.722123 -0.7221227 0.10780077  4.077773  7.366472
#> 6   6         6  5.4 5.655114 -0.2551144 0.14702457  3.998939  7.311290
#>   .std.resid .stud.resid     .cooksd        .hat  .quantile .is.outl .is.infl
#> 1 -0.7864325  -0.7854139 0.004260169 0.013589132 -0.6744898      reg      reg
#> 2 -1.1627712  -1.1641660 0.004616605 0.006782791 -1.0954185      reg      reg
#> 3 -1.3520774  -1.3559020 0.006801185 0.007385705 -1.5273795      reg      reg
#> 4 -1.5004021  -1.5068286 0.007627752 0.006730978 -1.7907506      reg      reg
#> 5 -0.8827646  -0.8821026 0.006766613 0.017070023 -0.7609839      reg      reg
#> 6 -0.3142222  -0.3132634 0.001618927 0.031751938 -0.2104284      reg      reg
#>   .is.lev
#> 1     reg
#> 2     reg
#> 3     reg
#> 4     reg
#> 5     reg
#> 6     lev
```
