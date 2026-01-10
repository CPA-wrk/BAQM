# Print a Table from Linear Model Summary

Prints a formatted table from a sumry of a linear model, including
coefficients, ANOVA, correlation matrices, or summary statistics.
Significance stars and legends are added as appropriate.

## Usage

``` r
# S3 method for class 'table.sumry.lm'
print(
  x,
  ...,
  digits = max(4, getOption("digits") - 2),
  quote = FALSE,
  na.print = "",
  zero.print = "0",
  right = TRUE,
  justify = "right",
  signif.stars = getOption("show.signif.stars"),
  eps = .Machine$double.eps,
  nsmall = 4,
  prnt.lgnd = c("coefficients"),
  dig.test = max(1, min(5, digits - 2))
)
```

## Arguments

- x:

  A table object from a linear model sumry (e.g., coefficients, ANOVA,
  statistics, correlation matrices).

- ...:

  Additional arguments (not currently used).

- digits:

  Number of significant digits to print. Defaults to
  `max(4, getOption("digits") - 2)`.

- quote:

  Logical; whether to print with quotes (default: FALSE).

- na.print:

  String to use for NA values (default: ").

- zero.print:

  String to use for 0 values (default: 0).

- right:

  Logical, indicating whether or not strings should be right aligned
  (default: TRUE).

- justify:

  Justification for columns ("right" or "left"; default: "right").

- signif.stars:

  Logical; whether to show significance stars for p-values (default:
  `getOption("show.signif.stars")`).

- eps:

  Smallest positive floating-point value for formatting near-zero
  p-values (default: `.Machine$double.eps`).

- nsmall:

  Minimum number of digits to the right of the decimal point (default:
  4).

- prnt.lgnd:

  Character vector naming tables to print significance legends for
  (default: `"coefficients"`).

- dig.test:

  Digits for hypothesis test statistics (default:
  `max(1, min(5, digits - 2))`).

## Value

Invisibly returns the input table.

## Details

This method handles tabular output from linear model sumry.lm, including
coefficients, ANOVA, statistics, and correlation/covariance matrices. It
formats p-values, adds significance stars, and prints appropriate
legends for hypothesis tests.

## See also

[`print.sumry.lm`](https://cpa-wrk.github.io/BAQM/reference/print.sumry.lm.md)

## Examples

``` r
mdl <- lm(Sepal.Length ~ Sepal.Width, data = iris)
sum_mdl <- sumry(mdl)
print(sum_mdl$coefficients)
#>              Coefficient  Std.Error   t-stat  p-value      VIF
#> (Intercept)      6.52622    0.47890  13.6276   <2e-16 ***     
#> Sepal.Width     -0.22336    0.15508  -1.4403    0.152         
#>                                                                      
#> Signif.Levels:  0 ‘***’ 0.001 ‘** ’ 0.01 ‘ * ’ 0.05 ‘ . ’ 0.1 ‘   ’ 1
```
