# Plot Residuals vs. Observation Order (Autocorrelation Check)

Creates a plot of residuals against the sequence/order of observations
to visually assess independence and detect autocorrelation. Optionally
overlays results from the Durbin–Watson test and labels outliers.

## Usage

``` r
lm_plot.ac(
  mdl,
  ...,
  pval.DW = FALSE,
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

- pval.DW:

  (logical, default = FALSE) Option to show Durbin-Watson p-value on the
  plot.

- parm:

  A list of plotting parameters, usually from
  [`lm_plot.parms()`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.parms.md).

- df:

  Data frame with augmented model data. Defaults to `lm_plot.df(mdl)`.

- plts:

  A list of ggplot objects to which this plot will be added.

## Value

A list containing:

- `mdl` Fitted model object,

- `pval.DW` Option to show Durbin-Watson p-value,

- `parm` Parameter list with Durbin-Watson test results added,

- `df` Data frame used for plotting,

- `plts` List of ggplot objects, including the `$ac` element.

## Details

Points are colored and shaped according to whether they are residual
outliers (as determined by Tukey's boxplot rule). The function can label
points using ggrepel if `parm$pts$id$outl` or `parm$pts$id$reg` are set
to `TRUE`.

## Examples

``` r
if (FALSE) { # \dontrun{
fit <- lm(mpg ~ wt + hp, data = mtcars)
lm_plot.ac(fit)
} # }
```
