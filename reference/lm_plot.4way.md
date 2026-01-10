# Create a Four-Panel Regression Assumptions Plot

Generates a 4-panel diagnostic plot for a multiple regression model,
including: 1) Fitted values vs. observed values (check for
non-linearity), 2) Quantile–Quantile plot of residuals (check for
non-normality), 3) Residuals vs. fitted values (check for
heteroskedasticity), 4) Autocorrelation for time series otherwise
influence plot (leverage also available).

## Usage

``` r
lm_plot.4way(
  mdl,
  ...,
  is.ts = FALSE,
  pred.intvl = TRUE,
  pval.SW = FALSE,
  pval.BP = FALSE,
  pval.DW = FALSE,
  cook.loess = FALSE,
  rtn.all = FALSE,
  plt.nms = c("fit", "var", "qq", ifelse(is.ts, "ac", "infl")),
  parm = list()
)
```

## Arguments

- mdl:

  A fitted model object (typically from
  [`lm`](https://rdrr.io/r/stats/lm.html)).

- ...:

  Additional arguments (not currently used).

- is.ts:

  Logical; `TRUE` if data are time series, `FALSE` otherwise.

- pred.intvl:

  Logical; plot prediction interval on fitted vs observed.

- pval.SW:

  Logical; include Shapiro–Wilk p-value in `qq` plot.

- pval.BP:

  Logical; include Breusch–Pagan p-value in `var` plot.

- pval.DW:

  Logical; include Durbin–Watson p-value in `ac` plot.

- cook.loess:

  Logical; overlay Cook's distance loess curve in `infl` plot.

- rtn.all:

  Logical; return all plots and parameters (vs. 4-way plot only).

- plt.nms:

  Character vector of which panels to plot. Defaults to fit, var, qq,
  and ac/infl depending on `is.ts`.

- parm:

  List of plot formatting parameters (see
  [`lm_plot.parms`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.parms.md)).

## Value

A `ggplot` object representing the 4-way diagnostic panel. Optionally
invisibly returns a list containing:

- `p_4way` – the combined plot,

- other elements passed through from the individual plot functions.

## Details

This function is a high-level wrapper that calls internal plotting
functions (`lm_plot.fit`, `lm_plot.var`, `lm_plot.qq`, and either
`lm_plot.ac` or `lm_plot.infl`) and assembles their outputs into a
combined
[`plot_grid`](https://wilkelab.org/cowplot/reference/plot_grid.html).

## Examples

``` r
if (FALSE) { # \dontrun{
fit <- lm(mpg ~ wt + hp, data = mtcars)
lm_plot.4way(fit, is.ts = FALSE, pval.DW = TRUE)
} # }
```
