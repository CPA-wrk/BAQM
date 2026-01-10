# Plot Leverage vs. Fitted Values to Visualize Inflential Observations

Creates a plot of leverage values versus the linear fitted values,
including an identification of points with a large Cook's distance, to
visualize high-leverage and influential observations.

## Usage

``` r
lm_plot.infl(
  mdl,
  ...,
  parm = list(),
  df = lm_plot.df(mdl, parm),
  plts = list()
)
```

## Arguments

- mdl:

  A fitted model object (typically from
  [`lm`](https://rdrr.io/r/stats/lm.html)).

- ...:

  Additional arguments (not currently used).

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

- `parm` Parameter list for plotting,

- `df` Data frame used for plotting,

- `plts` List of ggplot objects, including the `$infl` element.

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
if (FALSE) { # \dontrun{
mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
result <- lm_plot.infl(mdl)
print(result$plts$infl)
} # }
```
