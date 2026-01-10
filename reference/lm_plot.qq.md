# Q-Q Plot of Residuals to Assess Normality

Produces a Q-Q plot of residuals from a linear model to test for
normality, optionally annotating outlier points and adding the
Shapiro-Wilk test p-value.

## Usage

``` r
lm_plot.qq(
  mdl,
  ...,
  pval.SW = FALSE,
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

- pval.SW:

  (logical, default = FALSE) indicates whether to include Shapiro-Wilk
  p-value on the plot.

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

- `pval.SW` Option for including Shapiro-Wilk p-value,

- `parm` Parameter list with Shapiro-Wilk test results added,

- `df` Data frame used for plotting,

- `plts` List of ggplot objects, including the `$qq` element.

## Details

The plot visualizes the distribution of residuals against theoretical
normal quantiles. Points are colored and shaped by outlier status, and a
reference Q-Q line is added. Optionally, outlier and regular points can
be labeled. If enabled, the Shapiro-Wilk normality test p-value is
displayed.

## See also

[`lm_plot.df`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.df.md),
[`lm_plot.parms`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.parms.md),
[`shapiro.test`](https://rdrr.io/r/stats/shapiro.test.html)

## Examples

``` r
mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
result <- lm_plot.qq(mdl)
print(result$plts$qq)
```
