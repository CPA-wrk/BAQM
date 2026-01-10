# Plot Observed vs. Fitted Values to Check Linearity

Generates a scatter plot of fitted values versus observed values from a
linear model, with optional prediction intervals and identification of
outlier points. The plot includes a reference line `y = x` for assessing
linearity.

## Usage

``` r
lm_plot.fit(
  mdl,
  ...,
  pred.intvl = TRUE,
  parm = list(),
  df = lm_plot.df(mdl),
  plts = list()
)
```

## Arguments

- mdl:

  A fitted model object (typically from
  [`lm`](https://rdrr.io/r/stats/lm.html)).

- ...:

  Additional arguments (not currently used).

- pred.intvl:

  List of options, where `pred_intvl_pts` (numeric, default = 100) is
  used for prediction interval bounds of fitted values (0 to skip).

- parm:

  List of plotting parameters, usually from
  [`lm_plot.parms()`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.parms.md).

- df:

  Data frame with augmented model data. Defaults to `lm_plot.df(mdl)`.

- plts:

  List of ggplot objects to which this plot will be added.

## Value

A list containing:

- `mdl` Fitted model object,

- `pred.intvl` Options used, including `pred_intvl_pts`,

- `parm` Parameter list with autocorrelation test results added,

- `df` Data frame used for plotting,

- `plts` List of ggplot objects, including the `$fit` element.

## Details

The plot visualizes fitted versus observed values, includes a diagonal
reference line, marks outliers, and can optionally display
loess-smoothed prediction intervals. Outlier and regular points can be
labeled. This plot is useful for visually assessing linearity and model
fit quality.

## See also

[`lm_plot.df`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.df.md),
[`lm_plot.parms`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.parms.md)

## Examples

``` r
mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
result <- lm_plot.fit(mdl)
print(result$plts$fit)
```
