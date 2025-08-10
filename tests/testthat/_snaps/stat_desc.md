# Check printed results: numeric only

    Code
      stat_desc(mtcars, pad = 1)
    Output
                mpg   cyl  disp    hp   drat     wt  qsec     vs     am   gear  carb
      n.val      32    32    32    32     32     32    32     32     32     32    32
      n.na        0     0     0     0      0      0     0      0      0      0     0
      min      10.4     4  71.1    52   2.76  1.513  14.5      0      0      3     1
      Q1       15.2     4 120.7    95   3.08  2.542 16.88     NA     NA      3     1
      median   19.2     6 196.3   123  3.695  3.325 17.71      0      0      4     2
      mean    20.09 6.188 230.7 146.7  3.597  3.217 17.85 0.4375 0.4062  3.688 2.812
      Q3       22.8     8   334   180   3.92   3.65  18.9      1      1      5     4
      max      33.9     8   472   335   4.93  5.424  22.9      1      1      5     8
      std.dev 6.027 1.786 123.9 68.56 0.5347 0.9785 1.787  0.504  0.499 0.7378 1.615

# Check printed results: mixed types

    Code
      stat_desc(iris, pad = 1)
    Output
              Sepal.Length Sepal.Width Petal.Length Petal.Width  Species
      n.val            150         150          150         150      150
      n.na               0           0            0           0        0
      min              4.3           2            1         0.1 n.lvls=4
      Q1               5.1         2.7          1.6         0.2 setos:50
      median           5.8           3         4.35         1.3 vrscl:50
      mean           5.843       3.057        3.758       1.199 vrgnc:50
      Q3              6.45         3.4          5.1         1.8         
      max              7.9         4.4          6.9         2.5         
      std.dev       0.8281      0.4359        1.765      0.7622         

# Check printed results: vector, and transopose

    Code
      stat_desc(1:10, t.rpt = TRUE)
    Output
          n.val  n.na  min  Q1  median  mean  Q3  max  std.dev
      V1     10     0    1   3     5.5   5.5   8   10    3.028

