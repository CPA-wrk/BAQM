# Plot Residuals vs. Fitted Values to Assess Homoskedasticity

Produces a scatter plot of residuals against fitted values from a linear
model, highlighting outlier points and optionally displaying the
Breusch-Pagan test p-value for heteroskedasticity.

## Usage

``` r
lm_plot.var(
  mdl,
  ...,
  pval.BP = FALSE,
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

- pval.BP:

  (logical, default = FALSE) option to include Breusch-Pagan p-value on
  the plot.

- parms:

  List of plotting parameters, usually from
  [`lm_plot.parms()`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.parms.md).

- df:

  Data frame with augmented model data. Defaults to `lm_plot.df(mdl)`.

## Value

A `ggplot` object representing the residuals versus fitted values plot.
Included as an attribute `"parms"` is a list containing:

- `lim` Plotted limits on `x` and `y` axes,

- `pval.BP` Option to show Breusch-Pagan p-value,

- `BP` The `htest` object with Breusch-Pagan test results.

## Details

The plot visualizes residuals versus fitted values to assess
homoskedasticity (constant variance). Points are colored and shaped by
outlier status, and outlier/regular points can be labeled. The
Breusch-Pagan test for heteroskedasticity is run and, if enabled, its
p-value annotates the plot.

## See also

[`lm_plot.df`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.df.md),
[`lm_plot.parms`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.parms.md),
[`bptest`](https://rdrr.io/pkg/lmtest/man/bptest.html)

## Examples

``` r
mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
lm_plot.var(mdl, pval.BP = TRUE)

```
