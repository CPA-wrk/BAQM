# summary.lm: reporting simple regression (iris)

    Code
      sumry
    Output
      
      Summary Statistics:
                       Value      Performance      Measure  Err(Resids)   Metric
      Observations =     150      R-Squared =     0.013823       MAPE =  0.11751
      F-Statistic =   2.0744      Adj-R2 =       0.0071593       MAD  =   0.6749
      Pr(b's=0),% =    0.152      Std.Err.Est =     0.8251       RMSE =  0.81958
      
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

# summary.lm: reporting regression with numeric and faactor variables

    Code
      sumry
    Output
      
      Summary Statistics:
                       Value      Performance    Measure  Err(Resids)    Metric
      Observations =     150      R-Squared =    0.86731       MAPE =  0.041785
      F-Statistic =   188.25      Adj-R2 =       0.86271       MAD  =   0.24286
      Pr(b's=0),% =   <2e-16 ***  Std.Err.Est =  0.30683       RMSE =   0.30063
      
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

# summary.lm: regression with interaction term

    Code
      sumry
    Output
      
      Summary Statistics:
                       Value      Performance    Measure  Err(Resids)    Metric
      Observations =     150      R-Squared =     0.8619       MAPE =  0.042979
      F-Statistic =   226.25      Adj-R2 =       0.85809       MAD  =   0.24946
      Pr(b's=0),% =   <2e-16 ***  Std.Err.Est =  0.31194       RMSE =   0.30669
      
      Analysis of Variance:
                     Deg.Frdm  Sum.of.Sqs  Mean.Sum.Sqs  F.statistic  p-value(F)    
      Regression            4      88.059     22.014825       226.25      <2e-16 ***
      Error(Resids)       145      14.109      0.097304                             
      Total               149     102.168                                           
      
      Coefficients:
                                Coefficient  Std.Error   t-stat   p-value         VIF
      (Intercept)                   2.24236   0.324083   6.9191  1.35e-10 ***        
      Sepal.Width                   0.57835   0.076735   7.5370  4.78e-12 ***   1.713
      Petal.Width                  -0.83072   0.194305  -4.2753  3.44e-05 ***  33.590
      Petal.Length                  0.65778   0.062664  10.4968   < 2e-16 ***  18.738
      Petal.Width:Petal.Length      0.06164   0.033153   1.8593     0.065 .    37.375
                                                                           
      Signif.Levels:  0 '***' 0.001 '** ' 0.01 '*  ' 0.05 '.  ' 0.1 '   ' 1
                                                                                
                              Min        1Q        Mean      Median       3Q    
      Residuals summary:   -0.807554  -0.237164  <3.2e-14   0.0217044  0.185934 
                                    
                              Max   
      Residuals summary:   0.755997 
                                                                                   
      Call:  lm(formula = Sepal.Length ~ Sepal.Width + Petal.Width * Petal.Length, 
      :          data = iris)                                                      

