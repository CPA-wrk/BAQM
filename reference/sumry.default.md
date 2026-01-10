# Summary Descriptive Statistics for List or Data Frame

Computes and prints summary descriptive statistics for each variable in
a data frame, list, or vector including counts, numeric summaries (min,
quartiles, mean, max, standard deviation), and factor summaries (levels
and frequencies).

## Usage

``` r
# Default S3 method
sumry(
  x,
  ...,
  transpose = FALSE,
  pad = 2,
  maxsum = 10,
  opts = list(digits = 4, scipen = 2)
)
```

## Arguments

- x:

  A data frame, list, or vector containing variables to summarize. A
  vector is treated as a single variable data frame. Unnamed variables
  receive generic names like `V1`, `V2`, etc.

- ...:

  Additional arguments (not currently used).

- transpose:

  A logical controlling report format. By default the table printed is
  organized to show variables in columns and their statistic values in
  rows. Setting `transpose = TRUE` prints the transposed table with
  variables in rows and statistics in columns.

- pad:

  A positive integer for the number of spaces between output columns.

- maxsum:

  A positive integer limiting the number of levels for factor reports.

- opts:

  A key=value type list, optional input for `options` values on output.
  Existing values are restored on exit.

## Value

Invisibly returns a list containing a summary data frame for each
variable, to full precision. For example,
`smry <- sumry.df(df[c("A", "B", "C")]); smry$A$std.dev` gives the
standard deviation of variable `A` in data frame `df`

## Details

For each variable in `x`, the function computes the count of non-missing
and missing values. Numeric variables are summarized by minimum, first
quartile, median, mean, third quartile, maximum, and standard deviation.
Factor, logical, and character variables are summarized by level
frequencies, where level names may be abbreviated for readability.
Results are formatted in a table and printed. The function returns a
list containing numeric or factor summaries for each variable.

## Examples

``` r
sumry(penguins)
#>              species       island  bill_len  bill_dep  flipper_len  body_mass
#> n.val            344          344       342       342          342        342
#> n.na               0            0         2         2            2          2
#> min      n.lvl  :  3  n.lvl  :  3      32.1      13.1          172       2700
#> Q1       Adelie :152  Biscoe :168      39.2     15.45          190       3550
#> median   Gentoo :124  Dream  :124     44.45      17.3          197       4050
#> mean     Chnstrp: 68  Torgrsn: 52     43.92     17.15        200.9       4202
#> Q3                                     48.5      18.7          214       4800
#> max                                    59.6      21.5          231       6300
#> std.dev                                5.46     1.975        14.06        802
#>                 sex    year
#> n.val           333     344
#> n.na             11       0
#> min      n.lvl :  2    2007
#> Q1       male  :168    2007
#> median   female:165    2008
#> mean                   2008
#> Q3                     2009
#> max                    2009
#> std.dev              0.8184
sumry(data.frame(a = rnorm(100),
                 b = c(NA, 1:98, NA),
                 c = sample(letters[4:6], 100, TRUE)),
                 transpose = TRUE, pad = 1)
#>     n.val n.na    min      Q1 median    mean     Q3   max std.dev
#> a     100    0 -2.592 -0.5068 0.1168 0.08056 0.7844 2.649   1.014
#> b      98    2      1      25   49.5    49.5     74    98   28.43
#> c n.lvl:3    0      3    d:38   e:34    f:28                     
```
