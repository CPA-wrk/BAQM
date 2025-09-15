# lm_plot.var produces expected plot elements for cars

    Code
      lm_plot.var_cars
    Output
      $mdl
      
      Call:
      lm(formula = mpg ~ wt + hp, data = mtcars)
      
      Coefficients:
      (Intercept)           wt           hp  
          37.2273      -3.8778      -0.0318  
      
      
      $opt
      $opt$pval.BP
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
      
      
      $parm$var
      $parm$var$lim
                 x        y
      min  9.19249 -3.94098
      max 29.31238  5.85379
      
      $parm$var$BP
      
      	studentized Breusch-Pagan test
      
      data:  mdl
      BP = 0.8807, df = 2, p-value = 0.644
      
      
      
      
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
        [2] " $ var: <ggplot2::ggplot>"                                                                                                  
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
       [21] "  ..@ layers     :List of 6"                                                                                                
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
       [94] " .. .. $ geom_point     :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
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
      [105] "    data: waiver"                                                                                                           
      [106] "    draw_geom: function"                                                                                                    
      [107] "    finish_statistics: function"                                                                                            
      [108] "    geom: <ggproto object: Class GeomPoint, Geom, gg>"                                                                      
      [109] "        aesthetics: function"                                                                                               
      [110] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [111] "        draw_group: function"                                                                                               
      [112] "        draw_key: function"                                                                                                 
      [113] "        draw_layer: function"                                                                                               
      [114] "        draw_panel: function"                                                                                               
      [115] "        extra_params: na.rm"                                                                                                
      [116] "        handle_na: function"                                                                                                
      [117] "        non_missing_aes: size shape colour"                                                                                 
      [118] "        optional_aes: "                                                                                                     
      [119] "        parameters: function"                                                                                               
      [120] "        rename_size: FALSE"                                                                                                 
      [121] "        required_aes: x y"                                                                                                  
      [122] "        setup_data: function"                                                                                               
      [123] "        setup_params: function"                                                                                             
      [124] "        use_defaults: function"                                                                                             
      [125] "        super:  <ggproto object: Class Geom, gg>"                                                                           
      [126] "    geom_params: list"                                                                                                      
      [127] "    inherit.aes: TRUE"                                                                                                      
      [128] "    layer_data: function"                                                                                                   
      [129] "    layout: NULL"                                                                                                           
      [130] "    map_statistic: function"                                                                                                
      [131] "    mapping: ggplot2::mapping, uneval, gg, S7_object"                                                                       
      [132] "    name: NULL"                                                                                                             
      [133] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
      [134] "        aesthetics: function"                                                                                               
      [135] "        compute_layer: function"                                                                                            
      [136] "        compute_panel: function"                                                                                            
      [137] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [138] "        required_aes: "                                                                                                     
      [139] "        setup_data: function"                                                                                               
      [140] "        setup_params: function"                                                                                             
      [141] "        use_defaults: function"                                                                                             
      [142] "        super:  <ggproto object: Class Position, gg>"                                                                       
      [143] "    print: function"                                                                                                        
      [144] "    setup_layer: function"                                                                                                  
      [145] "    show.legend: FALSE"                                                                                                     
      [146] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
      [147] "        aesthetics: function"                                                                                               
      [148] "        compute_group: function"                                                                                            
      [149] "        compute_layer: function"                                                                                            
      [150] "        compute_panel: function"                                                                                            
      [151] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [152] "        dropped_aes: "                                                                                                      
      [153] "        extra_params: na.rm"                                                                                                
      [154] "        finish_layer: function"                                                                                             
      [155] "        non_missing_aes: "                                                                                                  
      [156] "        optional_aes: "                                                                                                     
      [157] "        parameters: function"                                                                                               
      [158] "        required_aes: "                                                                                                     
      [159] "        retransform: TRUE"                                                                                                  
      [160] "        setup_data: function"                                                                                               
      [161] "        setup_params: function"                                                                                             
      [162] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [163] "    stat_params: list"                                                                                                      
      [164] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [165] " .. .. $ annotate       :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
      [166] "    aes_params: list"                                                                                                       
      [167] "    compute_aesthetics: function"                                                                                           
      [168] "    compute_geom_1: function"                                                                                               
      [169] "    compute_geom_2: function"                                                                                               
      [170] "    compute_position: function"                                                                                             
      [171] "    compute_statistic: function"                                                                                            
      [172] "    computed_geom_params: NULL"                                                                                             
      [173] "    computed_mapping: NULL"                                                                                                 
      [174] "    computed_stat_params: NULL"                                                                                             
      [175] "    constructor: call"                                                                                                      
      [176] "    data: data.frame"                                                                                                       
      [177] "    draw_geom: function"                                                                                                    
      [178] "    finish_statistics: function"                                                                                            
      [179] "    geom: <ggproto object: Class GeomPoint, Geom, gg>"                                                                      
      [180] "        aesthetics: function"                                                                                               
      [181] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [182] "        draw_group: function"                                                                                               
      [183] "        draw_key: function"                                                                                                 
      [184] "        draw_layer: function"                                                                                               
      [185] "        draw_panel: function"                                                                                               
      [186] "        extra_params: na.rm"                                                                                                
      [187] "        handle_na: function"                                                                                                
      [188] "        non_missing_aes: size shape colour"                                                                                 
      [189] "        optional_aes: "                                                                                                     
      [190] "        parameters: function"                                                                                               
      [191] "        rename_size: FALSE"                                                                                                 
      [192] "        required_aes: x y"                                                                                                  
      [193] "        setup_data: function"                                                                                               
      [194] "        setup_params: function"                                                                                             
      [195] "        use_defaults: function"                                                                                             
      [196] "        super:  <ggproto object: Class Geom, gg>"                                                                           
      [197] "    geom_params: list"                                                                                                      
      [198] "    inherit.aes: FALSE"                                                                                                     
      [199] "    layer_data: function"                                                                                                   
      [200] "    layout: NULL"                                                                                                           
      [201] "    map_statistic: function"                                                                                                
      [202] "    mapping: unlabelled, ggplot2::mapping, uneval, gg, S7_object"                                                           
      [203] "    name: NULL"                                                                                                             
      [204] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
      [205] "        aesthetics: function"                                                                                               
      [206] "        compute_layer: function"                                                                                            
      [207] "        compute_panel: function"                                                                                            
      [208] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [209] "        required_aes: "                                                                                                     
      [210] "        setup_data: function"                                                                                               
      [211] "        setup_params: function"                                                                                             
      [212] "        use_defaults: function"                                                                                             
      [213] "        super:  <ggproto object: Class Position, gg>"                                                                       
      [214] "    print: function"                                                                                                        
      [215] "    setup_layer: function"                                                                                                  
      [216] "    show.legend: FALSE"                                                                                                     
      [217] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
      [218] "        aesthetics: function"                                                                                               
      [219] "        compute_group: function"                                                                                            
      [220] "        compute_layer: function"                                                                                            
      [221] "        compute_panel: function"                                                                                            
      [222] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [223] "        dropped_aes: "                                                                                                      
      [224] "        extra_params: na.rm"                                                                                                
      [225] "        finish_layer: function"                                                                                             
      [226] "        non_missing_aes: "                                                                                                  
      [227] "        optional_aes: "                                                                                                     
      [228] "        parameters: function"                                                                                               
      [229] "        required_aes: "                                                                                                     
      [230] "        retransform: TRUE"                                                                                                  
      [231] "        setup_data: function"                                                                                               
      [232] "        setup_params: function"                                                                                             
      [233] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [234] "    stat_params: list"                                                                                                      
      [235] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [236] " .. .. $ annotate...4   :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
      [237] "    aes_params: list"                                                                                                       
      [238] "    compute_aesthetics: function"                                                                                           
      [239] "    compute_geom_1: function"                                                                                               
      [240] "    compute_geom_2: function"                                                                                               
      [241] "    compute_position: function"                                                                                             
      [242] "    compute_statistic: function"                                                                                            
      [243] "    computed_geom_params: NULL"                                                                                             
      [244] "    computed_mapping: NULL"                                                                                                 
      [245] "    computed_stat_params: NULL"                                                                                             
      [246] "    constructor: call"                                                                                                      
      [247] "    data: data.frame"                                                                                                       
      [248] "    draw_geom: function"                                                                                                    
      [249] "    finish_statistics: function"                                                                                            
      [250] "    geom: <ggproto object: Class GeomText, Geom, gg>"                                                                       
      [251] "        aesthetics: function"                                                                                               
      [252] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [253] "        draw_group: function"                                                                                               
      [254] "        draw_key: function"                                                                                                 
      [255] "        draw_layer: function"                                                                                               
      [256] "        draw_panel: function"                                                                                               
      [257] "        extra_params: na.rm"                                                                                                
      [258] "        handle_na: function"                                                                                                
      [259] "        non_missing_aes: angle"                                                                                             
      [260] "        optional_aes: "                                                                                                     
      [261] "        parameters: function"                                                                                               
      [262] "        rename_size: FALSE"                                                                                                 
      [263] "        required_aes: x y label"                                                                                            
      [264] "        setup_data: function"                                                                                               
      [265] "        setup_params: function"                                                                                             
      [266] "        use_defaults: function"                                                                                             
      [267] "        super:  <ggproto object: Class Geom, gg>"                                                                           
      [268] "    geom_params: list"                                                                                                      
      [269] "    inherit.aes: FALSE"                                                                                                     
      [270] "    layer_data: function"                                                                                                   
      [271] "    layout: NULL"                                                                                                           
      [272] "    map_statistic: function"                                                                                                
      [273] "    mapping: unlabelled, ggplot2::mapping, uneval, gg, S7_object"                                                           
      [274] "    name: NULL"                                                                                                             
      [275] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
      [276] "        aesthetics: function"                                                                                               
      [277] "        compute_layer: function"                                                                                            
      [278] "        compute_panel: function"                                                                                            
      [279] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [280] "        required_aes: "                                                                                                     
      [281] "        setup_data: function"                                                                                               
      [282] "        setup_params: function"                                                                                             
      [283] "        use_defaults: function"                                                                                             
      [284] "        super:  <ggproto object: Class Position, gg>"                                                                       
      [285] "    print: function"                                                                                                        
      [286] "    setup_layer: function"                                                                                                  
      [287] "    show.legend: FALSE"                                                                                                     
      [288] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
      [289] "        aesthetics: function"                                                                                               
      [290] "        compute_group: function"                                                                                            
      [291] "        compute_layer: function"                                                                                            
      [292] "        compute_panel: function"                                                                                            
      [293] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [294] "        dropped_aes: "                                                                                                      
      [295] "        extra_params: na.rm"                                                                                                
      [296] "        finish_layer: function"                                                                                             
      [297] "        non_missing_aes: "                                                                                                  
      [298] "        optional_aes: "                                                                                                     
      [299] "        parameters: function"                                                                                               
      [300] "        required_aes: "                                                                                                     
      [301] "        retransform: TRUE"                                                                                                  
      [302] "        setup_data: function"                                                                                               
      [303] "        setup_params: function"                                                                                             
      [304] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [305] "    stat_params: list"                                                                                                      
      [306] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [307] " .. .. $ geom_text_repel:Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
      [308] "    aes_params: list"                                                                                                       
      [309] "    compute_aesthetics: function"                                                                                           
      [310] "    compute_geom_1: function"                                                                                               
      [311] "    compute_geom_2: function"                                                                                               
      [312] "    compute_position: function"                                                                                             
      [313] "    compute_statistic: function"                                                                                            
      [314] "    computed_geom_params: NULL"                                                                                             
      [315] "    computed_mapping: NULL"                                                                                                 
      [316] "    computed_stat_params: NULL"                                                                                             
      [317] "    constructor: call"                                                                                                      
      [318] "    data: data.frame"                                                                                                       
      [319] "    draw_geom: function"                                                                                                    
      [320] "    finish_statistics: function"                                                                                            
      [321] "    geom: <ggproto object: Class GeomTextRepel, Geom, gg>"                                                                  
      [322] "        aesthetics: function"                                                                                               
      [323] "        default_aes: uneval"                                                                                                
      [324] "        draw_group: function"                                                                                               
      [325] "        draw_key: function"                                                                                                 
      [326] "        draw_layer: function"                                                                                               
      [327] "        draw_panel: function"                                                                                               
      [328] "        extra_params: na.rm"                                                                                                
      [329] "        handle_na: function"                                                                                                
      [330] "        non_missing_aes: "                                                                                                  
      [331] "        optional_aes: "                                                                                                     
      [332] "        parameters: function"                                                                                               
      [333] "        rename_size: FALSE"                                                                                                 
      [334] "        required_aes: x y label"                                                                                            
      [335] "        setup_data: function"                                                                                               
      [336] "        setup_params: function"                                                                                             
      [337] "        use_defaults: function"                                                                                             
      [338] "        super:  <ggproto object: Class Geom, gg>"                                                                           
      [339] "    geom_params: list"                                                                                                      
      [340] "    inherit.aes: TRUE"                                                                                                      
      [341] "    layer_data: function"                                                                                                   
      [342] "    layout: NULL"                                                                                                           
      [343] "    map_statistic: function"                                                                                                
      [344] "    mapping: ggplot2::mapping, uneval, gg, S7_object"                                                                       
      [345] "    name: NULL"                                                                                                             
      [346] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
      [347] "        aesthetics: function"                                                                                               
      [348] "        compute_layer: function"                                                                                            
      [349] "        compute_panel: function"                                                                                            
      [350] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [351] "        required_aes: "                                                                                                     
      [352] "        setup_data: function"                                                                                               
      [353] "        setup_params: function"                                                                                             
      [354] "        use_defaults: function"                                                                                             
      [355] "        super:  <ggproto object: Class Position, gg>"                                                                       
      [356] "    print: function"                                                                                                        
      [357] "    setup_layer: function"                                                                                                  
      [358] "    show.legend: NA"                                                                                                        
      [359] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
      [360] "        aesthetics: function"                                                                                               
      [361] "        compute_group: function"                                                                                            
      [362] "        compute_layer: function"                                                                                            
      [363] "        compute_panel: function"                                                                                            
      [364] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [365] "        dropped_aes: "                                                                                                      
      [366] "        extra_params: na.rm"                                                                                                
      [367] "        finish_layer: function"                                                                                             
      [368] "        non_missing_aes: "                                                                                                  
      [369] "        optional_aes: "                                                                                                     
      [370] "        parameters: function"                                                                                               
      [371] "        required_aes: "                                                                                                     
      [372] "        retransform: TRUE"                                                                                                  
      [373] "        setup_data: function"                                                                                               
      [374] "        setup_params: function"                                                                                             
      [375] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [376] "    stat_params: list"                                                                                                      
      [377] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [378] " .. .. $ annotate...6   :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
      [379] "    aes_params: list"                                                                                                       
      [380] "    compute_aesthetics: function"                                                                                           
      [381] "    compute_geom_1: function"                                                                                               
      [382] "    compute_geom_2: function"                                                                                               
      [383] "    compute_position: function"                                                                                             
      [384] "    compute_statistic: function"                                                                                            
      [385] "    computed_geom_params: NULL"                                                                                             
      [386] "    computed_mapping: NULL"                                                                                                 
      [387] "    computed_stat_params: NULL"                                                                                             
      [388] "    constructor: call"                                                                                                      
      [389] "    data: data.frame"                                                                                                       
      [390] "    draw_geom: function"                                                                                                    
      [391] "    finish_statistics: function"                                                                                            
      [392] "    geom: <ggproto object: Class GeomText, Geom, gg>"                                                                       
      [393] "        aesthetics: function"                                                                                               
      [394] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [395] "        draw_group: function"                                                                                               
      [396] "        draw_key: function"                                                                                                 
      [397] "        draw_layer: function"                                                                                               
      [398] "        draw_panel: function"                                                                                               
      [399] "        extra_params: na.rm"                                                                                                
      [400] "        handle_na: function"                                                                                                
      [401] "        non_missing_aes: angle"                                                                                             
      [402] "        optional_aes: "                                                                                                     
      [403] "        parameters: function"                                                                                               
      [404] "        rename_size: FALSE"                                                                                                 
      [405] "        required_aes: x y label"                                                                                            
      [406] "        setup_data: function"                                                                                               
      [407] "        setup_params: function"                                                                                             
      [408] "        use_defaults: function"                                                                                             
      [409] "        super:  <ggproto object: Class Geom, gg>"                                                                           
      [410] "    geom_params: list"                                                                                                      
      [411] "    inherit.aes: FALSE"                                                                                                     
      [412] "    layer_data: function"                                                                                                   
      [413] "    layout: NULL"                                                                                                           
      [414] "    map_statistic: function"                                                                                                
      [415] "    mapping: unlabelled, ggplot2::mapping, uneval, gg, S7_object"                                                           
      [416] "    name: NULL"                                                                                                             
      [417] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
      [418] "        aesthetics: function"                                                                                               
      [419] "        compute_layer: function"                                                                                            
      [420] "        compute_panel: function"                                                                                            
      [421] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [422] "        required_aes: "                                                                                                     
      [423] "        setup_data: function"                                                                                               
      [424] "        setup_params: function"                                                                                             
      [425] "        use_defaults: function"                                                                                             
      [426] "        super:  <ggproto object: Class Position, gg>"                                                                       
      [427] "    print: function"                                                                                                        
      [428] "    setup_layer: function"                                                                                                  
      [429] "    show.legend: FALSE"                                                                                                     
      [430] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
      [431] "        aesthetics: function"                                                                                               
      [432] "        compute_group: function"                                                                                            
      [433] "        compute_layer: function"                                                                                            
      [434] "        compute_panel: function"                                                                                            
      [435] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [436] "        dropped_aes: "                                                                                                      
      [437] "        extra_params: na.rm"                                                                                                
      [438] "        finish_layer: function"                                                                                             
      [439] "        non_missing_aes: "                                                                                                  
      [440] "        optional_aes: "                                                                                                     
      [441] "        parameters: function"                                                                                               
      [442] "        required_aes: "                                                                                                     
      [443] "        retransform: TRUE"                                                                                                  
      [444] "        setup_data: function"                                                                                               
      [445] "        setup_params: function"                                                                                             
      [446] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [447] "    stat_params: list"                                                                                                      
      [448] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [449] "  ..@ scales     :Classes 'ScalesList', 'ggproto', 'gg' <ggproto object: Class ScalesList, gg>"                             
      [450] "    add: function"                                                                                                          
      [451] "    add_defaults: function"                                                                                                 
      [452] "    add_missing: function"                                                                                                  
      [453] "    backtransform_df: function"                                                                                             
      [454] "    clone: function"                                                                                                        
      [455] "    find: function"                                                                                                         
      [456] "    get_scales: function"                                                                                                   
      [457] "    has_scale: function"                                                                                                    
      [458] "    input: function"                                                                                                        
      [459] "    map_df: function"                                                                                                       
      [460] "    n: function"                                                                                                            
      [461] "    non_position_scales: function"                                                                                          
      [462] "    scales: list"                                                                                                           
      [463] "    set_palettes: function"                                                                                                 
      [464] "    train_df: function"                                                                                                     
      [465] "    transform_df: function"                                                                                                 
      [466] "    super:  <ggproto object: Class ScalesList, gg> "                                                                        
      [467] "  ..@ guides     :Classes 'Guides', 'ggproto', 'gg' <ggproto object: Class Guides, gg>"                                     
      [468] "    add: function"                                                                                                          
      [469] "    assemble: function"                                                                                                     
      [470] "    build: function"                                                                                                        
      [471] "    draw: function"                                                                                                         
      [472] "    get_custom: function"                                                                                                   
      [473] "    get_guide: function"                                                                                                    
      [474] "    get_params: function"                                                                                                   
      [475] "    get_position: function"                                                                                                 
      [476] "    guides: NULL"                                                                                                           
      [477] "    merge: function"                                                                                                        
      [478] "    missing: <ggproto object: Class GuideNone, Guide, gg>"                                                                  
      [479] "        add_title: function"                                                                                                
      [480] "        arrange_layout: function"                                                                                           
      [481] "        assemble_drawing: function"                                                                                         
      [482] "        available_aes: any"                                                                                                 
      [483] "        build_decor: function"                                                                                              
      [484] "        build_labels: function"                                                                                             
      [485] "        build_ticks: function"                                                                                              
      [486] "        build_title: function"                                                                                              
      [487] "        draw: function"                                                                                                     
      [488] "        draw_early_exit: function"                                                                                          
      [489] "        elements: list"                                                                                                     
      [490] "        extract_decor: function"                                                                                            
      [491] "        extract_key: function"                                                                                              
      [492] "        extract_params: function"                                                                                           
      [493] "        get_layer_key: function"                                                                                            
      [494] "        hashables: list"                                                                                                    
      [495] "        measure_grobs: function"                                                                                            
      [496] "        merge: function"                                                                                                    
      [497] "        override_elements: function"                                                                                        
      [498] "        params: list"                                                                                                       
      [499] "        process_layers: function"                                                                                           
      [500] "        setup_elements: function"                                                                                           
      [501] "        setup_params: function"                                                                                             
      [502] "        train: function"                                                                                                    
      [503] "        transform: function"                                                                                                
      [504] "        super:  <ggproto object: Class GuideNone, Guide, gg>"                                                               
      [505] "    package_box: function"                                                                                                  
      [506] "    print: function"                                                                                                        
      [507] "    process_layers: function"                                                                                               
      [508] "    setup: function"                                                                                                        
      [509] "    subset_guides: function"                                                                                                
      [510] "    train: function"                                                                                                        
      [511] "    update_params: function"                                                                                                
      [512] "    super:  <ggproto object: Class Guides, gg> "                                                                            
      [513] "  ..@ mapping    : <ggplot2::mapping> List of 2"                                                                            
      [514] " .. .. $ x: language ~.fits"                                                                                                
      [515] " .. .. $ y: language ~.resid"                                                                                               
      [516] "  ..@ theme      : <theme>  Named list()"                                                                                   
      [517] " .. .. @ complete: logi FALSE"                                                                                              
      [518] " .. .. @ validate: logi TRUE"                                                                                               
      [519] "  ..@ coordinates:Classes 'CoordCartesian', 'Coord', 'ggproto', 'gg' <ggproto object: Class CoordCartesian, Coord, gg>"     
      [520] "    aspect: function"                                                                                                       
      [521] "    backtransform_range: function"                                                                                          
      [522] "    clip: on"                                                                                                               
      [523] "    default: TRUE"                                                                                                          
      [524] "    distance: function"                                                                                                     
      [525] "    draw_panel: function"                                                                                                   
      [526] "    expand: TRUE"                                                                                                           
      [527] "    is_free: function"                                                                                                      
      [528] "    is_linear: function"                                                                                                    
      [529] "    labels: function"                                                                                                       
      [530] "    limits: list"                                                                                                           
      [531] "    modify_scales: function"                                                                                                
      [532] "    range: function"                                                                                                        
      [533] "    ratio: NULL"                                                                                                            
      [534] "    render_axis_h: function"                                                                                                
      [535] "    render_axis_v: function"                                                                                                
      [536] "    render_bg: function"                                                                                                    
      [537] "    render_fg: function"                                                                                                    
      [538] "    reverse: none"                                                                                                          
      [539] "    setup_data: function"                                                                                                   
      [540] "    setup_layout: function"                                                                                                 
      [541] "    setup_panel_guides: function"                                                                                           
      [542] "    setup_panel_params: function"                                                                                           
      [543] "    setup_params: function"                                                                                                 
      [544] "    train_panel_guides: function"                                                                                           
      [545] "    transform: function"                                                                                                    
      [546] "    super:  <ggproto object: Class CoordCartesian, Coord, gg> "                                                             
      [547] "  ..@ facet      :Classes 'FacetNull', 'Facet', 'ggproto', 'gg' <ggproto object: Class FacetNull, Facet, gg>"               
      [548] "    attach_axes: function"                                                                                                  
      [549] "    attach_strips: function"                                                                                                
      [550] "    compute_layout: function"                                                                                               
      [551] "    draw_back: function"                                                                                                    
      [552] "    draw_front: function"                                                                                                   
      [553] "    draw_labels: function"                                                                                                  
      [554] "    draw_panel_content: function"                                                                                           
      [555] "    draw_panels: function"                                                                                                  
      [556] "    finish_data: function"                                                                                                  
      [557] "    format_strip_labels: function"                                                                                          
      [558] "    init_gtable: function"                                                                                                  
      [559] "    init_scales: function"                                                                                                  
      [560] "    map_data: function"                                                                                                     
      [561] "    params: list"                                                                                                           
      [562] "    set_panel_size: function"                                                                                               
      [563] "    setup_data: function"                                                                                                   
      [564] "    setup_panel_params: function"                                                                                           
      [565] "    setup_params: function"                                                                                                 
      [566] "    shrink: TRUE"                                                                                                           
      [567] "    train_scales: function"                                                                                                 
      [568] "    vars: function"                                                                                                         
      [569] "    super:  <ggproto object: Class FacetNull, Facet, gg> "                                                                  
      [570] "  ..@ layout     :Classes 'Layout', 'ggproto', 'gg' <ggproto object: Class Layout, gg>"                                     
      [571] "    coord: NULL"                                                                                                            
      [572] "    coord_params: list"                                                                                                     
      [573] "    facet: NULL"                                                                                                            
      [574] "    facet_params: list"                                                                                                     
      [575] "    finish_data: function"                                                                                                  
      [576] "    get_scales: function"                                                                                                   
      [577] "    layout: NULL"                                                                                                           
      [578] "    map_position: function"                                                                                                 
      [579] "    panel_params: NULL"                                                                                                     
      [580] "    panel_scales_x: NULL"                                                                                                   
      [581] "    panel_scales_y: NULL"                                                                                                   
      [582] "    render: function"                                                                                                       
      [583] "    render_labels: function"                                                                                                
      [584] "    reset_scales: function"                                                                                                 
      [585] "    resolve_label: function"                                                                                                
      [586] "    setup: function"                                                                                                        
      [587] "    setup_panel_guides: function"                                                                                           
      [588] "    setup_panel_params: function"                                                                                           
      [589] "    train_position: function"                                                                                               
      [590] "    super:  <ggproto object: Class Layout, gg> "                                                                            
      [591] "  ..@ labels     : <ggplot2::labels> List of 2"                                                                             
      [592] " .. .. $ x: chr \"Fitted Value\""                                                                                           
      [593] " .. .. $ y: chr \"Residual\""                                                                                               
      [594] "  ..@ meta       : list()"                                                                                                  
      

