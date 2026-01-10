# Plot Standard Residuals vs. Leverage with Cook's Distance Contours

Creates a plot of standard residuals versus leverage values, including
Cook's distance contours to visualize influential observations.

## Usage

``` r
lm_plot.lev(
  mdl,
  ...,
  cook.loess = FALSE,
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

- cook.loess:

  Option (logical, default = FALSE) indicates whether to show loess
  curve for Cook's distances on the plot.

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

- `cook.loess` Option for loess curve for Cook's distances,

- `parm` Parameter list for plotting, including Cook's distance
  contours,

- `df` Data frame used for plotting,

- `plts` List of ggplot objects, including the `$lev` element.

## Details

The plot displays standard residuals against leverage, overlays Cook's
distance contours, and marks outliers based on residuals and Cook's
distance. Outlier and influential points can be labeled, and a loess fit
line is optionally added.

## See also

[`lm_plot.df`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.df.md),
[`lm_plot.parms`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.parms.md)

## Examples

``` r
if (FALSE) { # \dontrun{
mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
result <- lm_plot.lev(mdl)
print(result$plts$lev)
} # }
```
