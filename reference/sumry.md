# Summary Descriptive Statistics for BAQM

`sumry` is a generic function for the `BAQM` package used to produce
summaries of the results of certain model fitting functions.

## Usage

``` r
sumry(x, ...)
```

## Arguments

- x:

  An object to summarize; methods are available for data frames, lists,
  vectors, linear regression models (`lm`), and best subsets models
  (`regsubsets` from the `leaps` package).

- ...:

  Additional arguments passed to specific methods.

## Value

Invisibly returns a list of summary tables for each variable.

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
#>     n.val n.na    min      Q1  median     mean     Q3   max std.dev
#> a     100    0 -1.914 -0.6432 -0.1679 0.009043 0.6221 2.308  0.9815
#> b      98    2      1      25    49.5     49.5     74    98   28.43
#> c n.lvl:3    0      3    d:39    f:35     e:26                     
sumry(lm(Sepal.Length ~ ., data = iris))
#> 
#> Summary Statistics:
#>                  Value      Performance    Measure  Err(Resids)    Metric
#> Observations =     150      R-Squared =    0.86731       MAPE =  0.041785
#> F-Statistic =   188.25      Adj-R2 =       0.86271       MAD  =   0.24286
#> Pr(b's=0) =     <2e-16 ***  Std.Err.Est =  0.30683       RMSE =   0.30063
#> 
#> Analysis of Variance:
#>                Deg.Frdm  Sum.of.Sqs  Mean.Sum.Sqs  F.statistic  p-value(F)    
#> Regression            5      88.612     17.722370       188.25      <2e-16 ***
#> Error(Resids)       144      13.556      0.094142                             
#> Total               149     102.168                                           
#> 
#> Coefficients:
#>                     Coefficient  Std.Error   t-stat   p-value          VIF
#> (Intercept)             2.17127   0.279794   7.7602  1.43e-12 ***         
#> Sepal.Width             0.49589   0.086070   5.7615  4.87e-08 ***   2.2275
#> Petal.Length            0.82924   0.068528  12.1009   < 2e-16 ***  23.1616
#> Petal.Width            -0.31516   0.151196  -2.0844   0.03889  *   21.0214
#> Species_versicolor     -0.72356   0.240169  -3.0127   0.00306 **   20.4234
#> Species_virginica      -1.02350   0.333726  -3.0669   0.00258 **   39.4344
#>                                                                      
#> Signif.Levels:  0 ‘***’ 0.001 ‘** ’ 0.01 ‘ * ’ 0.05 ‘ . ’ 0.1 ‘   ’ 1
#>                                                                 
#> Summary of   Min       1Q      Mean    Median     3Q      Max   
#> Residuals: -0.7942  -0.2187   <3e-14  0.008987  0.2025   0.731  
#>                                                   
#> Call:  lm(formula = Sepal.Length ~ ., data = iris)
sumry(leaps::regsubsets(mpg ~ ., data = mtcars, nbest = 2))
#>                        
#> Call: eval(expr, envir)
#>    _k_i.best    rsq  adjr2      see    cp cyl disp hp drat wt qsec vs am gear
#> 1   1  ( 1 ) 0.7528 0.7446 3.045882 11.63                   *                
#> 2   1  ( 2 ) 0.7262 0.7171 3.205902 15.90   *                                
#> 3   2  ( 1 ) 0.8302 0.8185 2.567516  1.22   *               *                
#> 4   2  ( 2 ) 0.8268 0.8148 2.593412  1.77           *       *                
#> 5   3  ( 1 ) 0.8497 0.8336 2.458846  0.10                   *    *     *     
#> 6   3  ( 2 ) 0.8431 0.8263 2.511548  1.15   *       *       *                
#> 7   4  ( 1 ) 0.8579 0.8368 2.434828  0.79           *       *    *     *     
#> 8   4  ( 2 ) 0.8568 0.8356 2.443813  0.96                   *    *     *     
#> 9   5  ( 1 ) 0.8637 0.8375 2.429291  1.85        *  *       *    *     *     
#> 10  5  ( 2 ) 0.8608 0.8340 2.455386  2.32                *  *    *     *     
#> 11  6  ( 1 ) 0.8667 0.8347 2.450251  3.37        *  *    *  *    *     *     
#> 12  6  ( 2 ) 0.8664 0.8343 2.453246  3.42        *  *       *    *     *    *
#> 13  7  ( 1 ) 0.8681 0.8296 2.487705  5.15        *  *    *  *    *     *    *
#> 14  7  ( 2 ) 0.8676 0.8290 2.492404  5.23   *    *  *    *  *    *     *     
#> 15  8  ( 1 ) 0.8687 0.8230 2.535340  7.05        *  *    *  *    *     *    *
#> 16  8  ( 2 ) 0.8685 0.8227 2.537497  7.09        *  *    *  *    *  *  *    *
#>    carb
#> 1      
#> 2      
#> 3      
#> 4      
#> 5      
#> 6      
#> 7      
#> 8     *
#> 9      
#> 10    *
#> 11     
#> 12     
#> 13     
#> 14     
#> 15    *
#> 16     
```
