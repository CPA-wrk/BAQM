# Check printed results: mtcars numeric only

    Code
      sumry(mtcars, pad = 1)
    Output
                mpg   cyl  disp    hp   drat     wt  qsec       vs       am   gear  carb
      n.val      32    32    32    32     32     32    32       32       32     32    32
      n.na        0     0     0     0      0      0     0        0        0      0     0
      min      10.4     4  71.1    52   2.76  1.513  14.5 n.lvl: 2 n.lvl: 2      3     1
      Q1       15.2     4 120.7    95   3.08  2.542 16.88 0    :18 0    :19      3     1
      median   19.2     6 196.3   123  3.695  3.325 17.71 1    :14 1    :13      4     2
      mean    20.09 6.188 230.7 146.7  3.597  3.217 17.85                    3.688 2.812
      Q3       22.8     8   334   180   3.92   3.65  18.9                        5     4
      max      33.9     8   472   335   4.93  5.424  22.9                        5     8
      std.dev 6.027 1.786 123.9 68.56 0.5347 0.9785 1.787                   0.7378 1.615

# Check printed results: penguins mixed types, and transpose

    Code
      sumry(penguins, pad = 1, transpose = TRUE)
    Output
                    n.val n.na  min         Q1     median       mean   Q3  max std.dev
      species     n.lvl:3    0    3 Adelie:152 Gentoo:124 Chnstrp:68                  
      island      n.lvl:3    0    3 Biscoe:168  Dream:124 Torgrsn:52                  
      bill_len        342    2 32.1       39.2      44.45      43.92 48.5 59.6    5.46
      bill_dep        342    2 13.1      15.45       17.3      17.15 18.7 21.5   1.975
      flipper_len     342    2  172        190        197      200.9  214  231   14.06
      body_mass       342    2 2700       3550       4050       4202 4800 6300     802
      sex         n.lvl:2   11    2   male:168 female:165                             
      year            344    0 2007       2007       2008       2008 2009 2009  0.8184

# Check printed results: vector, and transpose

    Code
      sumry(1:10, transpose = TRUE)
    Output
          n.val  n.na  min  Q1  median  mean  Q3  max  std.dev
      V1     10     0    1   3     5.5   5.5   8   10    3.028

