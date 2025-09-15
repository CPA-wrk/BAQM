# lm_plot.qq produces expected plot elements for cars

    Code
      lm_plot.qq_cars
    Output
      $mdl
      
      Call:
      lm(formula = mpg ~ wt + hp, data = mtcars)
      
      Coefficients:
      (Intercept)           wt           hp  
          37.2273      -3.8778      -0.0318  
      
      
      $opt
      $opt$pval.SW
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
      [1] 0.5 1.0
      
      $parm$cook$ltyp
      [1] "dashed"
      
      
      $parm$infl
      $parm$infl$ltyp
      [1] "dashed"
      
      
      $parm$qq
      $parm$qq$lim
                 x        y
      min -2.15387 -3.94098
      max  2.15387  5.85379
      
      $parm$qq$qqlin
      $parm$qq$qqlin$probs
      [1] 0.25 0.75
      
      $parm$qq$qqlin$theory
      [1] -0.67449  0.67449
      
      $parm$qq$qqlin$resid
      [1] -1.60022  1.04986
      
      $parm$qq$qqlin$slope
      [1] 1.96451
      
      $parm$qq$qqlin$int
      [1] -0.275183
      
      
      $parm$qq$SW
      
      	Shapiro-Wilk normality test
      
      data:  df$.resid
      W = 0.9279, p-value = 0.0343
      
      
      
      
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
        [2] " $ qq: <ggplot2::ggplot>"                                                                                                   
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
       [21] "  ..@ layers     :List of 8"                                                                                                
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
      [379] " .. .. $ geom_abline    :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
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
      [393] "    geom: <ggproto object: Class GeomAbline, Geom, gg>"                                                                     
      [394] "        aesthetics: function"                                                                                               
      [395] "        check_constant_aes: FALSE"                                                                                          
      [396] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [397] "        draw_group: function"                                                                                               
      [398] "        draw_key: function"                                                                                                 
      [399] "        draw_layer: function"                                                                                               
      [400] "        draw_panel: function"                                                                                               
      [401] "        extra_params: na.rm"                                                                                                
      [402] "        handle_na: function"                                                                                                
      [403] "        non_missing_aes: "                                                                                                  
      [404] "        optional_aes: "                                                                                                     
      [405] "        parameters: function"                                                                                               
      [406] "        rename_size: TRUE"                                                                                                  
      [407] "        required_aes: slope intercept"                                                                                      
      [408] "        setup_data: function"                                                                                               
      [409] "        setup_params: function"                                                                                             
      [410] "        use_defaults: function"                                                                                             
      [411] "        super:  <ggproto object: Class Geom, gg>"                                                                           
      [412] "    geom_params: list"                                                                                                      
      [413] "    inherit.aes: FALSE"                                                                                                     
      [414] "    layer_data: function"                                                                                                   
      [415] "    layout: NULL"                                                                                                           
      [416] "    map_statistic: function"                                                                                                
      [417] "    mapping: ggplot2::mapping, uneval, gg, S7_object"                                                                       
      [418] "    name: NULL"                                                                                                             
      [419] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
      [420] "        aesthetics: function"                                                                                               
      [421] "        compute_layer: function"                                                                                            
      [422] "        compute_panel: function"                                                                                            
      [423] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [424] "        required_aes: "                                                                                                     
      [425] "        setup_data: function"                                                                                               
      [426] "        setup_params: function"                                                                                             
      [427] "        use_defaults: function"                                                                                             
      [428] "        super:  <ggproto object: Class Position, gg>"                                                                       
      [429] "    print: function"                                                                                                        
      [430] "    setup_layer: function"                                                                                                  
      [431] "    show.legend: NA"                                                                                                        
      [432] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
      [433] "        aesthetics: function"                                                                                               
      [434] "        compute_group: function"                                                                                            
      [435] "        compute_layer: function"                                                                                            
      [436] "        compute_panel: function"                                                                                            
      [437] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [438] "        dropped_aes: "                                                                                                      
      [439] "        extra_params: na.rm"                                                                                                
      [440] "        finish_layer: function"                                                                                             
      [441] "        non_missing_aes: "                                                                                                  
      [442] "        optional_aes: "                                                                                                     
      [443] "        parameters: function"                                                                                               
      [444] "        required_aes: "                                                                                                     
      [445] "        retransform: TRUE"                                                                                                  
      [446] "        setup_data: function"                                                                                               
      [447] "        setup_params: function"                                                                                             
      [448] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [449] "    stat_params: list"                                                                                                      
      [450] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [451] " .. .. $ geom_text_repel:Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
      [452] "    aes_params: list"                                                                                                       
      [453] "    compute_aesthetics: function"                                                                                           
      [454] "    compute_geom_1: function"                                                                                               
      [455] "    compute_geom_2: function"                                                                                               
      [456] "    compute_position: function"                                                                                             
      [457] "    compute_statistic: function"                                                                                            
      [458] "    computed_geom_params: NULL"                                                                                             
      [459] "    computed_mapping: NULL"                                                                                                 
      [460] "    computed_stat_params: NULL"                                                                                             
      [461] "    constructor: call"                                                                                                      
      [462] "    data: data.frame"                                                                                                       
      [463] "    draw_geom: function"                                                                                                    
      [464] "    finish_statistics: function"                                                                                            
      [465] "    geom: <ggproto object: Class GeomTextRepel, Geom, gg>"                                                                  
      [466] "        aesthetics: function"                                                                                               
      [467] "        default_aes: uneval"                                                                                                
      [468] "        draw_group: function"                                                                                               
      [469] "        draw_key: function"                                                                                                 
      [470] "        draw_layer: function"                                                                                               
      [471] "        draw_panel: function"                                                                                               
      [472] "        extra_params: na.rm"                                                                                                
      [473] "        handle_na: function"                                                                                                
      [474] "        non_missing_aes: "                                                                                                  
      [475] "        optional_aes: "                                                                                                     
      [476] "        parameters: function"                                                                                               
      [477] "        rename_size: FALSE"                                                                                                 
      [478] "        required_aes: x y label"                                                                                            
      [479] "        setup_data: function"                                                                                               
      [480] "        setup_params: function"                                                                                             
      [481] "        use_defaults: function"                                                                                             
      [482] "        super:  <ggproto object: Class Geom, gg>"                                                                           
      [483] "    geom_params: list"                                                                                                      
      [484] "    inherit.aes: TRUE"                                                                                                      
      [485] "    layer_data: function"                                                                                                   
      [486] "    layout: NULL"                                                                                                           
      [487] "    map_statistic: function"                                                                                                
      [488] "    mapping: ggplot2::mapping, uneval, gg, S7_object"                                                                       
      [489] "    name: NULL"                                                                                                             
      [490] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
      [491] "        aesthetics: function"                                                                                               
      [492] "        compute_layer: function"                                                                                            
      [493] "        compute_panel: function"                                                                                            
      [494] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [495] "        required_aes: "                                                                                                     
      [496] "        setup_data: function"                                                                                               
      [497] "        setup_params: function"                                                                                             
      [498] "        use_defaults: function"                                                                                             
      [499] "        super:  <ggproto object: Class Position, gg>"                                                                       
      [500] "    print: function"                                                                                                        
      [501] "    setup_layer: function"                                                                                                  
      [502] "    show.legend: NA"                                                                                                        
      [503] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
      [504] "        aesthetics: function"                                                                                               
      [505] "        compute_group: function"                                                                                            
      [506] "        compute_layer: function"                                                                                            
      [507] "        compute_panel: function"                                                                                            
      [508] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [509] "        dropped_aes: "                                                                                                      
      [510] "        extra_params: na.rm"                                                                                                
      [511] "        finish_layer: function"                                                                                             
      [512] "        non_missing_aes: "                                                                                                  
      [513] "        optional_aes: "                                                                                                     
      [514] "        parameters: function"                                                                                               
      [515] "        required_aes: "                                                                                                     
      [516] "        retransform: TRUE"                                                                                                  
      [517] "        setup_data: function"                                                                                               
      [518] "        setup_params: function"                                                                                             
      [519] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [520] "    stat_params: list"                                                                                                      
      [521] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [522] " .. .. $ annotate...8   :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
      [523] "    aes_params: list"                                                                                                       
      [524] "    compute_aesthetics: function"                                                                                           
      [525] "    compute_geom_1: function"                                                                                               
      [526] "    compute_geom_2: function"                                                                                               
      [527] "    compute_position: function"                                                                                             
      [528] "    compute_statistic: function"                                                                                            
      [529] "    computed_geom_params: NULL"                                                                                             
      [530] "    computed_mapping: NULL"                                                                                                 
      [531] "    computed_stat_params: NULL"                                                                                             
      [532] "    constructor: call"                                                                                                      
      [533] "    data: data.frame"                                                                                                       
      [534] "    draw_geom: function"                                                                                                    
      [535] "    finish_statistics: function"                                                                                            
      [536] "    geom: <ggproto object: Class GeomText, Geom, gg>"                                                                       
      [537] "        aesthetics: function"                                                                                               
      [538] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [539] "        draw_group: function"                                                                                               
      [540] "        draw_key: function"                                                                                                 
      [541] "        draw_layer: function"                                                                                               
      [542] "        draw_panel: function"                                                                                               
      [543] "        extra_params: na.rm"                                                                                                
      [544] "        handle_na: function"                                                                                                
      [545] "        non_missing_aes: angle"                                                                                             
      [546] "        optional_aes: "                                                                                                     
      [547] "        parameters: function"                                                                                               
      [548] "        rename_size: FALSE"                                                                                                 
      [549] "        required_aes: x y label"                                                                                            
      [550] "        setup_data: function"                                                                                               
      [551] "        setup_params: function"                                                                                             
      [552] "        use_defaults: function"                                                                                             
      [553] "        super:  <ggproto object: Class Geom, gg>"                                                                           
      [554] "    geom_params: list"                                                                                                      
      [555] "    inherit.aes: FALSE"                                                                                                     
      [556] "    layer_data: function"                                                                                                   
      [557] "    layout: NULL"                                                                                                           
      [558] "    map_statistic: function"                                                                                                
      [559] "    mapping: unlabelled, ggplot2::mapping, uneval, gg, S7_object"                                                           
      [560] "    name: NULL"                                                                                                             
      [561] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
      [562] "        aesthetics: function"                                                                                               
      [563] "        compute_layer: function"                                                                                            
      [564] "        compute_panel: function"                                                                                            
      [565] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [566] "        required_aes: "                                                                                                     
      [567] "        setup_data: function"                                                                                               
      [568] "        setup_params: function"                                                                                             
      [569] "        use_defaults: function"                                                                                             
      [570] "        super:  <ggproto object: Class Position, gg>"                                                                       
      [571] "    print: function"                                                                                                        
      [572] "    setup_layer: function"                                                                                                  
      [573] "    show.legend: FALSE"                                                                                                     
      [574] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
      [575] "        aesthetics: function"                                                                                               
      [576] "        compute_group: function"                                                                                            
      [577] "        compute_layer: function"                                                                                            
      [578] "        compute_panel: function"                                                                                            
      [579] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [580] "        dropped_aes: "                                                                                                      
      [581] "        extra_params: na.rm"                                                                                                
      [582] "        finish_layer: function"                                                                                             
      [583] "        non_missing_aes: "                                                                                                  
      [584] "        optional_aes: "                                                                                                     
      [585] "        parameters: function"                                                                                               
      [586] "        required_aes: "                                                                                                     
      [587] "        retransform: TRUE"                                                                                                  
      [588] "        setup_data: function"                                                                                               
      [589] "        setup_params: function"                                                                                             
      [590] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [591] "    stat_params: list"                                                                                                      
      [592] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [593] "  ..@ scales     :Classes 'ScalesList', 'ggproto', 'gg' <ggproto object: Class ScalesList, gg>"                             
      [594] "    add: function"                                                                                                          
      [595] "    add_defaults: function"                                                                                                 
      [596] "    add_missing: function"                                                                                                  
      [597] "    backtransform_df: function"                                                                                             
      [598] "    clone: function"                                                                                                        
      [599] "    find: function"                                                                                                         
      [600] "    get_scales: function"                                                                                                   
      [601] "    has_scale: function"                                                                                                    
      [602] "    input: function"                                                                                                        
      [603] "    map_df: function"                                                                                                       
      [604] "    n: function"                                                                                                            
      [605] "    non_position_scales: function"                                                                                          
      [606] "    scales: list"                                                                                                           
      [607] "    set_palettes: function"                                                                                                 
      [608] "    train_df: function"                                                                                                     
      [609] "    transform_df: function"                                                                                                 
      [610] "    super:  <ggproto object: Class ScalesList, gg> "                                                                        
      [611] "  ..@ guides     :Classes 'Guides', 'ggproto', 'gg' <ggproto object: Class Guides, gg>"                                     
      [612] "    add: function"                                                                                                          
      [613] "    assemble: function"                                                                                                     
      [614] "    build: function"                                                                                                        
      [615] "    draw: function"                                                                                                         
      [616] "    get_custom: function"                                                                                                   
      [617] "    get_guide: function"                                                                                                    
      [618] "    get_params: function"                                                                                                   
      [619] "    get_position: function"                                                                                                 
      [620] "    guides: NULL"                                                                                                           
      [621] "    merge: function"                                                                                                        
      [622] "    missing: <ggproto object: Class GuideNone, Guide, gg>"                                                                  
      [623] "        add_title: function"                                                                                                
      [624] "        arrange_layout: function"                                                                                           
      [625] "        assemble_drawing: function"                                                                                         
      [626] "        available_aes: any"                                                                                                 
      [627] "        build_decor: function"                                                                                              
      [628] "        build_labels: function"                                                                                             
      [629] "        build_ticks: function"                                                                                              
      [630] "        build_title: function"                                                                                              
      [631] "        draw: function"                                                                                                     
      [632] "        draw_early_exit: function"                                                                                          
      [633] "        elements: list"                                                                                                     
      [634] "        extract_decor: function"                                                                                            
      [635] "        extract_key: function"                                                                                              
      [636] "        extract_params: function"                                                                                           
      [637] "        get_layer_key: function"                                                                                            
      [638] "        hashables: list"                                                                                                    
      [639] "        measure_grobs: function"                                                                                            
      [640] "        merge: function"                                                                                                    
      [641] "        override_elements: function"                                                                                        
      [642] "        params: list"                                                                                                       
      [643] "        process_layers: function"                                                                                           
      [644] "        setup_elements: function"                                                                                           
      [645] "        setup_params: function"                                                                                             
      [646] "        train: function"                                                                                                    
      [647] "        transform: function"                                                                                                
      [648] "        super:  <ggproto object: Class GuideNone, Guide, gg>"                                                               
      [649] "    package_box: function"                                                                                                  
      [650] "    print: function"                                                                                                        
      [651] "    process_layers: function"                                                                                               
      [652] "    setup: function"                                                                                                        
      [653] "    subset_guides: function"                                                                                                
      [654] "    train: function"                                                                                                        
      [655] "    update_params: function"                                                                                                
      [656] "    super:  <ggproto object: Class Guides, gg> "                                                                            
      [657] "  ..@ mapping    : <ggplot2::mapping> List of 2"                                                                            
      [658] " .. .. $ x: language ~.quantile"                                                                                            
      [659] " .. .. $ y: language ~.resid"                                                                                               
      [660] "  ..@ theme      : <theme>  Named list()"                                                                                   
      [661] " .. .. @ complete: logi FALSE"                                                                                              
      [662] " .. .. @ validate: logi TRUE"                                                                                               
      [663] "  ..@ coordinates:Classes 'CoordCartesian', 'Coord', 'ggproto', 'gg' <ggproto object: Class CoordCartesian, Coord, gg>"     
      [664] "    aspect: function"                                                                                                       
      [665] "    backtransform_range: function"                                                                                          
      [666] "    clip: on"                                                                                                               
      [667] "    default: TRUE"                                                                                                          
      [668] "    distance: function"                                                                                                     
      [669] "    draw_panel: function"                                                                                                   
      [670] "    expand: TRUE"                                                                                                           
      [671] "    is_free: function"                                                                                                      
      [672] "    is_linear: function"                                                                                                    
      [673] "    labels: function"                                                                                                       
      [674] "    limits: list"                                                                                                           
      [675] "    modify_scales: function"                                                                                                
      [676] "    range: function"                                                                                                        
      [677] "    ratio: NULL"                                                                                                            
      [678] "    render_axis_h: function"                                                                                                
      [679] "    render_axis_v: function"                                                                                                
      [680] "    render_bg: function"                                                                                                    
      [681] "    render_fg: function"                                                                                                    
      [682] "    reverse: none"                                                                                                          
      [683] "    setup_data: function"                                                                                                   
      [684] "    setup_layout: function"                                                                                                 
      [685] "    setup_panel_guides: function"                                                                                           
      [686] "    setup_panel_params: function"                                                                                           
      [687] "    setup_params: function"                                                                                                 
      [688] "    train_panel_guides: function"                                                                                           
      [689] "    transform: function"                                                                                                    
      [690] "    super:  <ggproto object: Class CoordCartesian, Coord, gg> "                                                             
      [691] "  ..@ facet      :Classes 'FacetNull', 'Facet', 'ggproto', 'gg' <ggproto object: Class FacetNull, Facet, gg>"               
      [692] "    attach_axes: function"                                                                                                  
      [693] "    attach_strips: function"                                                                                                
      [694] "    compute_layout: function"                                                                                               
      [695] "    draw_back: function"                                                                                                    
      [696] "    draw_front: function"                                                                                                   
      [697] "    draw_labels: function"                                                                                                  
      [698] "    draw_panel_content: function"                                                                                           
      [699] "    draw_panels: function"                                                                                                  
      [700] "    finish_data: function"                                                                                                  
      [701] "    format_strip_labels: function"                                                                                          
      [702] "    init_gtable: function"                                                                                                  
      [703] "    init_scales: function"                                                                                                  
      [704] "    map_data: function"                                                                                                     
      [705] "    params: list"                                                                                                           
      [706] "    set_panel_size: function"                                                                                               
      [707] "    setup_data: function"                                                                                                   
      [708] "    setup_panel_params: function"                                                                                           
      [709] "    setup_params: function"                                                                                                 
      [710] "    shrink: TRUE"                                                                                                           
      [711] "    train_scales: function"                                                                                                 
      [712] "    vars: function"                                                                                                         
      [713] "    super:  <ggproto object: Class FacetNull, Facet, gg> "                                                                  
      [714] "  ..@ layout     :Classes 'Layout', 'ggproto', 'gg' <ggproto object: Class Layout, gg>"                                     
      [715] "    coord: NULL"                                                                                                            
      [716] "    coord_params: list"                                                                                                     
      [717] "    facet: NULL"                                                                                                            
      [718] "    facet_params: list"                                                                                                     
      [719] "    finish_data: function"                                                                                                  
      [720] "    get_scales: function"                                                                                                   
      [721] "    layout: NULL"                                                                                                           
      [722] "    map_position: function"                                                                                                 
      [723] "    panel_params: NULL"                                                                                                     
      [724] "    panel_scales_x: NULL"                                                                                                   
      [725] "    panel_scales_y: NULL"                                                                                                   
      [726] "    render: function"                                                                                                       
      [727] "    render_labels: function"                                                                                                
      [728] "    reset_scales: function"                                                                                                 
      [729] "    resolve_label: function"                                                                                                
      [730] "    setup: function"                                                                                                        
      [731] "    setup_panel_guides: function"                                                                                           
      [732] "    setup_panel_params: function"                                                                                           
      [733] "    train_position: function"                                                                                               
      [734] "    super:  <ggproto object: Class Layout, gg> "                                                                            
      [735] "  ..@ labels     : <ggplot2::labels> List of 2"                                                                             
      [736] " .. .. $ x: chr \"Theoretical Quantile\""                                                                                   
      [737] " .. .. $ y: chr \"Residual\""                                                                                               
      [738] "  ..@ meta       : list()"                                                                                                  
      

