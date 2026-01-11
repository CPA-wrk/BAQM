# Plot Standard Residuals vs. Leverage with Cook's Distance Contours

Creates a plot of standard residuals versus leverage values, including
Cook's distance contours to visualize influential observations.

## Usage

``` r
lm_plot.lev(
  mdl,
  ...,
  cook.loess = FALSE,
  parms = lm_plot.parms(mdl),
  df = lm_plot.df(mdl, parms = parms)
)
```

## Arguments

- mdl:

  A fitted model object (typically from
  [`lm`](https://rdrr.io/r/stats/lm.html)).

- ...:

  Additional arguments (not currently used).

- cook.loess:

  Option (logical, default = FALSE) indicates whether to show loess
  curve for Cook's distances on the plot.

- parms:

  List of plotting parameters, usually from
  [`lm_plot.parms()`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.parms.md).

- df:

  Data frame with augmented model data. Defaults to `lm_plot.df(mdl)`.

## Value

A `ggplot` object representing the standardized residuals vs leverage
plot. Included as an attribute `"parms"` is a list containing:

- `lim` Plotted limits on `x` and `y` axes,

- `cook.loess` Option to show loess curve for Cook's distances.

## Details

The plot displays standardized residuals against leverage, overlays
Cook's distance contours, and marks outliers based on residuals and
Cook's distance. Outlier and influential points can be labeled, and a
loess fit line is optionally added.

## See also

[`lm_plot.df`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.df.md),
[`lm_plot.parms`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.parms.md)

## Examples

``` r
mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
lm_plot.lev(mdl)

```
