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

- pval.BP:

  (logical, default = FALSE) option to include Breusch-Pagan p-value on
  the plot.

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

- `pval.BP` Option to show Breusch-Pagan p-value,

- `parm` Parameter list with Breusch-Pagan test results added,

- `df` Data frame used for plotting,

- `plts` List of ggplot objects, including the `$var` element.

## Details

The plot visualizes residuals versus fitted values to assess
homoskedasticity (constant variance). Points are colored and shaped by
outlier status, and outlier/regular points can be labeled. If enabled,
the Breusch-Pagan test for heteroskedasticity is run and its p-value is
annotated on the plot.

## See also

[`lm_plot.df`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.df.md),
[`lm_plot.parms`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.parms.md),
[`bptest`](https://rdrr.io/pkg/lmtest/man/bptest.html)

## Examples

``` r
mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
result <- lm_plot.var(mdl)
print(result$plts$var)
```
