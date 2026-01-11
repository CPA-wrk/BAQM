# Set or Retrieve Default Plot Parameters for Model Diagnostic Plots

Initializes or updates a list of plot element parameters for use in
model diagnostic plotting functions. If any required parameter is
missing or invalid, a default value will be supplied.

## Usage

``` r
lm_plot.parms(mdl, parms = list())
```

## Arguments

- mdl:

  An object of class `lm`.

- parms:

  A list of plot parameters. Any missing or invalid entries are replaced
  with defaults.

## Value

A list of plot element parameters with defaults filled in for any
missing or invalid entries.

## Details

The returned list contains parameters for points (size, color, shape),
lines (type, color, size), options for plot features, Cook's
distance/Influence contours, and seed values for sampling functions.
These are used by other `lm_plot.*` functions to control plot appearance
and annotation. Key defaults include:

- **pts**: Properties for points (size, color, shape, outlier flags)

- **lins**: Properties for lines (type, color, size)

- **cook**: Cook's distance contour settings (points, levels, line type)

- **infl**: Influence line settings (line type)

See function code for full list of available settings and default
values.

## See also

[`lm_plot.fit`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.fit.md),
[`lm_plot.lev`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.lev.md),
[`lm_plot.infl`](https://cpa-wrk.github.io/BAQM/reference/lm_plot.infl.md)
[`outlier`](https://cpa-wrk.github.io/BAQM/reference/outlier.md)

## Examples

``` r
# Retrieve default parameters
parms <- lm_plot.parms(mdl = lm(Sepal.Length ~ Sepal.Width, data = iris))
# Set custom color for regular points
parms <- lm_plot.parms(mdl = lm(Sepal.Length ~ Sepal.Width, data = iris),
                       parms = list(pts = list(colr = list(reg = "blue"))))
```
