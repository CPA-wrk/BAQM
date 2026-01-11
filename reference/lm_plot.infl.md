# Plot Leverage vs. Fitted Values to Visualize Inflential Observations

Creates a plot of leverage values versus the linear fitted values,
including an identification of points with a large Cook's distance, to
visualize high-leverage and influential observations.

## Usage

``` r
lm_plot.infl(
  mdl,
  ...,
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

- parms:

  List of plotting parameters, usually from
  [`lm_plot.parms()`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.parms.md).

- df:

  Data frame with augmented model data. Defaults to `lm_plot.df(mdl)`.

## Value

A `ggplot` object representing the comb plot of residuals vs sequence,
indicating influential points. Included as an attribute `"parms"` is a
list containing:

- `lim` Plotted limits on `x` and `y` axes.

## Details

The plot visualizes the calculated leverage of individual data points,
defined as the diagonal element of the 'hat' matrix, as a function of
the fitted values and implicitly relative to their location in the field
of predictor variables, and the threshold value of high leverage is
indicated. In addition, Cook's distance can be used to label influential
points, along with outlier and regular points.

## See also

[`lm_plot.df`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.df.md),
[`lm_plot.parms`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.parms.md),
[`outlier`](https://cpa-wrk.github.io/BAQM/reference/outlier.md)

## Examples

``` r
mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
result <- lm_plot.infl(mdl)
```
