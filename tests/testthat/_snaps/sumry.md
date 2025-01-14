# sumry WORKS for simple regression

    Code
      fil <- tempfile("sumry")
      sink(file = fil)
      print.default(sumry(lm(Sepal.Length ~ Sepal.Width, data = iris)), width = 75)
      sink()
      lins <- readLines(fil)
      lins <- sub(".*nvironment.*", "", lins)
      cat(paste(lins, "\n"))
    Output
      $call 
       lm(formula = Sepal.Length ~ Sepal.Width, data = iris) 
        
       $terms 
       Sepal.Length ~ Sepal.Width 
       attr(,"variables") 
       list(Sepal.Length, Sepal.Width) 
       attr(,"factors") 
                    Sepal.Width 
       Sepal.Length           0 
       Sepal.Width            1 
       attr(,"term.labels") 
       [1] "Sepal.Width" 
       attr(,"order") 
       [1] 1 
       attr(,"intercept") 
       [1] 1 
       attr(,"response") 
       [1] 1 
        
        
       attr(,"predvars") 
       list(Sepal.Length, Sepal.Width) 
       attr(,"dataClasses") 
       Sepal.Length  Sepal.Width  
          "numeric"    "numeric"  
        
       $residuals 
                 1           2           3           4           5           6  
       -0.64445884 -0.95613937 -1.11146716 -1.23380326 -0.72212273 -0.25511441  
                 7           8           9          10          11          12  
       -1.16679494 -0.76679494 -1.47847547 -0.93380326 -0.29978662 -0.96679494  
                13          14          15          16          17          18  
       -1.05613937 -1.55613937  0.16722169  0.15656612 -0.25511441 -0.64445884  
                19          20          21          22          23          24  
        0.02254948 -0.57745052 -0.36679494 -0.59978662 -1.12212273 -0.68913105  
                25          26          27          28          29          30  
       -0.96679494 -0.85613937 -0.76679494 -0.54445884 -0.56679494 -1.11146716  
                31          32          33          34          35          36  
       -1.03380326 -0.36679494 -0.41044220 -0.08810609 -0.93380326 -0.81146716  
                37          38          39          40          41          42  
       -0.24445884 -0.82212273 -1.45613937 -0.66679494 -0.74445884 -1.51249211  
                43          44          45          46          47          48  
       -1.41146716 -0.74445884 -0.57745052 -1.05613937 -0.57745052 -1.21146716  
                49          50          51          52          53          54  
       -0.39978662 -0.78913105  1.18853284  0.58853284  1.06619674 -0.51249211  
                55          56          57          58          59          60  
        0.59918842 -0.20081158  0.51086895 -1.09015600  0.72152453 -0.72314769  
                61          62          63          64          65          66  
       -1.07950043  0.04386063 -0.03482822  0.22152453 -0.27847547  0.86619674  
                67          68          69          70          71          72  
       -0.25613937 -0.12314769  0.16517178 -0.36781990  0.08853284  0.19918842  
                73          74          75          76          77          78  
        0.33218010  0.19918842  0.52152453  0.74386063  0.89918842  0.84386063  
                79          80          81          82          83          84  
        0.12152453 -0.24548379 -0.49015600 -0.49015600 -0.12314769  0.07685231  
                85          86          87          88          89          90  
       -0.45613937  0.23320506  0.86619674  0.28750789 -0.25613937 -0.46781990  
                91          92          93          94          95          96  
       -0.44548379  0.24386063 -0.14548379 -1.01249211 -0.32314769 -0.15613937  
                97          98          99         100         101         102  
       -0.17847547  0.32152453 -0.86781990 -0.20081158  0.51086895 -0.12314769  
               103         104         105         106         107         108  
        1.24386063  0.42152453  0.64386063  1.74386063 -1.06781990  1.42152453  
               109         110         111         112         113         114  
        0.73218010  1.47787727  0.68853284  0.47685231  0.94386063 -0.26781990  
               115         116         117         118         119         120  
       -0.10081158  0.58853284  0.64386063  2.02254948  1.75451621 -0.03482822  
               121         122         123         124         125         126  
        1.08853284 -0.30081158  1.79918842  0.37685231  0.91086895  1.38853284  
               127         128         129         130         131         132  
        0.29918842  0.24386063  0.49918842  1.34386063  1.49918842  2.22254948  
               133         134         135         136         137         138  
        0.49918842  0.39918842  0.15451621  1.84386063  0.53320506  0.56619674  
               139         140         141         142         143         144  
        0.14386063  1.06619674  0.86619674  1.06619674 -0.12314769  0.98853284  
               145         146         147         148         149         150  
        0.91086895  0.84386063  0.33218010  0.64386063  0.43320506  0.04386063  
        
       $sigma 
       [1] 0.8250966 
        
       $aliased 
       (Intercept) Sepal.Width  
             FALSE       FALSE  
        
       $df 
       [1]   2 148   2 
        
       $r.squared 
       [1] 0.01382265 
        
       $adj.r.squared 
       [1] 0.007159294 
        
       $fstatistic 
            value      numdf      dendf  
         2.074427   1.000000 148.000000  
        
       $f.pval 
           value  
       0.1518983  
        
       $fits 
           Obs.Value Fit.Value    Residual 
       1         5.1  5.744459 -0.64445884 
       2         4.9  5.856139 -0.95613937 
       3         4.7  5.811467 -1.11146716 
       4         4.6  5.833803 -1.23380326 
       5         5.0  5.722123 -0.72212273 
       6         5.4  5.655114 -0.25511441 
       7         4.6  5.766795 -1.16679494 
       8         5.0  5.766795 -0.76679494 
       9         4.4  5.878475 -1.47847547 
       10        4.9  5.833803 -0.93380326 
       11        5.4  5.699787 -0.29978662 
       12        4.8  5.766795 -0.96679494 
       13        4.8  5.856139 -1.05613937 
       14        4.3  5.856139 -1.55613937 
       15        5.8  5.632778  0.16722169 
       16        5.7  5.543434  0.15656612 
       17        5.4  5.655114 -0.25511441 
       18        5.1  5.744459 -0.64445884 
       19        5.7  5.677451  0.02254948 
       20        5.1  5.677451 -0.57745052 
       21        5.4  5.766795 -0.36679494 
       22        5.1  5.699787 -0.59978662 
       23        4.6  5.722123 -1.12212273 
       24        5.1  5.789131 -0.68913105 
       25        4.8  5.766795 -0.96679494 
       26        5.0  5.856139 -0.85613937 
       27        5.0  5.766795 -0.76679494 
       28        5.2  5.744459 -0.54445884 
       29        5.2  5.766795 -0.56679494 
       30        4.7  5.811467 -1.11146716 
       31        4.8  5.833803 -1.03380326 
       32        5.4  5.766795 -0.36679494 
       33        5.2  5.610442 -0.41044220 
       34        5.5  5.588106 -0.08810609 
       35        4.9  5.833803 -0.93380326 
       36        5.0  5.811467 -0.81146716 
       37        5.5  5.744459 -0.24445884 
       38        4.9  5.722123 -0.82212273 
       39        4.4  5.856139 -1.45613937 
       40        5.1  5.766795 -0.66679494 
       41        5.0  5.744459 -0.74445884 
       42        4.5  6.012492 -1.51249211 
       43        4.4  5.811467 -1.41146716 
       44        5.0  5.744459 -0.74445884 
       45        5.1  5.677451 -0.57745052 
       46        4.8  5.856139 -1.05613937 
       47        5.1  5.677451 -0.57745052 
       48        4.6  5.811467 -1.21146716 
       49        5.3  5.699787 -0.39978662 
       50        5.0  5.789131 -0.78913105 
       51        7.0  5.811467  1.18853284 
       52        6.4  5.811467  0.58853284 
       53        6.9  5.833803  1.06619674 
       54        5.5  6.012492 -0.51249211 
       55        6.5  5.900812  0.59918842 
       56        5.7  5.900812 -0.20081158 
       57        6.3  5.789131  0.51086895 
       58        4.9  5.990156 -1.09015600 
       59        6.6  5.878475  0.72152453 
       60        5.2  5.923148 -0.72314769 
       61        5.0  6.079500 -1.07950043 
       62        5.9  5.856139  0.04386063 
       63        6.0  6.034828 -0.03482822 
       64        6.1  5.878475  0.22152453 
       65        5.6  5.878475 -0.27847547 
       66        6.7  5.833803  0.86619674 
       67        5.6  5.856139 -0.25613937 
       68        5.8  5.923148 -0.12314769 
       69        6.2  6.034828  0.16517178 
       70        5.6  5.967820 -0.36781990 
       71        5.9  5.811467  0.08853284 
       72        6.1  5.900812  0.19918842 
       73        6.3  5.967820  0.33218010 
       74        6.1  5.900812  0.19918842 
       75        6.4  5.878475  0.52152453 
       76        6.6  5.856139  0.74386063 
       77        6.8  5.900812  0.89918842 
       78        6.7  5.856139  0.84386063 
       79        6.0  5.878475  0.12152453 
       80        5.7  5.945484 -0.24548379 
       81        5.5  5.990156 -0.49015600 
       82        5.5  5.990156 -0.49015600 
       83        5.8  5.923148 -0.12314769 
       84        6.0  5.923148  0.07685231 
       85        5.4  5.856139 -0.45613937 
       86        6.0  5.766795  0.23320506 
       87        6.7  5.833803  0.86619674 
       88        6.3  6.012492  0.28750789 
       89        5.6  5.856139 -0.25613937 
       90        5.5  5.967820 -0.46781990 
       91        5.5  5.945484 -0.44548379 
       92        6.1  5.856139  0.24386063 
       93        5.8  5.945484 -0.14548379 
       94        5.0  6.012492 -1.01249211 
       95        5.6  5.923148 -0.32314769 
       96        5.7  5.856139 -0.15613937 
       97        5.7  5.878475 -0.17847547 
       98        6.2  5.878475  0.32152453 
       99        5.1  5.967820 -0.86781990 
       100       5.7  5.900812 -0.20081158 
       101       6.3  5.789131  0.51086895 
       102       5.8  5.923148 -0.12314769 
       103       7.1  5.856139  1.24386063 
       104       6.3  5.878475  0.42152453 
       105       6.5  5.856139  0.64386063 
       106       7.6  5.856139  1.74386063 
       107       4.9  5.967820 -1.06781990 
       108       7.3  5.878475  1.42152453 
       109       6.7  5.967820  0.73218010 
       110       7.2  5.722123  1.47787727 
       111       6.5  5.811467  0.68853284 
       112       6.4  5.923148  0.47685231 
       113       6.8  5.856139  0.94386063 
       114       5.7  5.967820 -0.26781990 
       115       5.8  5.900812 -0.10081158 
       116       6.4  5.811467  0.58853284 
       117       6.5  5.856139  0.64386063 
       118       7.7  5.677451  2.02254948 
       119       7.7  5.945484  1.75451621 
       120       6.0  6.034828 -0.03482822 
       121       6.9  5.811467  1.08853284 
       122       5.6  5.900812 -0.30081158 
       123       7.7  5.900812  1.79918842 
       124       6.3  5.923148  0.37685231 
       125       6.7  5.789131  0.91086895 
       126       7.2  5.811467  1.38853284 
       127       6.2  5.900812  0.29918842 
       128       6.1  5.856139  0.24386063 
       129       6.4  5.900812  0.49918842 
       130       7.2  5.856139  1.34386063 
       131       7.4  5.900812  1.49918842 
       132       7.9  5.677451  2.22254948 
       133       6.4  5.900812  0.49918842 
       134       6.3  5.900812  0.39918842 
       135       6.1  5.945484  0.15451621 
       136       7.7  5.856139  1.84386063 
       137       6.3  5.766795  0.53320506 
       138       6.4  5.833803  0.56619674 
       139       6.0  5.856139  0.14386063 
       140       6.9  5.833803  1.06619674 
       141       6.7  5.833803  0.86619674 
       142       6.9  5.833803  1.06619674 
       143       5.8  5.923148 -0.12314769 
       144       6.8  5.811467  0.98853284 
       145       6.7  5.789131  0.91086895 
       146       6.7  5.856139  0.84386063 
       147       6.3  5.967820  0.33218010 
       148       6.5  5.856139  0.64386063 
       149       6.2  5.766795  0.43320506 
       150       5.9  5.856139  0.04386063 
       attr(,"class") 
       [1] "fits.sumry.lm"  "table.sumry.lm" "matrix"         "array"          
        
       $anova 
                     Deg.Frdm Sum.of.Sqs Mean.Sum.Sqs F.statistic p-value(F) 
       Regression           1   1.412238    1.4122375    2.074427  0.1518983 
       Error(Resids)      148 100.756096    0.6807844          NA         NA 
       Total              149 102.168333           NA          NA         NA 
       attr(,"class") 
       [1] "anova.sumry.lm" "table.sumry.lm" "matrix"         "array"          
        
       $stats 
            Observations F-Statistic Pr(b's=0),%  R-Squared      Adj-R2 
       [1,]          150    2.074427   0.1518983 0.01382265 0.007159294 
            Std.Error.Est      MAPE      MAD       RMSE 
       [1,]     0.8250966 0.1175111 0.6748957 0.8195775 
       attr(,"class") 
       [1] "stats.sumry.lm" "table.sumry.lm" "matrix"         "array"          
        
       $coefficients 
                   Coefficient Std.Error    t-stat      p-value VIF 
       (Intercept)   6.5262226 0.4788963 13.627631 6.469702e-28  NA 
       Sepal.Width  -0.2233611 0.1550809 -1.440287 1.518983e-01  NA 
       attr(,"class") 
       [1] "coefficients.sumry.lm" "table.sumry.lm"        "matrix"                
       [4] "array"                 
        
       $cov.unscaled 
                   (Intercept) Sepal.Width 
       (Intercept)   0.3368786 -0.10800652 
       Sepal.Width  -0.1080065  0.03532703 
       attr(,"class") 
       [1] "cov.unscaled.sumry.lm" "table.sumry.lm"        "matrix"                
       [4] "array"                 
        
       $correlation 
                   (Intercept) Sepal.Width 
       (Intercept)   1.0000000  -0.9900558 
       Sepal.Width  -0.9900558   1.0000000 
       attr(,"class") 
       [1] "correlation.sumry.lm" "table.sumry.lm"       "matrix"               
       [4] "array"                
        
       attr(,"class") 
       [1] "sumry.lm" 
    Code
      file.remove(fil)
    Output
      [1] TRUE

# sumry WARNS for identity regression

    Code
      fil <- tempfile("sumry")
      sink(file = fil)
      print.default(sumry(lm(Sepal.Length ~ Sepal.Length, data = iris)), width = 75)
    Condition
      Warning in `model.matrix.default()`:
      the response appeared on the right-hand side and was dropped
      Warning in `model.matrix.default()`:
      problem with term 1 in model.matrix: no columns are assigned
    Code
      sink()
      lins <- readLines(fil)
      lins <- sub(".*nvironment.*", "", lins)
      cat(paste(lins, "\n"))
    Output
      $call 
       lm(formula = Sepal.Length ~ Sepal.Length, data = iris) 
        
       $terms 
       Sepal.Length ~ Sepal.Length 
       attr(,"variables") 
       list(Sepal.Length) 
       attr(,"factors") 
                    Sepal.Length 
       Sepal.Length            1 
       attr(,"term.labels") 
       [1] "Sepal.Length" 
       attr(,"order") 
       [1] 1 
       attr(,"intercept") 
       [1] 1 
       attr(,"response") 
       [1] 1 
        
        
       attr(,"predvars") 
       list(Sepal.Length) 
       attr(,"dataClasses") 
       Sepal.Length  
          "numeric"  
        
       $residuals 
                 1           2           3           4           5           6  
       -0.74333333 -0.94333333 -1.14333333 -1.24333333 -0.84333333 -0.44333333  
                 7           8           9          10          11          12  
       -1.24333333 -0.84333333 -1.44333333 -0.94333333 -0.44333333 -1.04333333  
                13          14          15          16          17          18  
       -1.04333333 -1.54333333 -0.04333333 -0.14333333 -0.44333333 -0.74333333  
                19          20          21          22          23          24  
       -0.14333333 -0.74333333 -0.44333333 -0.74333333 -1.24333333 -0.74333333  
                25          26          27          28          29          30  
       -1.04333333 -0.84333333 -0.84333333 -0.64333333 -0.64333333 -1.14333333  
                31          32          33          34          35          36  
       -1.04333333 -0.44333333 -0.64333333 -0.34333333 -0.94333333 -0.84333333  
                37          38          39          40          41          42  
       -0.34333333 -0.94333333 -1.44333333 -0.74333333 -0.84333333 -1.34333333  
                43          44          45          46          47          48  
       -1.44333333 -0.84333333 -0.74333333 -1.04333333 -0.74333333 -1.24333333  
                49          50          51          52          53          54  
       -0.54333333 -0.84333333  1.15666667  0.55666667  1.05666667 -0.34333333  
                55          56          57          58          59          60  
        0.65666667 -0.14333333  0.45666667 -0.94333333  0.75666667 -0.64333333  
                61          62          63          64          65          66  
       -0.84333333  0.05666667  0.15666667  0.25666667 -0.24333333  0.85666667  
                67          68          69          70          71          72  
       -0.24333333 -0.04333333  0.35666667 -0.24333333  0.05666667  0.25666667  
                73          74          75          76          77          78  
        0.45666667  0.25666667  0.55666667  0.75666667  0.95666667  0.85666667  
                79          80          81          82          83          84  
        0.15666667 -0.14333333 -0.34333333 -0.34333333 -0.04333333  0.15666667  
                85          86          87          88          89          90  
       -0.44333333  0.15666667  0.85666667  0.45666667 -0.24333333 -0.34333333  
                91          92          93          94          95          96  
       -0.34333333  0.25666667 -0.04333333 -0.84333333 -0.24333333 -0.14333333  
                97          98          99         100         101         102  
       -0.14333333  0.35666667 -0.74333333 -0.14333333  0.45666667 -0.04333333  
               103         104         105         106         107         108  
        1.25666667  0.45666667  0.65666667  1.75666667 -0.94333333  1.45666667  
               109         110         111         112         113         114  
        0.85666667  1.35666667  0.65666667  0.55666667  0.95666667 -0.14333333  
               115         116         117         118         119         120  
       -0.04333333  0.55666667  0.65666667  1.85666667  1.85666667  0.15666667  
               121         122         123         124         125         126  
        1.05666667 -0.24333333  1.85666667  0.45666667  0.85666667  1.35666667  
               127         128         129         130         131         132  
        0.35666667  0.25666667  0.55666667  1.35666667  1.55666667  2.05666667  
               133         134         135         136         137         138  
        0.55666667  0.45666667  0.25666667  1.85666667  0.45666667  0.55666667  
               139         140         141         142         143         144  
        0.15666667  1.05666667  0.85666667  1.05666667 -0.04333333  0.95666667  
               145         146         147         148         149         150  
        0.85666667  0.85666667  0.45666667  0.65666667  0.35666667  0.05666667  
        
       $sigma 
       [1] 0.8280661 
        
       $aliased 
       (Intercept)  
             FALSE  
        
       $df 
       [1]   1 149   1 
        
       $adj.r.squared 
       [1] 0 
        
       $r.squared 
       [1] 0 
        
       $coefficients 
                   Coefficient  Std.Error   t-stat       p-value VIF 
       (Intercept)    5.843333 0.06761132 86.42537 3.331256e-129  NA 
       attr(,"class") 
       [1] "coefficients.sumry.lm" "table.sumry.lm"        "matrix"                
       [4] "array"                 
        
       $cov.unscaled 
                   (Intercept) 
       (Intercept) 0.006666667 
       attr(,"class") 
       [1] "cov.unscaled.sumry.lm" "table.sumry.lm"        "matrix"                
       [4] "array"                 
        
       $correlation 
                   (Intercept) 
       (Intercept)           1 
       attr(,"class") 
       [1] "correlation.sumry.lm" "table.sumry.lm"       "matrix"               
       [4] "array"                
        
       attr(,"class") 
       [1] "sumry.lm" 
    Code
      file.remove(fil)
    Output
      [1] TRUE

# print.sumry.lm WORKS

    Code
      print.sumry.lm(sumry(lm(Sepal.Length ~ Sepal.Width, data = iris)))
    Output
      
      Summary Statistics:
                       Value         Performance        Measure     Err(Resids)
      Observations =     150         R-Squared =       0.013823          MAPE =
      F-Statistic =   2.0744         Adj-R2 =         0.0071593          MAD  =
      Pr(b's=0),% =    0.152         Std.Error.Est =     0.8251          RMSE =
                       Metric
      Observations =  0.11751
      F-Statistic =    0.6749
      Pr(b's=0),% =   0.81958
      
      Analysis of Variance:
                     Deg.Frdm  Sum.of.Sqs  Mean.Sum.Sqs  F.statistic  p-value(F)    
      Regression            1      1.4122       1.41224       2.0744       0.152    
      Error(Resids)       148    100.7561       0.68078                             
      Total               149    102.1683                                           
      
      Coefficients:
                   Coefficient  Std.Error   t-stat  p-value      VIF
      (Intercept)      6.52622    0.47890  13.6276   <2e-16 ***     
      Sepal.Width     -0.22336    0.15508  -1.4403    0.152         
                                                                           
      Signif.Levels:  0 '***' 0.001 '** ' 0.01 '*  ' 0.05 '.  ' 0.1 '   ' 1
                                                                                
                              Min        1Q       Median      Mean        3Q    
      Residuals summary:   -1.55614   -0.633291  -0.11198   <3.3e-14   0.557949 
                                    
                              Max   
      Residuals summary:    2.22255 
                                                                  
      Call:  lm(formula = Sepal.Length ~ Sepal.Width, data = iris)

---

    Code
      print.sumry.lm(sumry(lm(Sepal.Length ~ ., data = iris)))
    Output
      
      Summary Statistics:
                       Value         Performance      Measure     Err(Resids)
      Observations =     150         R-Squared =      0.86731          MAPE =
      F-Statistic =   188.25         Adj-R2 =         0.86271          MAD  =
      Pr(b's=0),% =   <2e-16 ***     Std.Error.Est =  0.30683          RMSE =
                        Metric
      Observations =  0.041785
      F-Statistic =    0.24286
      Pr(b's=0),% =    0.30063
      
      Analysis of Variance:
                     Deg.Frdm  Sum.of.Sqs  Mean.Sum.Sqs  F.statistic  p-value(F)    
      Regression            5      88.612     17.722370       188.25      <2e-16 ***
      Error(Resids)       144      13.556      0.094142                             
      Total               149     102.168                                           
      
      Coefficients:
                          Coefficient  Std.Error   t-stat   p-value          VIF
      (Intercept)             2.17127   0.279794   7.7602  1.43e-12 ***         
      Sepal.Width             0.49589   0.086070   5.7615  4.87e-08 ***   2.2275
      Petal.Length            0.82924   0.068528  12.1009   < 2e-16 ***  23.1616
      Petal.Width            -0.31516   0.151196  -2.0844   0.03889 *    21.0214
      Species_versicolor     -0.72356   0.240169  -3.0127   0.00306 **   20.4234
      Species_virginica      -1.02350   0.333726  -3.0669   0.00258 **   39.4344
                                                                           
      Signif.Levels:  0 '***' 0.001 '** ' 0.01 '*  ' 0.05 '.  ' 0.1 '   ' 1
                                                                                     
                              Min          1Q         Mean       Median        3Q    
      Residuals summary:   -0.794236   -0.218743    <3.2e-14   0.00898723   0.202546 
                                     
                              Max    
      Residuals summary:    0.731034 
                                                        
      Call:  lm(formula = Sepal.Length ~ ., data = iris)

---

    Code
      print.sumry.lm(sumry(lm(hwy ~ displ + year + cyl + fl, data = ggplot2::mpg)))
    Output
      
      Summary Statistics:
                       Value         Performance      Measure     Err(Resids)
      Observations =     234         R-Squared =      0.71405          MAPE =
      F-Statistic =   80.622         Adj-R2 =         0.70519          MAD  =
      Pr(b's=0),% =   <2e-16 ***     Std.Error.Est =   3.2331          RMSE =
                       Metric
      Observations =  0.10753
      F-Statistic =    2.4193
      Pr(b's=0),% =    3.1774
      
      Analysis of Variance:
                     Deg.Frdm  Sum.of.Sqs  Mean.Sum.Sqs  F.statistic  p-value(F)    
      Regression            7      5899.3       842.751       80.622      <2e-16 ***
      Error(Resids)       226      2362.4        10.453                             
      Total               233      8261.7                                           
      
      Coefficients:
                   Coefficient  Std.Error   t-stat   p-value          VIF
      (Intercept)   -349.43989  98.858697  -3.5347  0.000495 ***         
      displ           -2.31481   0.452215  -5.1188  6.57e-07 ***   7.6085
      year             0.19583   0.049198   3.9804  9.27e-05 ***   1.0972
      cyl             -0.90360   0.363762  -2.4841  0.013716 *     7.6599
      fl_d             2.96465   3.569991   0.8304  0.407169       5.9659
      fl_e           -12.70640   3.467276  -3.6647  0.000309 ***   8.8861
      fl_p            -5.20930   3.279694  -1.5884  0.113605      41.6178
      fl_r            -6.36985   3.267827  -1.9493  0.052502 .    48.4071
                                                                           
      Signif.Levels:  0 '***' 0.001 '** ' 0.01 '*  ' 0.05 '.  ' 0.1 '   ' 1
                                                                                     
                             Min        1Q      Median     Mean       3Q       Max   
      Residuals summary:   -12.3797  -1.77181  -0.23643   <5e-14   1.89382   9.61394 
                                                                             
      Call:  lm(formula = hwy ~ displ + year + cyl + fl, data = ggplot2::mpg)

---

    Code
      print.sumry.lm(sumry(lm(hwy ~ displ + year + cyl * fl, data = ggplot2::mpg)))
    Output
      
      Summary Statistics:
                       Value         Performance      Measure     Err(Resids)
      Observations =     234         R-Squared =      0.76193          MAPE =
      F-Statistic =   71.371         Adj-R2 =         0.75126          MAD  =
      Pr(b's=0),% =   <2e-16 ***     Std.Error.Est =   2.9698          RMSE =
                       Metric
      Observations =  0.10438
      F-Statistic =    2.2766
      Pr(b's=0),% =    2.8992
      
      Analysis of Variance:
                     Deg.Frdm  Sum.of.Sqs  Mean.Sum.Sqs  F.statistic  p-value(F)    
      Regression           10      6294.8      629.4832       71.371      <2e-16 ***
      Error(Resids)       223      1966.8        8.8199                             
      Total               233      8261.7                                           
      
      Coefficients:
                   Coefficient  Std.Error   t-stat   p-value           VIF
      (Intercept)   -399.66419  91.430347  -4.3712  1.89e-05 ***          
      displ           -2.42553   0.429964  -5.6412  5.09e-08 ***    8.1518
      year             0.22133   0.045514   4.8630  2.18e-06 ***    1.1129
      cyl             -1.10224   0.335891  -3.2815  0.001198 **     7.7405
      fl_d            21.28099   5.482158   3.8819  0.000137 ***   16.6737
      fl_e           -18.34816  12.714170  -1.4431  0.150388      141.6109
      fl_p           -12.95183   3.387244  -3.8237  0.000171 ***   52.6126
      fl_r            -5.67600   3.008594  -1.8866  0.060514 .     48.6298
      cyl:fl_d        -3.41482   0.857084  -3.9842  9.17e-05 ***   12.0861
      cyl:fl_e         0.86516   1.594566   0.5426  0.587971      134.7946
      cyl:fl_p         1.47181   0.302523   4.8651  2.16e-06 ***   14.8034
                                                                               
      Aliased variables:  Collinear variables removed: cyl:fl_r                
      Singularities:      Cannot define 1 coefficients                         
      Signif.Levels:      0 '***' 0.001 '** ' 0.01 '*  ' 0.05 '.  ' 0.1 '   ' 1
                                                                                     
                             Min        1Q       Mean     Median      3Q       Max   
      Residuals summary:   -9.67698  -1.84689   <5e-14   0.123322  1.99468   7.03792 
                                                                             
      Call:  lm(formula = hwy ~ displ + year + cyl * fl, data = ggplot2::mpg)

---

    Code
      print.sumry.lm(sumry(lm(hwy ~ displ + year + cyl + trans * fl, data = ggplot2::mpg)))
    Output
      
      Summary Statistics:
                       Value         Performance      Measure     Err(Resids)
      Observations =     234         R-Squared =      0.76938          MAPE =
      F-Statistic =   25.454         Adj-R2 =         0.73916          MAD  =
      Pr(b's=0),% =   <2e-16 ***     Std.Error.Est =   3.0412          RMSE =
                        Metric
      Observations =  0.095769
      F-Statistic =     2.1707
      Pr(b's=0),% =     2.8535
      
      Analysis of Variance:
                     Deg.Frdm  Sum.of.Sqs  Mean.Sum.Sqs  F.statistic  p-value(F)    
      Regression           27      6356.4      235.4218       25.454      <2e-16 ***
      Error(Resids)       206      1905.3        9.2489                             
      Total               233      8261.7                                           
      
      Coefficients:
                             Coefficient   Std.Error   t-stat   p-value          VIF
      (Intercept)             -411.72327  124.299470  -3.3123  0.001093 **          
      displ                     -2.64049    0.449310  -5.8768  1.66e-08 ***   8.4890
      year                       0.22856    0.061806   3.6980  0.000279 ***   1.9571
      cyl                       -0.48190    0.360907  -1.3353  0.183265       8.5219
      trans_auto(l3)            -2.99920    3.767436  -0.7961  0.426899       3.0430
      trans_auto(l4)            -3.27783    3.105635  -1.0554  0.292457      55.8534
      trans_auto(l5)            -4.53495    3.133565  -1.4472  0.149356      34.5041
      trans_auto(l6)            -3.76061    3.322508  -1.1319  0.259010       6.9777
      trans_auto(s4)            -4.00000    4.300909  -0.9300  0.353441       5.9231
      trans_auto(s5)            -0.59392    3.731505  -0.1592  0.873695       4.4586
      trans_auto(s6)            -2.68934    3.283948  -0.8189  0.413770      17.3805
      trans_manual(m5)          -2.61064    3.105303  -0.8407  0.401489      45.4823
      trans_manual(m6)          -5.82963    3.309546  -1.7615  0.079644 .    20.6739
      fl_d                       8.39673    3.818870   2.1987  0.029009 *     7.7156
      fl_e                     -13.12029    4.565579  -2.8737  0.004482 **   17.4134
      fl_p                      -9.57749    4.646221  -2.0614  0.040525 *    94.3992
      fl_r                      -7.68661    3.135729  -2.4513  0.015067 *    50.3760
      trans_auto(l4):fl_d       -7.29587    3.116172  -2.3413  0.020173 *     2.0819
      trans_auto(l5):fl_d      -18.26434    3.818165  -4.7835  3.28e-06 ***   1.5695
      trans_auto(l4):fl_e        0.28424    3.766861   0.0755  0.939924       4.5435
      trans_auto(l5):fl_e       -1.29468    3.675008  -0.3523  0.724978       5.7411
      trans_auto(l4):fl_p        1.83616    3.648261   0.5033  0.615293       8.4130
      trans_auto(l5):fl_p        3.22980    3.646113   0.8858  0.376747      12.4388
      trans_auto(s4):fl_p        4.55138    5.048896   0.9015  0.368396       5.4652
      trans_auto(s5):fl_p       -0.40206    5.072793  -0.0793  0.936905       2.7704
      trans_auto(s6):fl_p        2.33550    3.759831   0.6212  0.535174      13.2268
      trans_manual(m5):fl_p      1.47323    3.589797   0.4104  0.681943      12.0575
      trans_manual(m6):fl_p      7.45030    3.761923   1.9804  0.048984 *    17.4200
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
      Aliased variables:  Collinear variables removed: trans_auto(l3):fl_d, trans_auto(l6):fl_d, trans_auto(s4):fl_d, trans_auto(s5):fl_d, trans_auto(s6):fl_d, trans_manual(m5):fl_d, trans_manual(m6):fl_d, trans_auto(l3):fl_e, trans_auto(l6):fl_e, trans_auto(s4):fl_e, trans_auto(s5):fl_e, trans_auto(s6):fl_e, trans_manual(m5):fl_e, trans_manual(m6):fl_e, trans_auto(l3):fl_p, trans_auto(l6):fl_p, trans_auto(l3):fl_r, trans_auto(l4):fl_r, trans_auto(l5):fl_r, trans_auto(l6):fl_r, trans_auto(s4):fl_r, trans_auto(s5):fl_r, trans_auto(s6):fl_r, trans_manual(m5):fl_r, trans_manual(m6):fl_r
      Singularities:      Cannot define 25 coefficients                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
      Signif.Levels:      0 '***' 0.001 '** ' 0.01 '*  ' 0.05 '.  ' 0.1 '   ' 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                     
                             Min        1Q      Median     Mean       3Q       Max   
      Residuals summary:   -6.25617  -1.72836  <4.6e-14  <4.6e-14  1.58854   7.94215 
                                                                                     
      Call:  lm(formula = hwy ~ displ + year + cyl + trans * fl, data = ggplot2::mpg)

