# lm_plot.lev produces expected plot elements for cars

    Code
      lm_plot.lev_cars
    Output
      $mdl
      
      Call:
      lm(formula = mpg ~ wt + hp, data = mtcars)
      
      Coefficients:
      (Intercept)           wt           hp  
          37.2273      -3.8778      -0.0318  
      
      
      $opt
      $opt$cook.loess
      [1] TRUE
      
      
      $parm
      $parm$pts
      $parm$pts$size
      [1] 1.5
      
      $parm$pts$csz
      [1] 2.25
      
      $parm$pts$shape
      $parm$pts$shape$reg
      [1] "circle"
      
      $parm$pts$shape$outl
      [1] "circle open"
      
      $parm$pts$shape$cook
      [1] "square open"
      
      
      $parm$pts$colr
      $parm$pts$colr$reg
      [1] "black"
      
      $parm$pts$colr$outl
      [1] "red"
      
      $parm$pts$colr$cook
      [1] "green4"
      
      $parm$pts$colr$infl
      [1] "green4"
      
      
      $parm$pts$id
      $parm$pts$id$reg
      [1] FALSE
      
      $parm$pts$id$outl
      [1] TRUE
      
      $parm$pts$id$cook
      [1] TRUE
      
      $parm$pts$id$infl
      [1] TRUE
      
      
      $parm$pts$offp
      $parm$pts$offp$infl
      [1] 0.01
      
      
      
      $parm$lins
      $parm$lins$ltyp
      [1] "solid"
      
      $parm$lins$size
      [1] 0.5
      
      $parm$lins$size_lg
      [1] 1
      
      $parm$lins$csz
      [1] 4
      
      $parm$lins$colr
      $parm$lins$colr$fit
      [1] "orange"
      
      $parm$lins$colr$qq
      [1] "dodgerblue"
      
      $parm$lins$colr$var
      [1] "purple"
      
      $parm$lins$colr$ac
      [1] "green4"
      
      $parm$lins$colr$lev
      [1] "green4"
      
      $parm$lins$colr$infl
      [1] "green4"
      
      $parm$lins$colr$cook
      [1] "gray70"
      
      
      
      $parm$opt
      $parm$opt$ts
      [1] FALSE
      
      $parm$opt$pred_intvl_pts
      [1] 100
      
      $parm$opt$pval.SW
      [1] FALSE
      
      $parm$opt$pval.BP
      [1] FALSE
      
      $parm$opt$pval.DW
      [1] FALSE
      
      $parm$opt$cook.loess
      [1] FALSE
      
      
      $parm$cook
      $parm$cook$n
      [1] 100
      
      $parm$cook$level
      pos.0.5 neg.0.5   pos.1   neg.1 
          0.5    -0.5     1.0    -1.0 
      
      $parm$cook$ltyp
      [1] "dashed"
      
      $parm$cook$labl
         pos.0.5    neg.0.5      pos.1      neg.1 
      "d = +0.5" "d = -0.5"   "d = +1"   "d = -1" 
      
      $parm$cook$cont
          pos.0.5  neg.0.5   pos.1    neg.1         x
      1   6.58883 -6.58883 9.31801 -9.31801 0.0333981
      2   6.24770 -6.24770 8.83558 -8.83558 0.0370062
      3   5.95254 -5.95254 8.41817 -8.41817 0.0406143
      4   5.69381 -5.69381 8.05226 -8.05226 0.0442224
      5   5.46450 -5.46450 7.72796 -7.72796 0.0478305
      6   5.25937 -5.25937 7.43787 -7.43787 0.0514386
      7   5.07440 -5.07440 7.17629 -7.17629 0.0550467
      8   4.90646 -4.90646 6.93878 -6.93878 0.0586548
      9   4.75304 -4.75304 6.72181 -6.72181 0.0622629
      10  4.61213 -4.61213 6.52254 -6.52254 0.0658710
      11  4.48210 -4.48210 6.33865 -6.33865 0.0694791
      12  4.36158 -4.36158 6.16821 -6.16821 0.0730872
      13  4.24946 -4.24946 6.00964 -6.00964 0.0766953
      14  4.14477 -4.14477 5.86160 -5.86160 0.0803034
      15  4.04672 -4.04672 5.72293 -5.72293 0.0839115
      16  3.95462 -3.95462 5.59268 -5.59268 0.0875196
      17  3.86787 -3.86787 5.46999 -5.46999 0.0911277
      18  3.78596 -3.78596 5.35416 -5.35416 0.0947358
      19  3.70845 -3.70845 5.24454 -5.24454 0.0983439
      20  3.63494 -3.63494 5.14058 -5.14058 0.1019520
      21  3.56510 -3.56510 5.04181 -5.04181 0.1055601
      22  3.49861 -3.49861 4.94778 -4.94778 0.1091682
      23  3.43521 -3.43521 4.85812 -4.85812 0.1127763
      24  3.37466 -3.37466 4.77249 -4.77249 0.1163844
      25  3.31674 -3.31674 4.69058 -4.69058 0.1199925
      26  3.26127 -3.26127 4.61213 -4.61213 0.1236006
      27  3.20806 -3.20806 4.53688 -4.53688 0.1272087
      28  3.15696 -3.15696 4.46462 -4.46462 0.1308168
      29  3.10784 -3.10784 4.39514 -4.39514 0.1344249
      30  3.06055 -3.06055 4.32827 -4.32827 0.1380330
      31  3.01499 -3.01499 4.26383 -4.26383 0.1416411
      32  2.97104 -2.97104 4.20168 -4.20168 0.1452492
      33  2.92861 -2.92861 4.14168 -4.14168 0.1488573
      34  2.88761 -2.88761 4.08370 -4.08370 0.1524654
      35  2.84796 -2.84796 4.02762 -4.02762 0.1560735
      36  2.80957 -2.80957 3.97333 -3.97333 0.1596816
      37  2.77239 -2.77239 3.92075 -3.92075 0.1632897
      38  2.73634 -2.73634 3.86976 -3.86976 0.1668978
      39  2.70136 -2.70136 3.82030 -3.82030 0.1705059
      40  2.66740 -2.66740 3.77228 -3.77228 0.1741140
      41  2.63441 -2.63441 3.72563 -3.72563 0.1777221
      42  2.60235 -2.60235 3.68027 -3.68027 0.1813302
      43  2.57115 -2.57115 3.63615 -3.63615 0.1849383
      44  2.54079 -2.54079 3.59322 -3.59322 0.1885464
      45  2.51122 -2.51122 3.55140 -3.55140 0.1921545
      46  2.48241 -2.48241 3.51065 -3.51065 0.1957626
      47  2.45432 -2.45432 3.47093 -3.47093 0.1993707
      48  2.42692 -2.42692 3.43218 -3.43218 0.2029788
      49  2.40018 -2.40018 3.39437 -3.39437 0.2065869
      50  2.37407 -2.37407 3.35745 -3.35745 0.2101950
      51  2.34857 -2.34857 3.32139 -3.32139 0.2138031
      52  2.32365 -2.32365 3.28614 -3.28614 0.2174112
      53  2.29929 -2.29929 3.25169 -3.25169 0.2210193
      54  2.27546 -2.27546 3.21799 -3.21799 0.2246274
      55  2.25215 -2.25215 3.18501 -3.18501 0.2282355
      56  2.22932 -2.22932 3.15274 -3.15274 0.2318436
      57  2.20697 -2.20697 3.12113 -3.12113 0.2354517
      58  2.18508 -2.18508 3.09017 -3.09017 0.2390598
      59  2.16363 -2.16363 3.05983 -3.05983 0.2426679
      60  2.14260 -2.14260 3.03009 -3.03009 0.2462760
      61  2.12198 -2.12198 3.00093 -3.00093 0.2498841
      62  2.10175 -2.10175 2.97232 -2.97232 0.2534922
      63  2.08190 -2.08190 2.94425 -2.94425 0.2571003
      64  2.06241 -2.06241 2.91669 -2.91669 0.2607084
      65  2.04328 -2.04328 2.88964 -2.88964 0.2643165
      66  2.02450 -2.02450 2.86307 -2.86307 0.2679246
      67  2.00604 -2.00604 2.83697 -2.83697 0.2715327
      68  1.98790 -1.98790 2.81132 -2.81132 0.2751408
      69  1.97007 -1.97007 2.78610 -2.78610 0.2787490
      70  1.95254 -1.95254 2.76131 -2.76131 0.2823571
      71  1.93530 -1.93530 2.73693 -2.73693 0.2859652
      72  1.91834 -1.91834 2.71295 -2.71295 0.2895733
      73  1.90165 -1.90165 2.68934 -2.68934 0.2931814
      74  1.88523 -1.88523 2.66612 -2.66612 0.2967895
      75  1.86906 -1.86906 2.64325 -2.64325 0.3003976
      76  1.85314 -1.85314 2.62073 -2.62073 0.3040057
      77  1.83746 -1.83746 2.59856 -2.59856 0.3076138
      78  1.82201 -1.82201 2.57671 -2.57671 0.3112219
      79  1.80679 -1.80679 2.55518 -2.55518 0.3148300
      80  1.79178 -1.79178 2.53397 -2.53397 0.3184381
      81  1.77700 -1.77700 2.51305 -2.51305 0.3220462
      82  1.76242 -1.76242 2.49243 -2.49243 0.3256543
      83  1.74804 -1.74804 2.47210 -2.47210 0.3292624
      84  1.73386 -1.73386 2.45204 -2.45204 0.3328705
      85  1.71987 -1.71987 2.43226 -2.43226 0.3364786
      86  1.70606 -1.70606 2.41273 -2.41273 0.3400867
      87  1.69244 -1.69244 2.39347 -2.39347 0.3436948
      88  1.67899 -1.67899 2.37445 -2.37445 0.3473029
      89  1.66571 -1.66571 2.35567 -2.35567 0.3509110
      90  1.65260 -1.65260 2.33713 -2.33713 0.3545191
      91  1.63965 -1.63965 2.31882 -2.31882 0.3581272
      92  1.62686 -1.62686 2.30073 -2.30073 0.3617353
      93  1.61423 -1.61423 2.28286 -2.28286 0.3653434
      94  1.60174 -1.60174 2.26520 -2.26520 0.3689515
      95  1.58940 -1.58940 2.24776 -2.24776 0.3725596
      96  1.57721 -1.57721 2.23051 -2.23051 0.3761677
      97  1.56515 -1.56515 2.21346 -2.21346 0.3797758
      98  1.55323 -1.55323 2.19660 -2.19660 0.3833839
      99  1.54144 -1.54144 2.17993 -2.17993 0.3869920
      100 1.52979 -1.52979 2.16344 -2.16344 0.3906001
      101 1.51825 -1.51825 2.14714 -2.14714 0.3942082
      
      
      $parm$infl
      $parm$infl$ltyp
      [1] "dashed"
      
      
      
      $df
                                          .id .sequence    .fits     .resid .obs  .sigma
      Mazda RX4                     Mazda RX4         1 23.57233 -2.5723294 21.0 2.59205
      Mazda RX4 Wag             Mazda RX4 Wag         2 22.58348 -1.5834826 21.0 2.62158
      Datsun 710                   Datsun 710         3 25.27582 -2.4758187 22.8 2.59481
      Hornet 4 Drive           Hornet 4 Drive         4 21.26502  0.1349799 21.4 2.63919
      Hornet Sportabout     Hornet Sportabout         5 18.32727  0.3727334 18.7 2.63834
      Valiant                         Valiant         6 20.47382 -2.3738163 18.1 2.59813
      Duster 360                   Duster 360         7 15.59904 -1.2990424 14.3 2.62635
      Merc 240D                     Merc 240D         8 22.88707  1.5129327 24.4 2.62175
      Merc 230                       Merc 230         9 21.99367  0.8063267 22.8 2.63463
      Merc 280                       Merc 280        10 19.97946 -0.7794599 19.2 2.63500
      Merc 280C                     Merc 280C        11 19.97946 -2.1794599 17.8 2.60538
      Merc 450SE                   Merc 450SE        12 15.72537  0.6746315 16.4 2.63605
      Merc 450SL                   Merc 450SL        13 17.04383  0.2561690 17.3 2.63885
      Merc 450SLC                 Merc 450SLC        14 16.84994 -1.6499395 15.2 2.62001
      Cadillac Fleetwood   Cadillac Fleetwood        15 10.35520  0.0447954 10.4 2.63930
      Lincoln Continental Lincoln Continental        16  9.36273  1.0372674 10.4 2.63010
      Chrysler Imperial     Chrysler Imperial        17  9.19249  5.5075130 14.7 2.37368
      Fiat 128                       Fiat 128        18 26.59903  5.8009720 32.4 2.37903
      Honda Civic                 Honda Civic        19 29.31238  1.0876198 30.4 2.63018
      Toyota Corolla           Toyota Corolla        20 28.04621  5.8537908 33.9 2.36790
      Toyota Corona             Toyota Corona        21 24.58644 -3.0864415 21.5 2.57035
      Dodge Challenger       Dodge Challenger        22 18.81136 -3.3113639 15.5 2.56123
      AMC Javelin                 AMC Javelin        23 19.14098 -3.9409795 15.2 2.52827
      Camaro Z28                   Camaro Z28        24 14.55203 -1.2520281 13.3 2.62747
      Pontiac Firebird       Pontiac Firebird        25 16.75675  2.4432548 19.2 2.59670
      Fiat X1-9                     Fiat X1-9        26 27.62665 -0.3266531 27.3 2.63852
      Porsche 914-2             Porsche 914-2        27 26.03737 -0.0373742 26.0 2.63931
      Lotus Europa               Lotus Europa        28 27.76977  2.6302308 30.4 2.58342
      Ford Pantera L           Ford Pantera L        29 16.54649 -0.7464887 15.8 2.63457
      Ferrari Dino               Ferrari Dino        30 20.92541 -1.2254132 19.7 2.62840
      Maserati Bora             Maserati Bora        31 12.73948  2.2605229 15.0 2.58161
      Volvo 142E                   Volvo 142E        32 22.98365 -1.5836494 21.4 2.62156
                          .std.resid .stud.resid .lower.pi .upper.pi       .cooksd      .hat
      Mazda RX4           -1.0145865  -1.0151193  18.15205   28.9926 0.01589652330 0.0442769
      Mazda RX4 Wag       -0.6233275  -0.6166309  17.17305   27.9939 0.00546477876 0.0404867
      Datsun 710          -0.9847588  -0.9842273  19.81437   30.7373 0.02070651436 0.0602010
      Hornet 4 Drive       0.0533285   0.0524035  15.83645   26.6936 0.00004724822 0.0474749
      Hornet Sportabout    0.1464478   0.1439539  12.92627   23.7283 0.00027361842 0.0368629
      Valiant             -0.9476980  -0.9459788  14.99450   25.9531 0.02155063669 0.0671510
      Duster 360          -0.5330590  -0.5263728   9.99317   21.2049 0.01255218254 0.1170154
      Merc 240D            0.6203511   0.6136467  17.28461   28.4895 0.01677650160 0.1156562
      Merc 230             0.3206856   0.3156682  16.53270   27.4546 0.00218870150 0.0600163
      Merc 280            -0.3078616  -0.3030026  14.55235   25.4066 0.00155499617 0.0469108
      Merc 280C           -0.8608166  -0.8568628  14.55235   25.4066 0.01215736752 0.0469108
      Merc 450SE           0.2677652   0.2634339  10.27425   21.1765 0.00142300757 0.0561956
      Merc 450SL           0.1008787   0.0991415  11.63145   22.4562 0.00014589596 0.0412361
      Merc 450SLC         -0.6501951  -0.6435948  11.43409   22.2658 0.00626604928 0.0425729
      Cadillac Fleetwood   0.0191421   0.0188093   4.57938   16.1310 0.00002786686 0.1857711
      Lincoln Continental  0.4497023   0.4434296   3.53066   15.1948 0.01780909824 0.2089784
      Chrysler Imperial    2.3545172   2.5724776   3.41492   14.9701 0.42361090162 0.1864872
      Fiat 128             2.3319225   2.5420600  21.08705   32.1110 0.15742628949 0.0799099
      Honda Civic          0.4478117   0.4415524  23.69162   34.9331 0.00937144586 0.1229581
      Toyota Corolla       2.3786178   2.6051516  22.48445   33.6080 0.20839325973 0.0995033
      Toyota Corona       -1.2229783  -1.2339492  19.14349   30.0294 0.02791981732 0.0530313
      Dodge Challenger    -1.3002686  -1.3166089  13.41335   24.2094 0.02087418858 0.0357165
      AMC Javelin         -1.5456419  -1.5854676  13.74901   24.5329 0.02751509883 0.0333981
      Camaro Z28          -0.5097331  -0.5031265   8.98147   20.1226 0.00994352707 0.1029854
      Pontiac Firebird     0.9638057   0.9625847  11.33580   22.1777 0.01443198523 0.0445332
      Fiat X1-9           -0.1322004  -0.1299402  22.08327   33.1700 0.00059204395 0.0922519
      Porsche 914-2       -0.0149500  -0.0146900  20.54874   31.5260 0.00000567499 0.0707818
      Lotus Europa         1.1024151   1.1066785  22.07273   33.4668 0.07353984998 0.1536413
      Ford Pantera L      -0.3227088  -0.3176670  10.72541   22.3676 0.00891970082 0.2044239
      Ferrari Dino        -0.4891940  -0.4826813  15.44636   26.4045 0.00573267216 0.0670465
      Maserati Bora        1.1198909   1.1250084   6.47655   19.0024 0.27203974871 0.3942082
      Volvo 142E          -0.6236921  -0.6169965  17.57083   28.3965 0.00560080368 0.0414062
                          .cooksd.is.infl .hat.is.infl  .quantile outlier .stud.outl
      Mazda RX4                     FALSE        FALSE -1.2298588     reg        reg
      Mazda RX4 Wag                 FALSE        FALSE -0.5334097     reg        reg
      Datsun 710                    FALSE        FALSE -1.0775156     reg        reg
      Hornet 4 Drive                FALSE        FALSE  0.1970991     reg        reg
      Hornet Sportabout             FALSE        FALSE  0.3601299     reg        reg
      Valiant                       FALSE        FALSE -0.9467818     reg        reg
      Duster 360                    FALSE        FALSE -0.4450965     reg        reg
      Merc 240D                     FALSE        FALSE  0.8305109     reg        reg
      Merc 230                      FALSE        FALSE  0.5334097     reg        reg
      Merc 280                      FALSE        FALSE -0.1970991     reg        reg
      Merc 280C                     FALSE        FALSE -0.8305109     reg        reg
      Merc 450SE                    FALSE        FALSE  0.4450965     reg        reg
      Merc 450SL                    FALSE        FALSE  0.2776904     reg        reg
      Merc 450SLC                   FALSE        FALSE -0.7245144     reg        reg
      Cadillac Fleetwood            FALSE        FALSE  0.1177699     reg        reg
      Lincoln Continental           FALSE        FALSE  0.6260990     reg        reg
      Chrysler Imperial             FALSE        FALSE  1.4177971    outl       infl
      Fiat 128                      FALSE        FALSE  1.6759397    outl       infl
      Honda Civic                   FALSE        FALSE  0.7245144     reg        reg
      Toyota Corolla                FALSE        FALSE  2.1538747    outl       infl
      Toyota Corona                 FALSE        FALSE -1.4177971     reg        reg
      Dodge Challenger              FALSE        FALSE -1.6759397     reg        reg
      AMC Javelin                   FALSE        FALSE -2.1538747     reg        reg
      Camaro Z28                    FALSE        FALSE -0.3601299     reg        reg
      Pontiac Firebird              FALSE        FALSE  1.0775156     reg        reg
      Fiat X1-9                     FALSE        FALSE -0.0391761     reg        reg
      Porsche 914-2                 FALSE        FALSE  0.0391761     reg        reg
      Lotus Europa                  FALSE        FALSE  1.2298588     reg        reg
      Ford Pantera L                FALSE        FALSE -0.1177699     reg        reg
      Ferrari Dino                  FALSE        FALSE -0.2776904     reg        reg
      Maserati Bora                 FALSE         TRUE  0.9467818     reg        reg
      Volvo 142E                    FALSE        FALSE -0.6260990     reg        reg
      
      $plts
         [1] "List of 1"                                                                                                                  
         [2] " $ lev: <ggplot2::ggplot>"                                                                                                  
         [3] "  ..@ data       :'data.frame':\t32 obs. of  17 variables:"                                                                 
         [4] " .. .. $ .id            : chr [1:32] \"Mazda RX4\" \"Mazda RX4 Wag\" \"Datsun 710\" \"Hornet 4 Drive\" ..."                 
         [5] " .. .. $ .sequence      : int [1:32] 1 2 3 4 5 6 7 8 9 10 ..."                                                              
         [6] " .. .. $ .fits          : num [1:32] 23.6 22.6 25.3 21.3 18.3 ..."                                                          
         [7] " .. .. $ .resid         : num [1:32] -2.572 -1.583 -2.476 0.135 0.373 ..."                                                  
         [8] " .. .. $ .obs           : num [1:32] 21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ..."                                     
         [9] " .. .. $ .sigma         : num [1:32] 2.59 2.62 2.59 2.64 2.64 ..."                                                          
        [10] " .. .. $ .std.resid     : num [1:32] -1.0146 -0.6233 -0.9848 0.0533 0.1464 ..."                                             
        [11] " .. .. $ .stud.resid    : num [1:32] -1.0151 -0.6166 -0.9842 0.0524 0.144 ..."                                              
        [12] " .. .. $ .lower.pi      : num [1:32] 18.2 17.2 19.8 15.8 12.9 ..."                                                          
        [13] " .. .. $ .upper.pi      : num [1:32] 29 28 30.7 26.7 23.7 ..."                                                              
        [14] " .. .. $ .cooksd        : num [1:32] 0.0158965 0.0054648 0.0207065 0.0000472 0.0002736 ..."                                 
        [15] " .. .. $ .hat           : num [1:32] 0.0443 0.0405 0.0602 0.0475 0.0369 ..."                                                
        [16] " .. .. $ .cooksd.is.infl: logi [1:32] FALSE FALSE FALSE FALSE FALSE FALSE ..."                                              
        [17] " .. .. $ .hat.is.infl   : logi [1:32] FALSE FALSE FALSE FALSE FALSE FALSE ..."                                              
        [18] " .. .. $ .quantile      : num [1:32] -1.23 -0.533 -1.078 0.197 0.36 ..."                                                    
        [19] " .. .. $ outlier        : chr [1:32] \"reg\" \"reg\" \"reg\" \"reg\" ..."                                                   
        [20] " .. .. $ .stud.outl     : chr [1:32] \"reg\" \"reg\" \"reg\" \"reg\" ..."                                                   
        [21] "  ..@ layers     :List of 15"                                                                                               
        [22] " .. .. $ geom_hline     :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
        [23] "    aes_params: list"                                                                                                       
        [24] "    compute_aesthetics: function"                                                                                           
        [25] "    compute_geom_1: function"                                                                                               
        [26] "    compute_geom_2: function"                                                                                               
        [27] "    compute_position: function"                                                                                             
        [28] "    compute_statistic: function"                                                                                            
        [29] "    computed_geom_params: NULL"                                                                                             
        [30] "    computed_mapping: NULL"                                                                                                 
        [31] "    computed_stat_params: NULL"                                                                                             
        [32] "    constructor: call"                                                                                                      
        [33] "    data: data.frame"                                                                                                       
        [34] "    draw_geom: function"                                                                                                    
        [35] "    finish_statistics: function"                                                                                            
        [36] "    geom: <ggproto object: Class GeomHline, Geom, gg>"                                                                      
        [37] "        aesthetics: function"                                                                                               
        [38] "        check_constant_aes: FALSE"                                                                                          
        [39] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
        [40] "        draw_group: function"                                                                                               
        [41] "        draw_key: function"                                                                                                 
        [42] "        draw_layer: function"                                                                                               
        [43] "        draw_panel: function"                                                                                               
        [44] "        extra_params: na.rm"                                                                                                
        [45] "        handle_na: function"                                                                                                
        [46] "        non_missing_aes: "                                                                                                  
        [47] "        optional_aes: "                                                                                                     
        [48] "        parameters: function"                                                                                               
        [49] "        rename_size: TRUE"                                                                                                  
        [50] "        required_aes: yintercept"                                                                                           
        [51] "        setup_data: function"                                                                                               
        [52] "        setup_params: function"                                                                                             
        [53] "        use_defaults: function"                                                                                             
        [54] "        super:  <ggproto object: Class Geom, gg>"                                                                           
        [55] "    geom_params: list"                                                                                                      
        [56] "    inherit.aes: FALSE"                                                                                                     
        [57] "    layer_data: function"                                                                                                   
        [58] "    layout: NULL"                                                                                                           
        [59] "    map_statistic: function"                                                                                                
        [60] "    mapping: ggplot2::mapping, uneval, gg, S7_object"                                                                       
        [61] "    name: NULL"                                                                                                             
        [62] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
        [63] "        aesthetics: function"                                                                                               
        [64] "        compute_layer: function"                                                                                            
        [65] "        compute_panel: function"                                                                                            
        [66] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
        [67] "        required_aes: "                                                                                                     
        [68] "        setup_data: function"                                                                                               
        [69] "        setup_params: function"                                                                                             
        [70] "        use_defaults: function"                                                                                             
        [71] "        super:  <ggproto object: Class Position, gg>"                                                                       
        [72] "    print: function"                                                                                                        
        [73] "    setup_layer: function"                                                                                                  
        [74] "    show.legend: FALSE"                                                                                                     
        [75] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
        [76] "        aesthetics: function"                                                                                               
        [77] "        compute_group: function"                                                                                            
        [78] "        compute_layer: function"                                                                                            
        [79] "        compute_panel: function"                                                                                            
        [80] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
        [81] "        dropped_aes: "                                                                                                      
        [82] "        extra_params: na.rm"                                                                                                
        [83] "        finish_layer: function"                                                                                             
        [84] "        non_missing_aes: "                                                                                                  
        [85] "        optional_aes: "                                                                                                     
        [86] "        parameters: function"                                                                                               
        [87] "        required_aes: "                                                                                                     
        [88] "        retransform: TRUE"                                                                                                  
        [89] "        setup_data: function"                                                                                               
        [90] "        setup_params: function"                                                                                             
        [91] "        super:  <ggproto object: Class Stat, gg>"                                                                           
        [92] "    stat_params: list"                                                                                                      
        [93] "    super:  <ggproto object: Class Layer, gg> "                                                                             
        [94] " .. .. $ geom_vline     :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
        [95] "    aes_params: list"                                                                                                       
        [96] "    compute_aesthetics: function"                                                                                           
        [97] "    compute_geom_1: function"                                                                                               
        [98] "    compute_geom_2: function"                                                                                               
        [99] "    compute_position: function"                                                                                             
       [100] "    compute_statistic: function"                                                                                            
       [101] "    computed_geom_params: NULL"                                                                                             
       [102] "    computed_mapping: NULL"                                                                                                 
       [103] "    computed_stat_params: NULL"                                                                                             
       [104] "    constructor: call"                                                                                                      
       [105] "    data: data.frame"                                                                                                       
       [106] "    draw_geom: function"                                                                                                    
       [107] "    finish_statistics: function"                                                                                            
       [108] "    geom: <ggproto object: Class GeomVline, Geom, gg>"                                                                      
       [109] "        aesthetics: function"                                                                                               
       [110] "        check_constant_aes: FALSE"                                                                                          
       [111] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [112] "        draw_group: function"                                                                                               
       [113] "        draw_key: function"                                                                                                 
       [114] "        draw_layer: function"                                                                                               
       [115] "        draw_panel: function"                                                                                               
       [116] "        extra_params: na.rm"                                                                                                
       [117] "        handle_na: function"                                                                                                
       [118] "        non_missing_aes: "                                                                                                  
       [119] "        optional_aes: "                                                                                                     
       [120] "        parameters: function"                                                                                               
       [121] "        rename_size: TRUE"                                                                                                  
       [122] "        required_aes: xintercept"                                                                                           
       [123] "        setup_data: function"                                                                                               
       [124] "        setup_params: function"                                                                                             
       [125] "        use_defaults: function"                                                                                             
       [126] "        super:  <ggproto object: Class Geom, gg>"                                                                           
       [127] "    geom_params: list"                                                                                                      
       [128] "    inherit.aes: FALSE"                                                                                                     
       [129] "    layer_data: function"                                                                                                   
       [130] "    layout: NULL"                                                                                                           
       [131] "    map_statistic: function"                                                                                                
       [132] "    mapping: ggplot2::mapping, uneval, gg, S7_object"                                                                       
       [133] "    name: NULL"                                                                                                             
       [134] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
       [135] "        aesthetics: function"                                                                                               
       [136] "        compute_layer: function"                                                                                            
       [137] "        compute_panel: function"                                                                                            
       [138] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [139] "        required_aes: "                                                                                                     
       [140] "        setup_data: function"                                                                                               
       [141] "        setup_params: function"                                                                                             
       [142] "        use_defaults: function"                                                                                             
       [143] "        super:  <ggproto object: Class Position, gg>"                                                                       
       [144] "    print: function"                                                                                                        
       [145] "    setup_layer: function"                                                                                                  
       [146] "    show.legend: FALSE"                                                                                                     
       [147] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
       [148] "        aesthetics: function"                                                                                               
       [149] "        compute_group: function"                                                                                            
       [150] "        compute_layer: function"                                                                                            
       [151] "        compute_panel: function"                                                                                            
       [152] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [153] "        dropped_aes: "                                                                                                      
       [154] "        extra_params: na.rm"                                                                                                
       [155] "        finish_layer: function"                                                                                             
       [156] "        non_missing_aes: "                                                                                                  
       [157] "        optional_aes: "                                                                                                     
       [158] "        parameters: function"                                                                                               
       [159] "        required_aes: "                                                                                                     
       [160] "        retransform: TRUE"                                                                                                  
       [161] "        setup_data: function"                                                                                               
       [162] "        setup_params: function"                                                                                             
       [163] "        super:  <ggproto object: Class Stat, gg>"                                                                           
       [164] "    stat_params: list"                                                                                                      
       [165] "    super:  <ggproto object: Class Layer, gg> "                                                                             
       [166] " .. .. $ geom_point     :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
       [167] "    aes_params: list"                                                                                                       
       [168] "    compute_aesthetics: function"                                                                                           
       [169] "    compute_geom_1: function"                                                                                               
       [170] "    compute_geom_2: function"                                                                                               
       [171] "    compute_position: function"                                                                                             
       [172] "    compute_statistic: function"                                                                                            
       [173] "    computed_geom_params: NULL"                                                                                             
       [174] "    computed_mapping: NULL"                                                                                                 
       [175] "    computed_stat_params: NULL"                                                                                             
       [176] "    constructor: call"                                                                                                      
       [177] "    data: waiver"                                                                                                           
       [178] "    draw_geom: function"                                                                                                    
       [179] "    finish_statistics: function"                                                                                            
       [180] "    geom: <ggproto object: Class GeomPoint, Geom, gg>"                                                                      
       [181] "        aesthetics: function"                                                                                               
       [182] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [183] "        draw_group: function"                                                                                               
       [184] "        draw_key: function"                                                                                                 
       [185] "        draw_layer: function"                                                                                               
       [186] "        draw_panel: function"                                                                                               
       [187] "        extra_params: na.rm"                                                                                                
       [188] "        handle_na: function"                                                                                                
       [189] "        non_missing_aes: size shape colour"                                                                                 
       [190] "        optional_aes: "                                                                                                     
       [191] "        parameters: function"                                                                                               
       [192] "        rename_size: FALSE"                                                                                                 
       [193] "        required_aes: x y"                                                                                                  
       [194] "        setup_data: function"                                                                                               
       [195] "        setup_params: function"                                                                                             
       [196] "        use_defaults: function"                                                                                             
       [197] "        super:  <ggproto object: Class Geom, gg>"                                                                           
       [198] "    geom_params: list"                                                                                                      
       [199] "    inherit.aes: TRUE"                                                                                                      
       [200] "    layer_data: function"                                                                                                   
       [201] "    layout: NULL"                                                                                                           
       [202] "    map_statistic: function"                                                                                                
       [203] "    mapping: ggplot2::mapping, uneval, gg, S7_object"                                                                       
       [204] "    name: NULL"                                                                                                             
       [205] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
       [206] "        aesthetics: function"                                                                                               
       [207] "        compute_layer: function"                                                                                            
       [208] "        compute_panel: function"                                                                                            
       [209] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [210] "        required_aes: "                                                                                                     
       [211] "        setup_data: function"                                                                                               
       [212] "        setup_params: function"                                                                                             
       [213] "        use_defaults: function"                                                                                             
       [214] "        super:  <ggproto object: Class Position, gg>"                                                                       
       [215] "    print: function"                                                                                                        
       [216] "    setup_layer: function"                                                                                                  
       [217] "    show.legend: FALSE"                                                                                                     
       [218] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
       [219] "        aesthetics: function"                                                                                               
       [220] "        compute_group: function"                                                                                            
       [221] "        compute_layer: function"                                                                                            
       [222] "        compute_panel: function"                                                                                            
       [223] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [224] "        dropped_aes: "                                                                                                      
       [225] "        extra_params: na.rm"                                                                                                
       [226] "        finish_layer: function"                                                                                             
       [227] "        non_missing_aes: "                                                                                                  
       [228] "        optional_aes: "                                                                                                     
       [229] "        parameters: function"                                                                                               
       [230] "        required_aes: "                                                                                                     
       [231] "        retransform: TRUE"                                                                                                  
       [232] "        setup_data: function"                                                                                               
       [233] "        setup_params: function"                                                                                             
       [234] "        super:  <ggproto object: Class Stat, gg>"                                                                           
       [235] "    stat_params: list"                                                                                                      
       [236] "    super:  <ggproto object: Class Layer, gg> "                                                                             
       [237] " .. .. $ annotate       :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
       [238] "    aes_params: list"                                                                                                       
       [239] "    compute_aesthetics: function"                                                                                           
       [240] "    compute_geom_1: function"                                                                                               
       [241] "    compute_geom_2: function"                                                                                               
       [242] "    compute_position: function"                                                                                             
       [243] "    compute_statistic: function"                                                                                            
       [244] "    computed_geom_params: NULL"                                                                                             
       [245] "    computed_mapping: NULL"                                                                                                 
       [246] "    computed_stat_params: NULL"                                                                                             
       [247] "    constructor: call"                                                                                                      
       [248] "    data: data.frame"                                                                                                       
       [249] "    draw_geom: function"                                                                                                    
       [250] "    finish_statistics: function"                                                                                            
       [251] "    geom: <ggproto object: Class GeomPoint, Geom, gg>"                                                                      
       [252] "        aesthetics: function"                                                                                               
       [253] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [254] "        draw_group: function"                                                                                               
       [255] "        draw_key: function"                                                                                                 
       [256] "        draw_layer: function"                                                                                               
       [257] "        draw_panel: function"                                                                                               
       [258] "        extra_params: na.rm"                                                                                                
       [259] "        handle_na: function"                                                                                                
       [260] "        non_missing_aes: size shape colour"                                                                                 
       [261] "        optional_aes: "                                                                                                     
       [262] "        parameters: function"                                                                                               
       [263] "        rename_size: FALSE"                                                                                                 
       [264] "        required_aes: x y"                                                                                                  
       [265] "        setup_data: function"                                                                                               
       [266] "        setup_params: function"                                                                                             
       [267] "        use_defaults: function"                                                                                             
       [268] "        super:  <ggproto object: Class Geom, gg>"                                                                           
       [269] "    geom_params: list"                                                                                                      
       [270] "    inherit.aes: FALSE"                                                                                                     
       [271] "    layer_data: function"                                                                                                   
       [272] "    layout: NULL"                                                                                                           
       [273] "    map_statistic: function"                                                                                                
       [274] "    mapping: unlabelled, ggplot2::mapping, uneval, gg, S7_object"                                                           
       [275] "    name: NULL"                                                                                                             
       [276] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
       [277] "        aesthetics: function"                                                                                               
       [278] "        compute_layer: function"                                                                                            
       [279] "        compute_panel: function"                                                                                            
       [280] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [281] "        required_aes: "                                                                                                     
       [282] "        setup_data: function"                                                                                               
       [283] "        setup_params: function"                                                                                             
       [284] "        use_defaults: function"                                                                                             
       [285] "        super:  <ggproto object: Class Position, gg>"                                                                       
       [286] "    print: function"                                                                                                        
       [287] "    setup_layer: function"                                                                                                  
       [288] "    show.legend: FALSE"                                                                                                     
       [289] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
       [290] "        aesthetics: function"                                                                                               
       [291] "        compute_group: function"                                                                                            
       [292] "        compute_layer: function"                                                                                            
       [293] "        compute_panel: function"                                                                                            
       [294] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [295] "        dropped_aes: "                                                                                                      
       [296] "        extra_params: na.rm"                                                                                                
       [297] "        finish_layer: function"                                                                                             
       [298] "        non_missing_aes: "                                                                                                  
       [299] "        optional_aes: "                                                                                                     
       [300] "        parameters: function"                                                                                               
       [301] "        required_aes: "                                                                                                     
       [302] "        retransform: TRUE"                                                                                                  
       [303] "        setup_data: function"                                                                                               
       [304] "        setup_params: function"                                                                                             
       [305] "        super:  <ggproto object: Class Stat, gg>"                                                                           
       [306] "    stat_params: list"                                                                                                      
       [307] "    super:  <ggproto object: Class Layer, gg> "                                                                             
       [308] " .. .. $ annotate...5   :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
       [309] "    aes_params: list"                                                                                                       
       [310] "    compute_aesthetics: function"                                                                                           
       [311] "    compute_geom_1: function"                                                                                               
       [312] "    compute_geom_2: function"                                                                                               
       [313] "    compute_position: function"                                                                                             
       [314] "    compute_statistic: function"                                                                                            
       [315] "    computed_geom_params: NULL"                                                                                             
       [316] "    computed_mapping: NULL"                                                                                                 
       [317] "    computed_stat_params: NULL"                                                                                             
       [318] "    constructor: call"                                                                                                      
       [319] "    data: data.frame"                                                                                                       
       [320] "    draw_geom: function"                                                                                                    
       [321] "    finish_statistics: function"                                                                                            
       [322] "    geom: <ggproto object: Class GeomText, Geom, gg>"                                                                       
       [323] "        aesthetics: function"                                                                                               
       [324] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [325] "        draw_group: function"                                                                                               
       [326] "        draw_key: function"                                                                                                 
       [327] "        draw_layer: function"                                                                                               
       [328] "        draw_panel: function"                                                                                               
       [329] "        extra_params: na.rm"                                                                                                
       [330] "        handle_na: function"                                                                                                
       [331] "        non_missing_aes: angle"                                                                                             
       [332] "        optional_aes: "                                                                                                     
       [333] "        parameters: function"                                                                                               
       [334] "        rename_size: FALSE"                                                                                                 
       [335] "        required_aes: x y label"                                                                                            
       [336] "        setup_data: function"                                                                                               
       [337] "        setup_params: function"                                                                                             
       [338] "        use_defaults: function"                                                                                             
       [339] "        super:  <ggproto object: Class Geom, gg>"                                                                           
       [340] "    geom_params: list"                                                                                                      
       [341] "    inherit.aes: FALSE"                                                                                                     
       [342] "    layer_data: function"                                                                                                   
       [343] "    layout: NULL"                                                                                                           
       [344] "    map_statistic: function"                                                                                                
       [345] "    mapping: unlabelled, ggplot2::mapping, uneval, gg, S7_object"                                                           
       [346] "    name: NULL"                                                                                                             
       [347] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
       [348] "        aesthetics: function"                                                                                               
       [349] "        compute_layer: function"                                                                                            
       [350] "        compute_panel: function"                                                                                            
       [351] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [352] "        required_aes: "                                                                                                     
       [353] "        setup_data: function"                                                                                               
       [354] "        setup_params: function"                                                                                             
       [355] "        use_defaults: function"                                                                                             
       [356] "        super:  <ggproto object: Class Position, gg>"                                                                       
       [357] "    print: function"                                                                                                        
       [358] "    setup_layer: function"                                                                                                  
       [359] "    show.legend: FALSE"                                                                                                     
       [360] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
       [361] "        aesthetics: function"                                                                                               
       [362] "        compute_group: function"                                                                                            
       [363] "        compute_layer: function"                                                                                            
       [364] "        compute_panel: function"                                                                                            
       [365] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [366] "        dropped_aes: "                                                                                                      
       [367] "        extra_params: na.rm"                                                                                                
       [368] "        finish_layer: function"                                                                                             
       [369] "        non_missing_aes: "                                                                                                  
       [370] "        optional_aes: "                                                                                                     
       [371] "        parameters: function"                                                                                               
       [372] "        required_aes: "                                                                                                     
       [373] "        retransform: TRUE"                                                                                                  
       [374] "        setup_data: function"                                                                                               
       [375] "        setup_params: function"                                                                                             
       [376] "        super:  <ggproto object: Class Stat, gg>"                                                                           
       [377] "    stat_params: list"                                                                                                      
       [378] "    super:  <ggproto object: Class Layer, gg> "                                                                             
       [379] " .. .. $ geom_smooth    :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
       [380] "    aes_params: list"                                                                                                       
       [381] "    compute_aesthetics: function"                                                                                           
       [382] "    compute_geom_1: function"                                                                                               
       [383] "    compute_geom_2: function"                                                                                               
       [384] "    compute_position: function"                                                                                             
       [385] "    compute_statistic: function"                                                                                            
       [386] "    computed_geom_params: NULL"                                                                                             
       [387] "    computed_mapping: NULL"                                                                                                 
       [388] "    computed_stat_params: NULL"                                                                                             
       [389] "    constructor: call"                                                                                                      
       [390] "    data: waiver"                                                                                                           
       [391] "    draw_geom: function"                                                                                                    
       [392] "    finish_statistics: function"                                                                                            
       [393] "    geom: <ggproto object: Class GeomSmooth, Geom, gg>"                                                                     
       [394] "        aesthetics: function"                                                                                               
       [395] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [396] "        draw_group: function"                                                                                               
       [397] "        draw_key: function"                                                                                                 
       [398] "        draw_layer: function"                                                                                               
       [399] "        draw_panel: function"                                                                                               
       [400] "        extra_params: na.rm orientation"                                                                                    
       [401] "        handle_na: function"                                                                                                
       [402] "        non_missing_aes: "                                                                                                  
       [403] "        optional_aes: ymin ymax"                                                                                            
       [404] "        parameters: function"                                                                                               
       [405] "        rename_size: TRUE"                                                                                                  
       [406] "        required_aes: x y"                                                                                                  
       [407] "        setup_data: function"                                                                                               
       [408] "        setup_params: function"                                                                                             
       [409] "        use_defaults: function"                                                                                             
       [410] "        super:  <ggproto object: Class Geom, gg>"                                                                           
       [411] "    geom_params: list"                                                                                                      
       [412] "    inherit.aes: TRUE"                                                                                                      
       [413] "    layer_data: function"                                                                                                   
       [414] "    layout: NULL"                                                                                                           
       [415] "    map_statistic: function"                                                                                                
       [416] "    mapping: NULL"                                                                                                          
       [417] "    name: NULL"                                                                                                             
       [418] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
       [419] "        aesthetics: function"                                                                                               
       [420] "        compute_layer: function"                                                                                            
       [421] "        compute_panel: function"                                                                                            
       [422] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [423] "        required_aes: "                                                                                                     
       [424] "        setup_data: function"                                                                                               
       [425] "        setup_params: function"                                                                                             
       [426] "        use_defaults: function"                                                                                             
       [427] "        super:  <ggproto object: Class Position, gg>"                                                                       
       [428] "    print: function"                                                                                                        
       [429] "    setup_layer: function"                                                                                                  
       [430] "    show.legend: NA"                                                                                                        
       [431] "    stat: <ggproto object: Class StatSmooth, Stat, gg>"                                                                     
       [432] "        aesthetics: function"                                                                                               
       [433] "        compute_group: function"                                                                                            
       [434] "        compute_layer: function"                                                                                            
       [435] "        compute_panel: function"                                                                                            
       [436] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [437] "        dropped_aes: weight"                                                                                                
       [438] "        extra_params: na.rm orientation"                                                                                    
       [439] "        finish_layer: function"                                                                                             
       [440] "        non_missing_aes: "                                                                                                  
       [441] "        optional_aes: "                                                                                                     
       [442] "        parameters: function"                                                                                               
       [443] "        required_aes: x y"                                                                                                  
       [444] "        retransform: TRUE"                                                                                                  
       [445] "        setup_data: function"                                                                                               
       [446] "        setup_params: function"                                                                                             
       [447] "        super:  <ggproto object: Class Stat, gg>"                                                                           
       [448] "    stat_params: list"                                                                                                      
       [449] "    super:  <ggproto object: Class Layer, gg> "                                                                             
       [450] " .. .. $ geom_text_repel:Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
       [451] "    aes_params: list"                                                                                                       
       [452] "    compute_aesthetics: function"                                                                                           
       [453] "    compute_geom_1: function"                                                                                               
       [454] "    compute_geom_2: function"                                                                                               
       [455] "    compute_position: function"                                                                                             
       [456] "    compute_statistic: function"                                                                                            
       [457] "    computed_geom_params: NULL"                                                                                             
       [458] "    computed_mapping: NULL"                                                                                                 
       [459] "    computed_stat_params: NULL"                                                                                             
       [460] "    constructor: call"                                                                                                      
       [461] "    data: data.frame"                                                                                                       
       [462] "    draw_geom: function"                                                                                                    
       [463] "    finish_statistics: function"                                                                                            
       [464] "    geom: <ggproto object: Class GeomTextRepel, Geom, gg>"                                                                  
       [465] "        aesthetics: function"                                                                                               
       [466] "        default_aes: uneval"                                                                                                
       [467] "        draw_group: function"                                                                                               
       [468] "        draw_key: function"                                                                                                 
       [469] "        draw_layer: function"                                                                                               
       [470] "        draw_panel: function"                                                                                               
       [471] "        extra_params: na.rm"                                                                                                
       [472] "        handle_na: function"                                                                                                
       [473] "        non_missing_aes: "                                                                                                  
       [474] "        optional_aes: "                                                                                                     
       [475] "        parameters: function"                                                                                               
       [476] "        rename_size: FALSE"                                                                                                 
       [477] "        required_aes: x y label"                                                                                            
       [478] "        setup_data: function"                                                                                               
       [479] "        setup_params: function"                                                                                             
       [480] "        use_defaults: function"                                                                                             
       [481] "        super:  <ggproto object: Class Geom, gg>"                                                                           
       [482] "    geom_params: list"                                                                                                      
       [483] "    inherit.aes: TRUE"                                                                                                      
       [484] "    layer_data: function"                                                                                                   
       [485] "    layout: NULL"                                                                                                           
       [486] "    map_statistic: function"                                                                                                
       [487] "    mapping: ggplot2::mapping, uneval, gg, S7_object"                                                                       
       [488] "    name: NULL"                                                                                                             
       [489] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
       [490] "        aesthetics: function"                                                                                               
       [491] "        compute_layer: function"                                                                                            
       [492] "        compute_panel: function"                                                                                            
       [493] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [494] "        required_aes: "                                                                                                     
       [495] "        setup_data: function"                                                                                               
       [496] "        setup_params: function"                                                                                             
       [497] "        use_defaults: function"                                                                                             
       [498] "        super:  <ggproto object: Class Position, gg>"                                                                       
       [499] "    print: function"                                                                                                        
       [500] "    setup_layer: function"                                                                                                  
       [501] "    show.legend: NA"                                                                                                        
       [502] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
       [503] "        aesthetics: function"                                                                                               
       [504] "        compute_group: function"                                                                                            
       [505] "        compute_layer: function"                                                                                            
       [506] "        compute_panel: function"                                                                                            
       [507] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [508] "        dropped_aes: "                                                                                                      
       [509] "        extra_params: na.rm"                                                                                                
       [510] "        finish_layer: function"                                                                                             
       [511] "        non_missing_aes: "                                                                                                  
       [512] "        optional_aes: "                                                                                                     
       [513] "        parameters: function"                                                                                               
       [514] "        required_aes: "                                                                                                     
       [515] "        retransform: TRUE"                                                                                                  
       [516] "        setup_data: function"                                                                                               
       [517] "        setup_params: function"                                                                                             
       [518] "        super:  <ggproto object: Class Stat, gg>"                                                                           
       [519] "    stat_params: list"                                                                                                      
       [520] "    super:  <ggproto object: Class Layer, gg> "                                                                             
       [521] " .. .. $ geom_segment   :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
       [522] "    aes_params: list"                                                                                                       
       [523] "    compute_aesthetics: function"                                                                                           
       [524] "    compute_geom_1: function"                                                                                               
       [525] "    compute_geom_2: function"                                                                                               
       [526] "    compute_position: function"                                                                                             
       [527] "    compute_statistic: function"                                                                                            
       [528] "    computed_geom_params: NULL"                                                                                             
       [529] "    computed_mapping: NULL"                                                                                                 
       [530] "    computed_stat_params: NULL"                                                                                             
       [531] "    constructor: call"                                                                                                      
       [532] "    data: waiver"                                                                                                           
       [533] "    draw_geom: function"                                                                                                    
       [534] "    finish_statistics: function"                                                                                            
       [535] "    geom: <ggproto object: Class GeomSegment, Geom, gg>"                                                                    
       [536] "        aesthetics: function"                                                                                               
       [537] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [538] "        draw_group: function"                                                                                               
       [539] "        draw_key: function"                                                                                                 
       [540] "        draw_layer: function"                                                                                               
       [541] "        draw_panel: function"                                                                                               
       [542] "        extra_params: na.rm"                                                                                                
       [543] "        handle_na: function"                                                                                                
       [544] "        non_missing_aes: linetype linewidth"                                                                                
       [545] "        optional_aes: "                                                                                                     
       [546] "        parameters: function"                                                                                               
       [547] "        rename_size: TRUE"                                                                                                  
       [548] "        required_aes: x y xend|yend"                                                                                        
       [549] "        setup_data: function"                                                                                               
       [550] "        setup_params: function"                                                                                             
       [551] "        use_defaults: function"                                                                                             
       [552] "        super:  <ggproto object: Class Geom, gg>"                                                                           
       [553] "    geom_params: list"                                                                                                      
       [554] "    inherit.aes: TRUE"                                                                                                      
       [555] "    layer_data: function"                                                                                                   
       [556] "    layout: NULL"                                                                                                           
       [557] "    map_statistic: function"                                                                                                
       [558] "    mapping: ggplot2::mapping, uneval, gg, S7_object"                                                                       
       [559] "    name: NULL"                                                                                                             
       [560] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
       [561] "        aesthetics: function"                                                                                               
       [562] "        compute_layer: function"                                                                                            
       [563] "        compute_panel: function"                                                                                            
       [564] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [565] "        required_aes: "                                                                                                     
       [566] "        setup_data: function"                                                                                               
       [567] "        setup_params: function"                                                                                             
       [568] "        use_defaults: function"                                                                                             
       [569] "        super:  <ggproto object: Class Position, gg>"                                                                       
       [570] "    print: function"                                                                                                        
       [571] "    setup_layer: function"                                                                                                  
       [572] "    show.legend: NA"                                                                                                        
       [573] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
       [574] "        aesthetics: function"                                                                                               
       [575] "        compute_group: function"                                                                                            
       [576] "        compute_layer: function"                                                                                            
       [577] "        compute_panel: function"                                                                                            
       [578] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [579] "        dropped_aes: "                                                                                                      
       [580] "        extra_params: na.rm"                                                                                                
       [581] "        finish_layer: function"                                                                                             
       [582] "        non_missing_aes: "                                                                                                  
       [583] "        optional_aes: "                                                                                                     
       [584] "        parameters: function"                                                                                               
       [585] "        required_aes: "                                                                                                     
       [586] "        retransform: TRUE"                                                                                                  
       [587] "        setup_data: function"                                                                                               
       [588] "        setup_params: function"                                                                                             
       [589] "        super:  <ggproto object: Class Stat, gg>"                                                                           
       [590] "    stat_params: list"                                                                                                      
       [591] "    super:  <ggproto object: Class Layer, gg> "                                                                             
       [592] " .. .. $ annotate...9   :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
       [593] "    aes_params: list"                                                                                                       
       [594] "    compute_aesthetics: function"                                                                                           
       [595] "    compute_geom_1: function"                                                                                               
       [596] "    compute_geom_2: function"                                                                                               
       [597] "    compute_position: function"                                                                                             
       [598] "    compute_statistic: function"                                                                                            
       [599] "    computed_geom_params: NULL"                                                                                             
       [600] "    computed_mapping: NULL"                                                                                                 
       [601] "    computed_stat_params: NULL"                                                                                             
       [602] "    constructor: call"                                                                                                      
       [603] "    data: data.frame"                                                                                                       
       [604] "    draw_geom: function"                                                                                                    
       [605] "    finish_statistics: function"                                                                                            
       [606] "    geom: <ggproto object: Class GeomText, Geom, gg>"                                                                       
       [607] "        aesthetics: function"                                                                                               
       [608] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [609] "        draw_group: function"                                                                                               
       [610] "        draw_key: function"                                                                                                 
       [611] "        draw_layer: function"                                                                                               
       [612] "        draw_panel: function"                                                                                               
       [613] "        extra_params: na.rm"                                                                                                
       [614] "        handle_na: function"                                                                                                
       [615] "        non_missing_aes: angle"                                                                                             
       [616] "        optional_aes: "                                                                                                     
       [617] "        parameters: function"                                                                                               
       [618] "        rename_size: FALSE"                                                                                                 
       [619] "        required_aes: x y label"                                                                                            
       [620] "        setup_data: function"                                                                                               
       [621] "        setup_params: function"                                                                                             
       [622] "        use_defaults: function"                                                                                             
       [623] "        super:  <ggproto object: Class Geom, gg>"                                                                           
       [624] "    geom_params: list"                                                                                                      
       [625] "    inherit.aes: FALSE"                                                                                                     
       [626] "    layer_data: function"                                                                                                   
       [627] "    layout: NULL"                                                                                                           
       [628] "    map_statistic: function"                                                                                                
       [629] "    mapping: unlabelled, ggplot2::mapping, uneval, gg, S7_object"                                                           
       [630] "    name: NULL"                                                                                                             
       [631] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
       [632] "        aesthetics: function"                                                                                               
       [633] "        compute_layer: function"                                                                                            
       [634] "        compute_panel: function"                                                                                            
       [635] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [636] "        required_aes: "                                                                                                     
       [637] "        setup_data: function"                                                                                               
       [638] "        setup_params: function"                                                                                             
       [639] "        use_defaults: function"                                                                                             
       [640] "        super:  <ggproto object: Class Position, gg>"                                                                       
       [641] "    print: function"                                                                                                        
       [642] "    setup_layer: function"                                                                                                  
       [643] "    show.legend: FALSE"                                                                                                     
       [644] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
       [645] "        aesthetics: function"                                                                                               
       [646] "        compute_group: function"                                                                                            
       [647] "        compute_layer: function"                                                                                            
       [648] "        compute_panel: function"                                                                                            
       [649] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [650] "        dropped_aes: "                                                                                                      
       [651] "        extra_params: na.rm"                                                                                                
       [652] "        finish_layer: function"                                                                                             
       [653] "        non_missing_aes: "                                                                                                  
       [654] "        optional_aes: "                                                                                                     
       [655] "        parameters: function"                                                                                               
       [656] "        required_aes: "                                                                                                     
       [657] "        retransform: TRUE"                                                                                                  
       [658] "        setup_data: function"                                                                                               
       [659] "        setup_params: function"                                                                                             
       [660] "        super:  <ggproto object: Class Stat, gg>"                                                                           
       [661] "    stat_params: list"                                                                                                      
       [662] "    super:  <ggproto object: Class Layer, gg> "                                                                             
       [663] " .. .. $ geom_line      :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
       [664] "    aes_params: list"                                                                                                       
       [665] "    compute_aesthetics: function"                                                                                           
       [666] "    compute_geom_1: function"                                                                                               
       [667] "    compute_geom_2: function"                                                                                               
       [668] "    compute_position: function"                                                                                             
       [669] "    compute_statistic: function"                                                                                            
       [670] "    computed_geom_params: NULL"                                                                                             
       [671] "    computed_mapping: NULL"                                                                                                 
       [672] "    computed_stat_params: NULL"                                                                                             
       [673] "    constructor: call"                                                                                                      
       [674] "    data: data.frame"                                                                                                       
       [675] "    draw_geom: function"                                                                                                    
       [676] "    finish_statistics: function"                                                                                            
       [677] "    geom: <ggproto object: Class GeomLine, GeomPath, Geom, gg>"                                                             
       [678] "        aesthetics: function"                                                                                               
       [679] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [680] "        draw_group: function"                                                                                               
       [681] "        draw_key: function"                                                                                                 
       [682] "        draw_layer: function"                                                                                               
       [683] "        draw_panel: function"                                                                                               
       [684] "        extra_params: na.rm orientation"                                                                                    
       [685] "        handle_na: function"                                                                                                
       [686] "        non_missing_aes: linewidth colour linetype"                                                                         
       [687] "        optional_aes: "                                                                                                     
       [688] "        parameters: function"                                                                                               
       [689] "        rename_size: TRUE"                                                                                                  
       [690] "        required_aes: x y"                                                                                                  
       [691] "        setup_data: function"                                                                                               
       [692] "        setup_params: function"                                                                                             
       [693] "        use_defaults: function"                                                                                             
       [694] "        super:  <ggproto object: Class GeomPath, Geom, gg>"                                                                 
       [695] "    geom_params: list"                                                                                                      
       [696] "    inherit.aes: TRUE"                                                                                                      
       [697] "    layer_data: function"                                                                                                   
       [698] "    layout: NULL"                                                                                                           
       [699] "    map_statistic: function"                                                                                                
       [700] "    mapping: ggplot2::mapping, uneval, gg, S7_object"                                                                       
       [701] "    name: NULL"                                                                                                             
       [702] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
       [703] "        aesthetics: function"                                                                                               
       [704] "        compute_layer: function"                                                                                            
       [705] "        compute_panel: function"                                                                                            
       [706] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [707] "        required_aes: "                                                                                                     
       [708] "        setup_data: function"                                                                                               
       [709] "        setup_params: function"                                                                                             
       [710] "        use_defaults: function"                                                                                             
       [711] "        super:  <ggproto object: Class Position, gg>"                                                                       
       [712] "    print: function"                                                                                                        
       [713] "    setup_layer: function"                                                                                                  
       [714] "    show.legend: NA"                                                                                                        
       [715] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
       [716] "        aesthetics: function"                                                                                               
       [717] "        compute_group: function"                                                                                            
       [718] "        compute_layer: function"                                                                                            
       [719] "        compute_panel: function"                                                                                            
       [720] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [721] "        dropped_aes: "                                                                                                      
       [722] "        extra_params: na.rm"                                                                                                
       [723] "        finish_layer: function"                                                                                             
       [724] "        non_missing_aes: "                                                                                                  
       [725] "        optional_aes: "                                                                                                     
       [726] "        parameters: function"                                                                                               
       [727] "        required_aes: "                                                                                                     
       [728] "        retransform: TRUE"                                                                                                  
       [729] "        setup_data: function"                                                                                               
       [730] "        setup_params: function"                                                                                             
       [731] "        super:  <ggproto object: Class Stat, gg>"                                                                           
       [732] "    stat_params: list"                                                                                                      
       [733] "    super:  <ggproto object: Class Layer, gg> "                                                                             
       [734] " .. .. $ geom_text      :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
       [735] "    aes_params: list"                                                                                                       
       [736] "    compute_aesthetics: function"                                                                                           
       [737] "    compute_geom_1: function"                                                                                               
       [738] "    compute_geom_2: function"                                                                                               
       [739] "    compute_position: function"                                                                                             
       [740] "    compute_statistic: function"                                                                                            
       [741] "    computed_geom_params: NULL"                                                                                             
       [742] "    computed_mapping: NULL"                                                                                                 
       [743] "    computed_stat_params: NULL"                                                                                             
       [744] "    constructor: call"                                                                                                      
       [745] "    data: waiver"                                                                                                           
       [746] "    draw_geom: function"                                                                                                    
       [747] "    finish_statistics: function"                                                                                            
       [748] "    geom: <ggproto object: Class GeomText, Geom, gg>"                                                                       
       [749] "        aesthetics: function"                                                                                               
       [750] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [751] "        draw_group: function"                                                                                               
       [752] "        draw_key: function"                                                                                                 
       [753] "        draw_layer: function"                                                                                               
       [754] "        draw_panel: function"                                                                                               
       [755] "        extra_params: na.rm"                                                                                                
       [756] "        handle_na: function"                                                                                                
       [757] "        non_missing_aes: angle"                                                                                             
       [758] "        optional_aes: "                                                                                                     
       [759] "        parameters: function"                                                                                               
       [760] "        rename_size: FALSE"                                                                                                 
       [761] "        required_aes: x y label"                                                                                            
       [762] "        setup_data: function"                                                                                               
       [763] "        setup_params: function"                                                                                             
       [764] "        use_defaults: function"                                                                                             
       [765] "        super:  <ggproto object: Class Geom, gg>"                                                                           
       [766] "    geom_params: list"                                                                                                      
       [767] "    inherit.aes: TRUE"                                                                                                      
       [768] "    layer_data: function"                                                                                                   
       [769] "    layout: NULL"                                                                                                           
       [770] "    map_statistic: function"                                                                                                
       [771] "    mapping: NULL"                                                                                                          
       [772] "    name: NULL"                                                                                                             
       [773] "    position: <ggproto object: Class PositionNudge, Position, gg>"                                                          
       [774] "        aesthetics: function"                                                                                               
       [775] "        compute_layer: function"                                                                                            
       [776] "        compute_panel: function"                                                                                            
       [777] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [778] "        required_aes: "                                                                                                     
       [779] "        setup_data: function"                                                                                               
       [780] "        setup_params: function"                                                                                             
       [781] "        use_defaults: function"                                                                                             
       [782] "        x: NULL"                                                                                                            
       [783] "        y: NULL"                                                                                                            
       [784] "        super:  <ggproto object: Class Position, gg>"                                                                       
       [785] "    print: function"                                                                                                        
       [786] "    setup_layer: function"                                                                                                  
       [787] "    show.legend: NA"                                                                                                        
       [788] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
       [789] "        aesthetics: function"                                                                                               
       [790] "        compute_group: function"                                                                                            
       [791] "        compute_layer: function"                                                                                            
       [792] "        compute_panel: function"                                                                                            
       [793] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [794] "        dropped_aes: "                                                                                                      
       [795] "        extra_params: na.rm"                                                                                                
       [796] "        finish_layer: function"                                                                                             
       [797] "        non_missing_aes: "                                                                                                  
       [798] "        optional_aes: "                                                                                                     
       [799] "        parameters: function"                                                                                               
       [800] "        required_aes: "                                                                                                     
       [801] "        retransform: TRUE"                                                                                                  
       [802] "        setup_data: function"                                                                                               
       [803] "        setup_params: function"                                                                                             
       [804] "        super:  <ggproto object: Class Stat, gg>"                                                                           
       [805] "    stat_params: list"                                                                                                      
       [806] "    super:  <ggproto object: Class Layer, gg> "                                                                             
       [807] " .. .. $ geom_line...12 :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
       [808] "    aes_params: list"                                                                                                       
       [809] "    compute_aesthetics: function"                                                                                           
       [810] "    compute_geom_1: function"                                                                                               
       [811] "    compute_geom_2: function"                                                                                               
       [812] "    compute_position: function"                                                                                             
       [813] "    compute_statistic: function"                                                                                            
       [814] "    computed_geom_params: NULL"                                                                                             
       [815] "    computed_mapping: NULL"                                                                                                 
       [816] "    computed_stat_params: NULL"                                                                                             
       [817] "    constructor: call"                                                                                                      
       [818] "    data: data.frame"                                                                                                       
       [819] "    draw_geom: function"                                                                                                    
       [820] "    finish_statistics: function"                                                                                            
       [821] "    geom: <ggproto object: Class GeomLine, GeomPath, Geom, gg>"                                                             
       [822] "        aesthetics: function"                                                                                               
       [823] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [824] "        draw_group: function"                                                                                               
       [825] "        draw_key: function"                                                                                                 
       [826] "        draw_layer: function"                                                                                               
       [827] "        draw_panel: function"                                                                                               
       [828] "        extra_params: na.rm orientation"                                                                                    
       [829] "        handle_na: function"                                                                                                
       [830] "        non_missing_aes: linewidth colour linetype"                                                                         
       [831] "        optional_aes: "                                                                                                     
       [832] "        parameters: function"                                                                                               
       [833] "        rename_size: TRUE"                                                                                                  
       [834] "        required_aes: x y"                                                                                                  
       [835] "        setup_data: function"                                                                                               
       [836] "        setup_params: function"                                                                                             
       [837] "        use_defaults: function"                                                                                             
       [838] "        super:  <ggproto object: Class GeomPath, Geom, gg>"                                                                 
       [839] "    geom_params: list"                                                                                                      
       [840] "    inherit.aes: TRUE"                                                                                                      
       [841] "    layer_data: function"                                                                                                   
       [842] "    layout: NULL"                                                                                                           
       [843] "    map_statistic: function"                                                                                                
       [844] "    mapping: ggplot2::mapping, uneval, gg, S7_object"                                                                       
       [845] "    name: NULL"                                                                                                             
       [846] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
       [847] "        aesthetics: function"                                                                                               
       [848] "        compute_layer: function"                                                                                            
       [849] "        compute_panel: function"                                                                                            
       [850] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [851] "        required_aes: "                                                                                                     
       [852] "        setup_data: function"                                                                                               
       [853] "        setup_params: function"                                                                                             
       [854] "        use_defaults: function"                                                                                             
       [855] "        super:  <ggproto object: Class Position, gg>"                                                                       
       [856] "    print: function"                                                                                                        
       [857] "    setup_layer: function"                                                                                                  
       [858] "    show.legend: NA"                                                                                                        
       [859] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
       [860] "        aesthetics: function"                                                                                               
       [861] "        compute_group: function"                                                                                            
       [862] "        compute_layer: function"                                                                                            
       [863] "        compute_panel: function"                                                                                            
       [864] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [865] "        dropped_aes: "                                                                                                      
       [866] "        extra_params: na.rm"                                                                                                
       [867] "        finish_layer: function"                                                                                             
       [868] "        non_missing_aes: "                                                                                                  
       [869] "        optional_aes: "                                                                                                     
       [870] "        parameters: function"                                                                                               
       [871] "        required_aes: "                                                                                                     
       [872] "        retransform: TRUE"                                                                                                  
       [873] "        setup_data: function"                                                                                               
       [874] "        setup_params: function"                                                                                             
       [875] "        super:  <ggproto object: Class Stat, gg>"                                                                           
       [876] "    stat_params: list"                                                                                                      
       [877] "    super:  <ggproto object: Class Layer, gg> "                                                                             
       [878] " .. .. $ geom_text...13 :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
       [879] "    aes_params: list"                                                                                                       
       [880] "    compute_aesthetics: function"                                                                                           
       [881] "    compute_geom_1: function"                                                                                               
       [882] "    compute_geom_2: function"                                                                                               
       [883] "    compute_position: function"                                                                                             
       [884] "    compute_statistic: function"                                                                                            
       [885] "    computed_geom_params: NULL"                                                                                             
       [886] "    computed_mapping: NULL"                                                                                                 
       [887] "    computed_stat_params: NULL"                                                                                             
       [888] "    constructor: call"                                                                                                      
       [889] "    data: waiver"                                                                                                           
       [890] "    draw_geom: function"                                                                                                    
       [891] "    finish_statistics: function"                                                                                            
       [892] "    geom: <ggproto object: Class GeomText, Geom, gg>"                                                                       
       [893] "        aesthetics: function"                                                                                               
       [894] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [895] "        draw_group: function"                                                                                               
       [896] "        draw_key: function"                                                                                                 
       [897] "        draw_layer: function"                                                                                               
       [898] "        draw_panel: function"                                                                                               
       [899] "        extra_params: na.rm"                                                                                                
       [900] "        handle_na: function"                                                                                                
       [901] "        non_missing_aes: angle"                                                                                             
       [902] "        optional_aes: "                                                                                                     
       [903] "        parameters: function"                                                                                               
       [904] "        rename_size: FALSE"                                                                                                 
       [905] "        required_aes: x y label"                                                                                            
       [906] "        setup_data: function"                                                                                               
       [907] "        setup_params: function"                                                                                             
       [908] "        use_defaults: function"                                                                                             
       [909] "        super:  <ggproto object: Class Geom, gg>"                                                                           
       [910] "    geom_params: list"                                                                                                      
       [911] "    inherit.aes: TRUE"                                                                                                      
       [912] "    layer_data: function"                                                                                                   
       [913] "    layout: NULL"                                                                                                           
       [914] "    map_statistic: function"                                                                                                
       [915] "    mapping: NULL"                                                                                                          
       [916] "    name: NULL"                                                                                                             
       [917] "    position: <ggproto object: Class PositionNudge, Position, gg>"                                                          
       [918] "        aesthetics: function"                                                                                               
       [919] "        compute_layer: function"                                                                                            
       [920] "        compute_panel: function"                                                                                            
       [921] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [922] "        required_aes: "                                                                                                     
       [923] "        setup_data: function"                                                                                               
       [924] "        setup_params: function"                                                                                             
       [925] "        use_defaults: function"                                                                                             
       [926] "        x: NULL"                                                                                                            
       [927] "        y: NULL"                                                                                                            
       [928] "        super:  <ggproto object: Class Position, gg>"                                                                       
       [929] "    print: function"                                                                                                        
       [930] "    setup_layer: function"                                                                                                  
       [931] "    show.legend: NA"                                                                                                        
       [932] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
       [933] "        aesthetics: function"                                                                                               
       [934] "        compute_group: function"                                                                                            
       [935] "        compute_layer: function"                                                                                            
       [936] "        compute_panel: function"                                                                                            
       [937] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [938] "        dropped_aes: "                                                                                                      
       [939] "        extra_params: na.rm"                                                                                                
       [940] "        finish_layer: function"                                                                                             
       [941] "        non_missing_aes: "                                                                                                  
       [942] "        optional_aes: "                                                                                                     
       [943] "        parameters: function"                                                                                               
       [944] "        required_aes: "                                                                                                     
       [945] "        retransform: TRUE"                                                                                                  
       [946] "        setup_data: function"                                                                                               
       [947] "        setup_params: function"                                                                                             
       [948] "        super:  <ggproto object: Class Stat, gg>"                                                                           
       [949] "    stat_params: list"                                                                                                      
       [950] "    super:  <ggproto object: Class Layer, gg> "                                                                             
       [951] " .. .. $ geom_line...14 :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
       [952] "    aes_params: list"                                                                                                       
       [953] "    compute_aesthetics: function"                                                                                           
       [954] "    compute_geom_1: function"                                                                                               
       [955] "    compute_geom_2: function"                                                                                               
       [956] "    compute_position: function"                                                                                             
       [957] "    compute_statistic: function"                                                                                            
       [958] "    computed_geom_params: NULL"                                                                                             
       [959] "    computed_mapping: NULL"                                                                                                 
       [960] "    computed_stat_params: NULL"                                                                                             
       [961] "    constructor: call"                                                                                                      
       [962] "    data: data.frame"                                                                                                       
       [963] "    draw_geom: function"                                                                                                    
       [964] "    finish_statistics: function"                                                                                            
       [965] "    geom: <ggproto object: Class GeomLine, GeomPath, Geom, gg>"                                                             
       [966] "        aesthetics: function"                                                                                               
       [967] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [968] "        draw_group: function"                                                                                               
       [969] "        draw_key: function"                                                                                                 
       [970] "        draw_layer: function"                                                                                               
       [971] "        draw_panel: function"                                                                                               
       [972] "        extra_params: na.rm orientation"                                                                                    
       [973] "        handle_na: function"                                                                                                
       [974] "        non_missing_aes: linewidth colour linetype"                                                                         
       [975] "        optional_aes: "                                                                                                     
       [976] "        parameters: function"                                                                                               
       [977] "        rename_size: TRUE"                                                                                                  
       [978] "        required_aes: x y"                                                                                                  
       [979] "        setup_data: function"                                                                                               
       [980] "        setup_params: function"                                                                                             
       [981] "        use_defaults: function"                                                                                             
       [982] "        super:  <ggproto object: Class GeomPath, Geom, gg>"                                                                 
       [983] "    geom_params: list"                                                                                                      
       [984] "    inherit.aes: TRUE"                                                                                                      
       [985] "    layer_data: function"                                                                                                   
       [986] "    layout: NULL"                                                                                                           
       [987] "    map_statistic: function"                                                                                                
       [988] "    mapping: ggplot2::mapping, uneval, gg, S7_object"                                                                       
       [989] "    name: NULL"                                                                                                             
       [990] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
       [991] "        aesthetics: function"                                                                                               
       [992] "        compute_layer: function"                                                                                            
       [993] "        compute_panel: function"                                                                                            
       [994] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [995] "        required_aes: "                                                                                                     
       [996] "        setup_data: function"                                                                                               
       [997] "        setup_params: function"                                                                                             
       [998] "        use_defaults: function"                                                                                             
       [999] "        super:  <ggproto object: Class Position, gg>"                                                                       
      [1000] "    print: function"                                                                                                        
      [1001] "    setup_layer: function"                                                                                                  
      [1002] "    show.legend: NA"                                                                                                        
      [1003] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
      [1004] "        aesthetics: function"                                                                                               
      [1005] "        compute_group: function"                                                                                            
      [1006] "        compute_layer: function"                                                                                            
      [1007] "        compute_panel: function"                                                                                            
      [1008] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [1009] "        dropped_aes: "                                                                                                      
      [1010] "        extra_params: na.rm"                                                                                                
      [1011] "        finish_layer: function"                                                                                             
      [1012] "        non_missing_aes: "                                                                                                  
      [1013] "        optional_aes: "                                                                                                     
      [1014] "        parameters: function"                                                                                               
      [1015] "        required_aes: "                                                                                                     
      [1016] "        retransform: TRUE"                                                                                                  
      [1017] "        setup_data: function"                                                                                               
      [1018] "        setup_params: function"                                                                                             
      [1019] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [1020] "    stat_params: list"                                                                                                      
      [1021] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [1022] " .. .. $ geom_text...15 :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
      [1023] "    aes_params: list"                                                                                                       
      [1024] "    compute_aesthetics: function"                                                                                           
      [1025] "    compute_geom_1: function"                                                                                               
      [1026] "    compute_geom_2: function"                                                                                               
      [1027] "    compute_position: function"                                                                                             
      [1028] "    compute_statistic: function"                                                                                            
      [1029] "    computed_geom_params: NULL"                                                                                             
      [1030] "    computed_mapping: NULL"                                                                                                 
      [1031] "    computed_stat_params: NULL"                                                                                             
      [1032] "    constructor: call"                                                                                                      
      [1033] "    data: waiver"                                                                                                           
      [1034] "    draw_geom: function"                                                                                                    
      [1035] "    finish_statistics: function"                                                                                            
      [1036] "    geom: <ggproto object: Class GeomText, Geom, gg>"                                                                       
      [1037] "        aesthetics: function"                                                                                               
      [1038] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [1039] "        draw_group: function"                                                                                               
      [1040] "        draw_key: function"                                                                                                 
      [1041] "        draw_layer: function"                                                                                               
      [1042] "        draw_panel: function"                                                                                               
      [1043] "        extra_params: na.rm"                                                                                                
      [1044] "        handle_na: function"                                                                                                
      [1045] "        non_missing_aes: angle"                                                                                             
      [1046] "        optional_aes: "                                                                                                     
      [1047] "        parameters: function"                                                                                               
      [1048] "        rename_size: FALSE"                                                                                                 
      [1049] "        required_aes: x y label"                                                                                            
      [1050] "        setup_data: function"                                                                                               
      [1051] "        setup_params: function"                                                                                             
      [1052] "        use_defaults: function"                                                                                             
      [1053] "        super:  <ggproto object: Class Geom, gg>"                                                                           
      [1054] "    geom_params: list"                                                                                                      
      [1055] "    inherit.aes: TRUE"                                                                                                      
      [1056] "    layer_data: function"                                                                                                   
      [1057] "    layout: NULL"                                                                                                           
      [1058] "    map_statistic: function"                                                                                                
      [1059] "    mapping: NULL"                                                                                                          
      [1060] "    name: NULL"                                                                                                             
      [1061] "    position: <ggproto object: Class PositionNudge, Position, gg>"                                                          
      [1062] "        aesthetics: function"                                                                                               
      [1063] "        compute_layer: function"                                                                                            
      [1064] "        compute_panel: function"                                                                                            
      [1065] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [1066] "        required_aes: "                                                                                                     
      [1067] "        setup_data: function"                                                                                               
      [1068] "        setup_params: function"                                                                                             
      [1069] "        use_defaults: function"                                                                                             
      [1070] "        x: NULL"                                                                                                            
      [1071] "        y: NULL"                                                                                                            
      [1072] "        super:  <ggproto object: Class Position, gg>"                                                                       
      [1073] "    print: function"                                                                                                        
      [1074] "    setup_layer: function"                                                                                                  
      [1075] "    show.legend: NA"                                                                                                        
      [1076] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
      [1077] "        aesthetics: function"                                                                                               
      [1078] "        compute_group: function"                                                                                            
      [1079] "        compute_layer: function"                                                                                            
      [1080] "        compute_panel: function"                                                                                            
      [1081] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [1082] "        dropped_aes: "                                                                                                      
      [1083] "        extra_params: na.rm"                                                                                                
      [1084] "        finish_layer: function"                                                                                             
      [1085] "        non_missing_aes: "                                                                                                  
      [1086] "        optional_aes: "                                                                                                     
      [1087] "        parameters: function"                                                                                               
      [1088] "        required_aes: "                                                                                                     
      [1089] "        retransform: TRUE"                                                                                                  
      [1090] "        setup_data: function"                                                                                               
      [1091] "        setup_params: function"                                                                                             
      [1092] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [1093] "    stat_params: list"                                                                                                      
      [1094] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [1095] "  ..@ scales     :Classes 'ScalesList', 'ggproto', 'gg' <ggproto object: Class ScalesList, gg>"                             
      [1096] "    add: function"                                                                                                          
      [1097] "    add_defaults: function"                                                                                                 
      [1098] "    add_missing: function"                                                                                                  
      [1099] "    backtransform_df: function"                                                                                             
      [1100] "    clone: function"                                                                                                        
      [1101] "    find: function"                                                                                                         
      [1102] "    get_scales: function"                                                                                                   
      [1103] "    has_scale: function"                                                                                                    
      [1104] "    input: function"                                                                                                        
      [1105] "    map_df: function"                                                                                                       
      [1106] "    n: function"                                                                                                            
      [1107] "    non_position_scales: function"                                                                                          
      [1108] "    scales: list"                                                                                                           
      [1109] "    set_palettes: function"                                                                                                 
      [1110] "    train_df: function"                                                                                                     
      [1111] "    transform_df: function"                                                                                                 
      [1112] "    super:  <ggproto object: Class ScalesList, gg> "                                                                        
      [1113] "  ..@ guides     :Classes 'Guides', 'ggproto', 'gg' <ggproto object: Class Guides, gg>"                                     
      [1114] "    add: function"                                                                                                          
      [1115] "    assemble: function"                                                                                                     
      [1116] "    build: function"                                                                                                        
      [1117] "    draw: function"                                                                                                         
      [1118] "    get_custom: function"                                                                                                   
      [1119] "    get_guide: function"                                                                                                    
      [1120] "    get_params: function"                                                                                                   
      [1121] "    get_position: function"                                                                                                 
      [1122] "    guides: NULL"                                                                                                           
      [1123] "    merge: function"                                                                                                        
      [1124] "    missing: <ggproto object: Class GuideNone, Guide, gg>"                                                                  
      [1125] "        add_title: function"                                                                                                
      [1126] "        arrange_layout: function"                                                                                           
      [1127] "        assemble_drawing: function"                                                                                         
      [1128] "        available_aes: any"                                                                                                 
      [1129] "        build_decor: function"                                                                                              
      [1130] "        build_labels: function"                                                                                             
      [1131] "        build_ticks: function"                                                                                              
      [1132] "        build_title: function"                                                                                              
      [1133] "        draw: function"                                                                                                     
      [1134] "        draw_early_exit: function"                                                                                          
      [1135] "        elements: list"                                                                                                     
      [1136] "        extract_decor: function"                                                                                            
      [1137] "        extract_key: function"                                                                                              
      [1138] "        extract_params: function"                                                                                           
      [1139] "        get_layer_key: function"                                                                                            
      [1140] "        hashables: list"                                                                                                    
      [1141] "        measure_grobs: function"                                                                                            
      [1142] "        merge: function"                                                                                                    
      [1143] "        override_elements: function"                                                                                        
      [1144] "        params: list"                                                                                                       
      [1145] "        process_layers: function"                                                                                           
      [1146] "        setup_elements: function"                                                                                           
      [1147] "        setup_params: function"                                                                                             
      [1148] "        train: function"                                                                                                    
      [1149] "        transform: function"                                                                                                
      [1150] "        super:  <ggproto object: Class GuideNone, Guide, gg>"                                                               
      [1151] "    package_box: function"                                                                                                  
      [1152] "    print: function"                                                                                                        
      [1153] "    process_layers: function"                                                                                               
      [1154] "    setup: function"                                                                                                        
      [1155] "    subset_guides: function"                                                                                                
      [1156] "    train: function"                                                                                                        
      [1157] "    update_params: function"                                                                                                
      [1158] "    super:  <ggproto object: Class Guides, gg> "                                                                            
      [1159] "  ..@ mapping    : <ggplot2::mapping> List of 2"                                                                            
      [1160] " .. .. $ x: language ~.hat"                                                                                                 
      [1161] " .. .. $ y: language ~.std.resid"                                                                                           
      [1162] "  ..@ theme      : <theme>  Named list()"                                                                                   
      [1163] " .. .. @ complete: logi FALSE"                                                                                              
      [1164] " .. .. @ validate: logi TRUE"                                                                                               
      [1165] "  ..@ coordinates:Classes 'CoordCartesian', 'Coord', 'ggproto', 'gg' <ggproto object: Class CoordCartesian, Coord, gg>"     
      [1166] "    aspect: function"                                                                                                       
      [1167] "    backtransform_range: function"                                                                                          
      [1168] "    clip: on"                                                                                                               
      [1169] "    default: TRUE"                                                                                                          
      [1170] "    distance: function"                                                                                                     
      [1171] "    draw_panel: function"                                                                                                   
      [1172] "    expand: TRUE"                                                                                                           
      [1173] "    is_free: function"                                                                                                      
      [1174] "    is_linear: function"                                                                                                    
      [1175] "    labels: function"                                                                                                       
      [1176] "    limits: list"                                                                                                           
      [1177] "    modify_scales: function"                                                                                                
      [1178] "    range: function"                                                                                                        
      [1179] "    ratio: NULL"                                                                                                            
      [1180] "    render_axis_h: function"                                                                                                
      [1181] "    render_axis_v: function"                                                                                                
      [1182] "    render_bg: function"                                                                                                    
      [1183] "    render_fg: function"                                                                                                    
      [1184] "    reverse: none"                                                                                                          
      [1185] "    setup_data: function"                                                                                                   
      [1186] "    setup_layout: function"                                                                                                 
      [1187] "    setup_panel_guides: function"                                                                                           
      [1188] "    setup_panel_params: function"                                                                                           
      [1189] "    setup_params: function"                                                                                                 
      [1190] "    train_panel_guides: function"                                                                                           
      [1191] "    transform: function"                                                                                                    
      [1192] "    super:  <ggproto object: Class CoordCartesian, Coord, gg> "                                                             
      [1193] "  ..@ facet      :Classes 'FacetNull', 'Facet', 'ggproto', 'gg' <ggproto object: Class FacetNull, Facet, gg>"               
      [1194] "    attach_axes: function"                                                                                                  
      [1195] "    attach_strips: function"                                                                                                
      [1196] "    compute_layout: function"                                                                                               
      [1197] "    draw_back: function"                                                                                                    
      [1198] "    draw_front: function"                                                                                                   
      [1199] "    draw_labels: function"                                                                                                  
      [1200] "    draw_panel_content: function"                                                                                           
      [1201] "    draw_panels: function"                                                                                                  
      [1202] "    finish_data: function"                                                                                                  
      [1203] "    format_strip_labels: function"                                                                                          
      [1204] "    init_gtable: function"                                                                                                  
      [1205] "    init_scales: function"                                                                                                  
      [1206] "    map_data: function"                                                                                                     
      [1207] "    params: list"                                                                                                           
      [1208] "    set_panel_size: function"                                                                                               
      [1209] "    setup_data: function"                                                                                                   
      [1210] "    setup_panel_params: function"                                                                                           
      [1211] "    setup_params: function"                                                                                                 
      [1212] "    shrink: TRUE"                                                                                                           
      [1213] "    train_scales: function"                                                                                                 
      [1214] "    vars: function"                                                                                                         
      [1215] "    super:  <ggproto object: Class FacetNull, Facet, gg> "                                                                  
      [1216] "  ..@ layout     :Classes 'Layout', 'ggproto', 'gg' <ggproto object: Class Layout, gg>"                                     
      [1217] "    coord: NULL"                                                                                                            
      [1218] "    coord_params: list"                                                                                                     
      [1219] "    facet: NULL"                                                                                                            
      [1220] "    facet_params: list"                                                                                                     
      [1221] "    finish_data: function"                                                                                                  
      [1222] "    get_scales: function"                                                                                                   
      [1223] "    layout: NULL"                                                                                                           
      [1224] "    map_position: function"                                                                                                 
      [1225] "    panel_params: NULL"                                                                                                     
      [1226] "    panel_scales_x: NULL"                                                                                                   
      [1227] "    panel_scales_y: NULL"                                                                                                   
      [1228] "    render: function"                                                                                                       
      [1229] "    render_labels: function"                                                                                                
      [1230] "    reset_scales: function"                                                                                                 
      [1231] "    resolve_label: function"                                                                                                
      [1232] "    setup: function"                                                                                                        
      [1233] "    setup_panel_guides: function"                                                                                           
      [1234] "    setup_panel_params: function"                                                                                           
      [1235] "    train_position: function"                                                                                               
      [1236] "    super:  <ggproto object: Class Layout, gg> "                                                                            
      [1237] "  ..@ labels     : <ggplot2::labels> List of 2"                                                                             
      [1238] " .. .. $ x: chr \"Leverage\""                                                                                               
      [1239] " .. .. $ y: chr \"Standard Residual\""                                                                                      
      [1240] "  ..@ meta       : list()"                                                                                                  
      

