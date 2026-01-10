# Identify Outliers Using Boxplot Heuristic

Detects outliers in a numeric vector using the boxplot heuristic
(default, outside 1.5 times the IQR from the 1st and 3rd quartiles).
Handles missing values (NA) automatically.

## Usage

``` r
outlier(x, coef = 1.5, rpt = FALSE)
```

## Arguments

- x:

  Numeric vector for which outliers are to be detected.

- coef:

  Numeric value for boxplot heuristic coefficient (default is 1.5).
  Higher values result in fewer points being classified as outliers.

- rpt:

  Logical. If `FALSE` (default), returns a logical vector indicating
  which elements of `x` are outliers. If `TRUE`, returns the calculated
  lower and upper limits for outlier detection, identified by
  `x < rpt[1] | x > rpt[2]`.

## Value

If `rpt = FALSE`, returns a logical vector indicating outliers. If
`rpt = TRUE`, returns a numeric vector of length 2 giving lower and
upper limits for outlier detection

## Examples

``` r
set.seed(1)
vals <- c(rnorm(100), 10, -10)
outlier(vals)
#>   [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#>  [13] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#>  [25] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#>  [37] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#>  [49] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#>  [61] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#>  [73] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#>  [85] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#>  [97] FALSE FALSE FALSE FALSE  TRUE  TRUE
outlier(vals, rpt = TRUE)
#>     lower     upper 
#> -2.358805  2.527535 
```
