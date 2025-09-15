# lm_plot.fit produces expected plot elements for cars

    Code
      lm_plot.fit_cars
    Output
      $mdl
      
      Call:
      lm(formula = mpg ~ wt + hp, data = mtcars)
      
      Coefficients:
      (Intercept)           wt           hp  
          37.2273      -3.8778      -0.0318  
      
      
      $opt
      $opt$pred_intvl_pts
      [1] 100
      
      
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
      
      
      $parm$fit
      $parm$fit$lim
                 x    y
      min  9.19249 10.4
      max 29.31238 33.9
      
      
      
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
        [2] " $ fit: <ggplot2::ggplot>"                                                                                                  
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
       [21] "  ..@ layers     :List of 7"                                                                                                
       [22] " .. .. $ geom_point     :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
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
       [33] "    data: waiver"                                                                                                           
       [34] "    draw_geom: function"                                                                                                    
       [35] "    finish_statistics: function"                                                                                            
       [36] "    geom: <ggproto object: Class GeomPoint, Geom, gg>"                                                                      
       [37] "        aesthetics: function"                                                                                               
       [38] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [39] "        draw_group: function"                                                                                               
       [40] "        draw_key: function"                                                                                                 
       [41] "        draw_layer: function"                                                                                               
       [42] "        draw_panel: function"                                                                                               
       [43] "        extra_params: na.rm"                                                                                                
       [44] "        handle_na: function"                                                                                                
       [45] "        non_missing_aes: size shape colour"                                                                                 
       [46] "        optional_aes: "                                                                                                     
       [47] "        parameters: function"                                                                                               
       [48] "        rename_size: FALSE"                                                                                                 
       [49] "        required_aes: x y"                                                                                                  
       [50] "        setup_data: function"                                                                                               
       [51] "        setup_params: function"                                                                                             
       [52] "        use_defaults: function"                                                                                             
       [53] "        super:  <ggproto object: Class Geom, gg>"                                                                           
       [54] "    geom_params: list"                                                                                                      
       [55] "    inherit.aes: TRUE"                                                                                                      
       [56] "    layer_data: function"                                                                                                   
       [57] "    layout: NULL"                                                                                                           
       [58] "    map_statistic: function"                                                                                                
       [59] "    mapping: ggplot2::mapping, uneval, gg, S7_object"                                                                       
       [60] "    name: NULL"                                                                                                             
       [61] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
       [62] "        aesthetics: function"                                                                                               
       [63] "        compute_layer: function"                                                                                            
       [64] "        compute_panel: function"                                                                                            
       [65] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [66] "        required_aes: "                                                                                                     
       [67] "        setup_data: function"                                                                                               
       [68] "        setup_params: function"                                                                                             
       [69] "        use_defaults: function"                                                                                             
       [70] "        super:  <ggproto object: Class Position, gg>"                                                                       
       [71] "    print: function"                                                                                                        
       [72] "    setup_layer: function"                                                                                                  
       [73] "    show.legend: FALSE"                                                                                                     
       [74] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
       [75] "        aesthetics: function"                                                                                               
       [76] "        compute_group: function"                                                                                            
       [77] "        compute_layer: function"                                                                                            
       [78] "        compute_panel: function"                                                                                            
       [79] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [80] "        dropped_aes: "                                                                                                      
       [81] "        extra_params: na.rm"                                                                                                
       [82] "        finish_layer: function"                                                                                             
       [83] "        non_missing_aes: "                                                                                                  
       [84] "        optional_aes: "                                                                                                     
       [85] "        parameters: function"                                                                                               
       [86] "        required_aes: "                                                                                                     
       [87] "        retransform: TRUE"                                                                                                  
       [88] "        setup_data: function"                                                                                               
       [89] "        setup_params: function"                                                                                             
       [90] "        super:  <ggproto object: Class Stat, gg>"                                                                           
       [91] "    stat_params: list"                                                                                                      
       [92] "    super:  <ggproto object: Class Layer, gg> "                                                                             
       [93] " .. .. $ annotate       :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
       [94] "    aes_params: list"                                                                                                       
       [95] "    compute_aesthetics: function"                                                                                           
       [96] "    compute_geom_1: function"                                                                                               
       [97] "    compute_geom_2: function"                                                                                               
       [98] "    compute_position: function"                                                                                             
       [99] "    compute_statistic: function"                                                                                            
      [100] "    computed_geom_params: NULL"                                                                                             
      [101] "    computed_mapping: NULL"                                                                                                 
      [102] "    computed_stat_params: NULL"                                                                                             
      [103] "    constructor: call"                                                                                                      
      [104] "    data: data.frame"                                                                                                       
      [105] "    draw_geom: function"                                                                                                    
      [106] "    finish_statistics: function"                                                                                            
      [107] "    geom: <ggproto object: Class GeomPoint, Geom, gg>"                                                                      
      [108] "        aesthetics: function"                                                                                               
      [109] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [110] "        draw_group: function"                                                                                               
      [111] "        draw_key: function"                                                                                                 
      [112] "        draw_layer: function"                                                                                               
      [113] "        draw_panel: function"                                                                                               
      [114] "        extra_params: na.rm"                                                                                                
      [115] "        handle_na: function"                                                                                                
      [116] "        non_missing_aes: size shape colour"                                                                                 
      [117] "        optional_aes: "                                                                                                     
      [118] "        parameters: function"                                                                                               
      [119] "        rename_size: FALSE"                                                                                                 
      [120] "        required_aes: x y"                                                                                                  
      [121] "        setup_data: function"                                                                                               
      [122] "        setup_params: function"                                                                                             
      [123] "        use_defaults: function"                                                                                             
      [124] "        super:  <ggproto object: Class Geom, gg>"                                                                           
      [125] "    geom_params: list"                                                                                                      
      [126] "    inherit.aes: FALSE"                                                                                                     
      [127] "    layer_data: function"                                                                                                   
      [128] "    layout: NULL"                                                                                                           
      [129] "    map_statistic: function"                                                                                                
      [130] "    mapping: unlabelled, ggplot2::mapping, uneval, gg, S7_object"                                                           
      [131] "    name: NULL"                                                                                                             
      [132] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
      [133] "        aesthetics: function"                                                                                               
      [134] "        compute_layer: function"                                                                                            
      [135] "        compute_panel: function"                                                                                            
      [136] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [137] "        required_aes: "                                                                                                     
      [138] "        setup_data: function"                                                                                               
      [139] "        setup_params: function"                                                                                             
      [140] "        use_defaults: function"                                                                                             
      [141] "        super:  <ggproto object: Class Position, gg>"                                                                       
      [142] "    print: function"                                                                                                        
      [143] "    setup_layer: function"                                                                                                  
      [144] "    show.legend: FALSE"                                                                                                     
      [145] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
      [146] "        aesthetics: function"                                                                                               
      [147] "        compute_group: function"                                                                                            
      [148] "        compute_layer: function"                                                                                            
      [149] "        compute_panel: function"                                                                                            
      [150] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [151] "        dropped_aes: "                                                                                                      
      [152] "        extra_params: na.rm"                                                                                                
      [153] "        finish_layer: function"                                                                                             
      [154] "        non_missing_aes: "                                                                                                  
      [155] "        optional_aes: "                                                                                                     
      [156] "        parameters: function"                                                                                               
      [157] "        required_aes: "                                                                                                     
      [158] "        retransform: TRUE"                                                                                                  
      [159] "        setup_data: function"                                                                                               
      [160] "        setup_params: function"                                                                                             
      [161] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [162] "    stat_params: list"                                                                                                      
      [163] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [164] " .. .. $ annotate...3   :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
      [165] "    aes_params: list"                                                                                                       
      [166] "    compute_aesthetics: function"                                                                                           
      [167] "    compute_geom_1: function"                                                                                               
      [168] "    compute_geom_2: function"                                                                                               
      [169] "    compute_position: function"                                                                                             
      [170] "    compute_statistic: function"                                                                                            
      [171] "    computed_geom_params: NULL"                                                                                             
      [172] "    computed_mapping: NULL"                                                                                                 
      [173] "    computed_stat_params: NULL"                                                                                             
      [174] "    constructor: call"                                                                                                      
      [175] "    data: data.frame"                                                                                                       
      [176] "    draw_geom: function"                                                                                                    
      [177] "    finish_statistics: function"                                                                                            
      [178] "    geom: <ggproto object: Class GeomText, Geom, gg>"                                                                       
      [179] "        aesthetics: function"                                                                                               
      [180] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [181] "        draw_group: function"                                                                                               
      [182] "        draw_key: function"                                                                                                 
      [183] "        draw_layer: function"                                                                                               
      [184] "        draw_panel: function"                                                                                               
      [185] "        extra_params: na.rm"                                                                                                
      [186] "        handle_na: function"                                                                                                
      [187] "        non_missing_aes: angle"                                                                                             
      [188] "        optional_aes: "                                                                                                     
      [189] "        parameters: function"                                                                                               
      [190] "        rename_size: FALSE"                                                                                                 
      [191] "        required_aes: x y label"                                                                                            
      [192] "        setup_data: function"                                                                                               
      [193] "        setup_params: function"                                                                                             
      [194] "        use_defaults: function"                                                                                             
      [195] "        super:  <ggproto object: Class Geom, gg>"                                                                           
      [196] "    geom_params: list"                                                                                                      
      [197] "    inherit.aes: FALSE"                                                                                                     
      [198] "    layer_data: function"                                                                                                   
      [199] "    layout: NULL"                                                                                                           
      [200] "    map_statistic: function"                                                                                                
      [201] "    mapping: unlabelled, ggplot2::mapping, uneval, gg, S7_object"                                                           
      [202] "    name: NULL"                                                                                                             
      [203] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
      [204] "        aesthetics: function"                                                                                               
      [205] "        compute_layer: function"                                                                                            
      [206] "        compute_panel: function"                                                                                            
      [207] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [208] "        required_aes: "                                                                                                     
      [209] "        setup_data: function"                                                                                               
      [210] "        setup_params: function"                                                                                             
      [211] "        use_defaults: function"                                                                                             
      [212] "        super:  <ggproto object: Class Position, gg>"                                                                       
      [213] "    print: function"                                                                                                        
      [214] "    setup_layer: function"                                                                                                  
      [215] "    show.legend: FALSE"                                                                                                     
      [216] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
      [217] "        aesthetics: function"                                                                                               
      [218] "        compute_group: function"                                                                                            
      [219] "        compute_layer: function"                                                                                            
      [220] "        compute_panel: function"                                                                                            
      [221] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [222] "        dropped_aes: "                                                                                                      
      [223] "        extra_params: na.rm"                                                                                                
      [224] "        finish_layer: function"                                                                                             
      [225] "        non_missing_aes: "                                                                                                  
      [226] "        optional_aes: "                                                                                                     
      [227] "        parameters: function"                                                                                               
      [228] "        required_aes: "                                                                                                     
      [229] "        retransform: TRUE"                                                                                                  
      [230] "        setup_data: function"                                                                                               
      [231] "        setup_params: function"                                                                                             
      [232] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [233] "    stat_params: list"                                                                                                      
      [234] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [235] " .. .. $ geom_line      :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
      [236] "    aes_params: list"                                                                                                       
      [237] "    compute_aesthetics: function"                                                                                           
      [238] "    compute_geom_1: function"                                                                                               
      [239] "    compute_geom_2: function"                                                                                               
      [240] "    compute_position: function"                                                                                             
      [241] "    compute_statistic: function"                                                                                            
      [242] "    computed_geom_params: NULL"                                                                                             
      [243] "    computed_mapping: NULL"                                                                                                 
      [244] "    computed_stat_params: NULL"                                                                                             
      [245] "    constructor: call"                                                                                                      
      [246] "    data: data.frame"                                                                                                       
      [247] "    draw_geom: function"                                                                                                    
      [248] "    finish_statistics: function"                                                                                            
      [249] "    geom: <ggproto object: Class GeomLine, GeomPath, Geom, gg>"                                                             
      [250] "        aesthetics: function"                                                                                               
      [251] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [252] "        draw_group: function"                                                                                               
      [253] "        draw_key: function"                                                                                                 
      [254] "        draw_layer: function"                                                                                               
      [255] "        draw_panel: function"                                                                                               
      [256] "        extra_params: na.rm orientation"                                                                                    
      [257] "        handle_na: function"                                                                                                
      [258] "        non_missing_aes: linewidth colour linetype"                                                                         
      [259] "        optional_aes: "                                                                                                     
      [260] "        parameters: function"                                                                                               
      [261] "        rename_size: TRUE"                                                                                                  
      [262] "        required_aes: x y"                                                                                                  
      [263] "        setup_data: function"                                                                                               
      [264] "        setup_params: function"                                                                                             
      [265] "        use_defaults: function"                                                                                             
      [266] "        super:  <ggproto object: Class GeomPath, Geom, gg>"                                                                 
      [267] "    geom_params: list"                                                                                                      
      [268] "    inherit.aes: TRUE"                                                                                                      
      [269] "    layer_data: function"                                                                                                   
      [270] "    layout: NULL"                                                                                                           
      [271] "    map_statistic: function"                                                                                                
      [272] "    mapping: ggplot2::mapping, uneval, gg, S7_object"                                                                       
      [273] "    name: NULL"                                                                                                             
      [274] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
      [275] "        aesthetics: function"                                                                                               
      [276] "        compute_layer: function"                                                                                            
      [277] "        compute_panel: function"                                                                                            
      [278] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [279] "        required_aes: "                                                                                                     
      [280] "        setup_data: function"                                                                                               
      [281] "        setup_params: function"                                                                                             
      [282] "        use_defaults: function"                                                                                             
      [283] "        super:  <ggproto object: Class Position, gg>"                                                                       
      [284] "    print: function"                                                                                                        
      [285] "    setup_layer: function"                                                                                                  
      [286] "    show.legend: NA"                                                                                                        
      [287] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
      [288] "        aesthetics: function"                                                                                               
      [289] "        compute_group: function"                                                                                            
      [290] "        compute_layer: function"                                                                                            
      [291] "        compute_panel: function"                                                                                            
      [292] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [293] "        dropped_aes: "                                                                                                      
      [294] "        extra_params: na.rm"                                                                                                
      [295] "        finish_layer: function"                                                                                             
      [296] "        non_missing_aes: "                                                                                                  
      [297] "        optional_aes: "                                                                                                     
      [298] "        parameters: function"                                                                                               
      [299] "        required_aes: "                                                                                                     
      [300] "        retransform: TRUE"                                                                                                  
      [301] "        setup_data: function"                                                                                               
      [302] "        setup_params: function"                                                                                             
      [303] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [304] "    stat_params: list"                                                                                                      
      [305] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [306] " .. .. $ geom_smooth    :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
      [307] "    aes_params: list"                                                                                                       
      [308] "    compute_aesthetics: function"                                                                                           
      [309] "    compute_geom_1: function"                                                                                               
      [310] "    compute_geom_2: function"                                                                                               
      [311] "    compute_position: function"                                                                                             
      [312] "    compute_statistic: function"                                                                                            
      [313] "    computed_geom_params: NULL"                                                                                             
      [314] "    computed_mapping: NULL"                                                                                                 
      [315] "    computed_stat_params: NULL"                                                                                             
      [316] "    constructor: call"                                                                                                      
      [317] "    data: data.frame"                                                                                                       
      [318] "    draw_geom: function"                                                                                                    
      [319] "    finish_statistics: function"                                                                                            
      [320] "    geom: <ggproto object: Class GeomSmooth, Geom, gg>"                                                                     
      [321] "        aesthetics: function"                                                                                               
      [322] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [323] "        draw_group: function"                                                                                               
      [324] "        draw_key: function"                                                                                                 
      [325] "        draw_layer: function"                                                                                               
      [326] "        draw_panel: function"                                                                                               
      [327] "        extra_params: na.rm orientation"                                                                                    
      [328] "        handle_na: function"                                                                                                
      [329] "        non_missing_aes: "                                                                                                  
      [330] "        optional_aes: ymin ymax"                                                                                            
      [331] "        parameters: function"                                                                                               
      [332] "        rename_size: TRUE"                                                                                                  
      [333] "        required_aes: x y"                                                                                                  
      [334] "        setup_data: function"                                                                                               
      [335] "        setup_params: function"                                                                                             
      [336] "        use_defaults: function"                                                                                             
      [337] "        super:  <ggproto object: Class Geom, gg>"                                                                           
      [338] "    geom_params: list"                                                                                                      
      [339] "    inherit.aes: TRUE"                                                                                                      
      [340] "    layer_data: function"                                                                                                   
      [341] "    layout: NULL"                                                                                                           
      [342] "    map_statistic: function"                                                                                                
      [343] "    mapping: ggplot2::mapping, uneval, gg, S7_object"                                                                       
      [344] "    name: NULL"                                                                                                             
      [345] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
      [346] "        aesthetics: function"                                                                                               
      [347] "        compute_layer: function"                                                                                            
      [348] "        compute_panel: function"                                                                                            
      [349] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [350] "        required_aes: "                                                                                                     
      [351] "        setup_data: function"                                                                                               
      [352] "        setup_params: function"                                                                                             
      [353] "        use_defaults: function"                                                                                             
      [354] "        super:  <ggproto object: Class Position, gg>"                                                                       
      [355] "    print: function"                                                                                                        
      [356] "    setup_layer: function"                                                                                                  
      [357] "    show.legend: NA"                                                                                                        
      [358] "    stat: <ggproto object: Class StatSmooth, Stat, gg>"                                                                     
      [359] "        aesthetics: function"                                                                                               
      [360] "        compute_group: function"                                                                                            
      [361] "        compute_layer: function"                                                                                            
      [362] "        compute_panel: function"                                                                                            
      [363] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [364] "        dropped_aes: weight"                                                                                                
      [365] "        extra_params: na.rm orientation"                                                                                    
      [366] "        finish_layer: function"                                                                                             
      [367] "        non_missing_aes: "                                                                                                  
      [368] "        optional_aes: "                                                                                                     
      [369] "        parameters: function"                                                                                               
      [370] "        required_aes: x y"                                                                                                  
      [371] "        retransform: TRUE"                                                                                                  
      [372] "        setup_data: function"                                                                                               
      [373] "        setup_params: function"                                                                                             
      [374] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [375] "    stat_params: list"                                                                                                      
      [376] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [377] " .. .. $ geom_smooth...6:Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
      [378] "    aes_params: list"                                                                                                       
      [379] "    compute_aesthetics: function"                                                                                           
      [380] "    compute_geom_1: function"                                                                                               
      [381] "    compute_geom_2: function"                                                                                               
      [382] "    compute_position: function"                                                                                             
      [383] "    compute_statistic: function"                                                                                            
      [384] "    computed_geom_params: NULL"                                                                                             
      [385] "    computed_mapping: NULL"                                                                                                 
      [386] "    computed_stat_params: NULL"                                                                                             
      [387] "    constructor: call"                                                                                                      
      [388] "    data: data.frame"                                                                                                       
      [389] "    draw_geom: function"                                                                                                    
      [390] "    finish_statistics: function"                                                                                            
      [391] "    geom: <ggproto object: Class GeomSmooth, Geom, gg>"                                                                     
      [392] "        aesthetics: function"                                                                                               
      [393] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [394] "        draw_group: function"                                                                                               
      [395] "        draw_key: function"                                                                                                 
      [396] "        draw_layer: function"                                                                                               
      [397] "        draw_panel: function"                                                                                               
      [398] "        extra_params: na.rm orientation"                                                                                    
      [399] "        handle_na: function"                                                                                                
      [400] "        non_missing_aes: "                                                                                                  
      [401] "        optional_aes: ymin ymax"                                                                                            
      [402] "        parameters: function"                                                                                               
      [403] "        rename_size: TRUE"                                                                                                  
      [404] "        required_aes: x y"                                                                                                  
      [405] "        setup_data: function"                                                                                               
      [406] "        setup_params: function"                                                                                             
      [407] "        use_defaults: function"                                                                                             
      [408] "        super:  <ggproto object: Class Geom, gg>"                                                                           
      [409] "    geom_params: list"                                                                                                      
      [410] "    inherit.aes: TRUE"                                                                                                      
      [411] "    layer_data: function"                                                                                                   
      [412] "    layout: NULL"                                                                                                           
      [413] "    map_statistic: function"                                                                                                
      [414] "    mapping: ggplot2::mapping, uneval, gg, S7_object"                                                                       
      [415] "    name: NULL"                                                                                                             
      [416] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
      [417] "        aesthetics: function"                                                                                               
      [418] "        compute_layer: function"                                                                                            
      [419] "        compute_panel: function"                                                                                            
      [420] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [421] "        required_aes: "                                                                                                     
      [422] "        setup_data: function"                                                                                               
      [423] "        setup_params: function"                                                                                             
      [424] "        use_defaults: function"                                                                                             
      [425] "        super:  <ggproto object: Class Position, gg>"                                                                       
      [426] "    print: function"                                                                                                        
      [427] "    setup_layer: function"                                                                                                  
      [428] "    show.legend: NA"                                                                                                        
      [429] "    stat: <ggproto object: Class StatSmooth, Stat, gg>"                                                                     
      [430] "        aesthetics: function"                                                                                               
      [431] "        compute_group: function"                                                                                            
      [432] "        compute_layer: function"                                                                                            
      [433] "        compute_panel: function"                                                                                            
      [434] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [435] "        dropped_aes: weight"                                                                                                
      [436] "        extra_params: na.rm orientation"                                                                                    
      [437] "        finish_layer: function"                                                                                             
      [438] "        non_missing_aes: "                                                                                                  
      [439] "        optional_aes: "                                                                                                     
      [440] "        parameters: function"                                                                                               
      [441] "        required_aes: x y"                                                                                                  
      [442] "        retransform: TRUE"                                                                                                  
      [443] "        setup_data: function"                                                                                               
      [444] "        setup_params: function"                                                                                             
      [445] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [446] "    stat_params: list"                                                                                                      
      [447] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [448] " .. .. $ geom_text_repel:Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
      [449] "    aes_params: list"                                                                                                       
      [450] "    compute_aesthetics: function"                                                                                           
      [451] "    compute_geom_1: function"                                                                                               
      [452] "    compute_geom_2: function"                                                                                               
      [453] "    compute_position: function"                                                                                             
      [454] "    compute_statistic: function"                                                                                            
      [455] "    computed_geom_params: NULL"                                                                                             
      [456] "    computed_mapping: NULL"                                                                                                 
      [457] "    computed_stat_params: NULL"                                                                                             
      [458] "    constructor: call"                                                                                                      
      [459] "    data: data.frame"                                                                                                       
      [460] "    draw_geom: function"                                                                                                    
      [461] "    finish_statistics: function"                                                                                            
      [462] "    geom: <ggproto object: Class GeomTextRepel, Geom, gg>"                                                                  
      [463] "        aesthetics: function"                                                                                               
      [464] "        default_aes: uneval"                                                                                                
      [465] "        draw_group: function"                                                                                               
      [466] "        draw_key: function"                                                                                                 
      [467] "        draw_layer: function"                                                                                               
      [468] "        draw_panel: function"                                                                                               
      [469] "        extra_params: na.rm"                                                                                                
      [470] "        handle_na: function"                                                                                                
      [471] "        non_missing_aes: "                                                                                                  
      [472] "        optional_aes: "                                                                                                     
      [473] "        parameters: function"                                                                                               
      [474] "        rename_size: FALSE"                                                                                                 
      [475] "        required_aes: x y label"                                                                                            
      [476] "        setup_data: function"                                                                                               
      [477] "        setup_params: function"                                                                                             
      [478] "        use_defaults: function"                                                                                             
      [479] "        super:  <ggproto object: Class Geom, gg>"                                                                           
      [480] "    geom_params: list"                                                                                                      
      [481] "    inherit.aes: TRUE"                                                                                                      
      [482] "    layer_data: function"                                                                                                   
      [483] "    layout: NULL"                                                                                                           
      [484] "    map_statistic: function"                                                                                                
      [485] "    mapping: ggplot2::mapping, uneval, gg, S7_object"                                                                       
      [486] "    name: NULL"                                                                                                             
      [487] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
      [488] "        aesthetics: function"                                                                                               
      [489] "        compute_layer: function"                                                                                            
      [490] "        compute_panel: function"                                                                                            
      [491] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [492] "        required_aes: "                                                                                                     
      [493] "        setup_data: function"                                                                                               
      [494] "        setup_params: function"                                                                                             
      [495] "        use_defaults: function"                                                                                             
      [496] "        super:  <ggproto object: Class Position, gg>"                                                                       
      [497] "    print: function"                                                                                                        
      [498] "    setup_layer: function"                                                                                                  
      [499] "    show.legend: NA"                                                                                                        
      [500] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
      [501] "        aesthetics: function"                                                                                               
      [502] "        compute_group: function"                                                                                            
      [503] "        compute_layer: function"                                                                                            
      [504] "        compute_panel: function"                                                                                            
      [505] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [506] "        dropped_aes: "                                                                                                      
      [507] "        extra_params: na.rm"                                                                                                
      [508] "        finish_layer: function"                                                                                             
      [509] "        non_missing_aes: "                                                                                                  
      [510] "        optional_aes: "                                                                                                     
      [511] "        parameters: function"                                                                                               
      [512] "        required_aes: "                                                                                                     
      [513] "        retransform: TRUE"                                                                                                  
      [514] "        setup_data: function"                                                                                               
      [515] "        setup_params: function"                                                                                             
      [516] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [517] "    stat_params: list"                                                                                                      
      [518] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [519] "  ..@ scales     :Classes 'ScalesList', 'ggproto', 'gg' <ggproto object: Class ScalesList, gg>"                             
      [520] "    add: function"                                                                                                          
      [521] "    add_defaults: function"                                                                                                 
      [522] "    add_missing: function"                                                                                                  
      [523] "    backtransform_df: function"                                                                                             
      [524] "    clone: function"                                                                                                        
      [525] "    find: function"                                                                                                         
      [526] "    get_scales: function"                                                                                                   
      [527] "    has_scale: function"                                                                                                    
      [528] "    input: function"                                                                                                        
      [529] "    map_df: function"                                                                                                       
      [530] "    n: function"                                                                                                            
      [531] "    non_position_scales: function"                                                                                          
      [532] "    scales: list"                                                                                                           
      [533] "    set_palettes: function"                                                                                                 
      [534] "    train_df: function"                                                                                                     
      [535] "    transform_df: function"                                                                                                 
      [536] "    super:  <ggproto object: Class ScalesList, gg> "                                                                        
      [537] "  ..@ guides     :Classes 'Guides', 'ggproto', 'gg' <ggproto object: Class Guides, gg>"                                     
      [538] "    add: function"                                                                                                          
      [539] "    assemble: function"                                                                                                     
      [540] "    build: function"                                                                                                        
      [541] "    draw: function"                                                                                                         
      [542] "    get_custom: function"                                                                                                   
      [543] "    get_guide: function"                                                                                                    
      [544] "    get_params: function"                                                                                                   
      [545] "    get_position: function"                                                                                                 
      [546] "    guides: NULL"                                                                                                           
      [547] "    merge: function"                                                                                                        
      [548] "    missing: <ggproto object: Class GuideNone, Guide, gg>"                                                                  
      [549] "        add_title: function"                                                                                                
      [550] "        arrange_layout: function"                                                                                           
      [551] "        assemble_drawing: function"                                                                                         
      [552] "        available_aes: any"                                                                                                 
      [553] "        build_decor: function"                                                                                              
      [554] "        build_labels: function"                                                                                             
      [555] "        build_ticks: function"                                                                                              
      [556] "        build_title: function"                                                                                              
      [557] "        draw: function"                                                                                                     
      [558] "        draw_early_exit: function"                                                                                          
      [559] "        elements: list"                                                                                                     
      [560] "        extract_decor: function"                                                                                            
      [561] "        extract_key: function"                                                                                              
      [562] "        extract_params: function"                                                                                           
      [563] "        get_layer_key: function"                                                                                            
      [564] "        hashables: list"                                                                                                    
      [565] "        measure_grobs: function"                                                                                            
      [566] "        merge: function"                                                                                                    
      [567] "        override_elements: function"                                                                                        
      [568] "        params: list"                                                                                                       
      [569] "        process_layers: function"                                                                                           
      [570] "        setup_elements: function"                                                                                           
      [571] "        setup_params: function"                                                                                             
      [572] "        train: function"                                                                                                    
      [573] "        transform: function"                                                                                                
      [574] "        super:  <ggproto object: Class GuideNone, Guide, gg>"                                                               
      [575] "    package_box: function"                                                                                                  
      [576] "    print: function"                                                                                                        
      [577] "    process_layers: function"                                                                                               
      [578] "    setup: function"                                                                                                        
      [579] "    subset_guides: function"                                                                                                
      [580] "    train: function"                                                                                                        
      [581] "    update_params: function"                                                                                                
      [582] "    super:  <ggproto object: Class Guides, gg> "                                                                            
      [583] "  ..@ mapping    : <ggplot2::mapping> List of 2"                                                                            
      [584] " .. .. $ x: language ~.fits"                                                                                                
      [585] " .. .. $ y: language ~.obs"                                                                                                 
      [586] "  ..@ theme      : <theme>  Named list()"                                                                                   
      [587] " .. .. @ complete: logi FALSE"                                                                                              
      [588] " .. .. @ validate: logi TRUE"                                                                                               
      [589] "  ..@ coordinates:Classes 'CoordCartesian', 'Coord', 'ggproto', 'gg' <ggproto object: Class CoordCartesian, Coord, gg>"     
      [590] "    aspect: function"                                                                                                       
      [591] "    backtransform_range: function"                                                                                          
      [592] "    clip: on"                                                                                                               
      [593] "    default: TRUE"                                                                                                          
      [594] "    distance: function"                                                                                                     
      [595] "    draw_panel: function"                                                                                                   
      [596] "    expand: TRUE"                                                                                                           
      [597] "    is_free: function"                                                                                                      
      [598] "    is_linear: function"                                                                                                    
      [599] "    labels: function"                                                                                                       
      [600] "    limits: list"                                                                                                           
      [601] "    modify_scales: function"                                                                                                
      [602] "    range: function"                                                                                                        
      [603] "    ratio: NULL"                                                                                                            
      [604] "    render_axis_h: function"                                                                                                
      [605] "    render_axis_v: function"                                                                                                
      [606] "    render_bg: function"                                                                                                    
      [607] "    render_fg: function"                                                                                                    
      [608] "    reverse: none"                                                                                                          
      [609] "    setup_data: function"                                                                                                   
      [610] "    setup_layout: function"                                                                                                 
      [611] "    setup_panel_guides: function"                                                                                           
      [612] "    setup_panel_params: function"                                                                                           
      [613] "    setup_params: function"                                                                                                 
      [614] "    train_panel_guides: function"                                                                                           
      [615] "    transform: function"                                                                                                    
      [616] "    super:  <ggproto object: Class CoordCartesian, Coord, gg> "                                                             
      [617] "  ..@ facet      :Classes 'FacetNull', 'Facet', 'ggproto', 'gg' <ggproto object: Class FacetNull, Facet, gg>"               
      [618] "    attach_axes: function"                                                                                                  
      [619] "    attach_strips: function"                                                                                                
      [620] "    compute_layout: function"                                                                                               
      [621] "    draw_back: function"                                                                                                    
      [622] "    draw_front: function"                                                                                                   
      [623] "    draw_labels: function"                                                                                                  
      [624] "    draw_panel_content: function"                                                                                           
      [625] "    draw_panels: function"                                                                                                  
      [626] "    finish_data: function"                                                                                                  
      [627] "    format_strip_labels: function"                                                                                          
      [628] "    init_gtable: function"                                                                                                  
      [629] "    init_scales: function"                                                                                                  
      [630] "    map_data: function"                                                                                                     
      [631] "    params: list"                                                                                                           
      [632] "    set_panel_size: function"                                                                                               
      [633] "    setup_data: function"                                                                                                   
      [634] "    setup_panel_params: function"                                                                                           
      [635] "    setup_params: function"                                                                                                 
      [636] "    shrink: TRUE"                                                                                                           
      [637] "    train_scales: function"                                                                                                 
      [638] "    vars: function"                                                                                                         
      [639] "    super:  <ggproto object: Class FacetNull, Facet, gg> "                                                                  
      [640] "  ..@ layout     :Classes 'Layout', 'ggproto', 'gg' <ggproto object: Class Layout, gg>"                                     
      [641] "    coord: NULL"                                                                                                            
      [642] "    coord_params: list"                                                                                                     
      [643] "    facet: NULL"                                                                                                            
      [644] "    facet_params: list"                                                                                                     
      [645] "    finish_data: function"                                                                                                  
      [646] "    get_scales: function"                                                                                                   
      [647] "    layout: NULL"                                                                                                           
      [648] "    map_position: function"                                                                                                 
      [649] "    panel_params: NULL"                                                                                                     
      [650] "    panel_scales_x: NULL"                                                                                                   
      [651] "    panel_scales_y: NULL"                                                                                                   
      [652] "    render: function"                                                                                                       
      [653] "    render_labels: function"                                                                                                
      [654] "    reset_scales: function"                                                                                                 
      [655] "    resolve_label: function"                                                                                                
      [656] "    setup: function"                                                                                                        
      [657] "    setup_panel_guides: function"                                                                                           
      [658] "    setup_panel_params: function"                                                                                           
      [659] "    train_position: function"                                                                                               
      [660] "    super:  <ggproto object: Class Layout, gg> "                                                                            
      [661] "  ..@ labels     : <ggplot2::labels> List of 2"                                                                             
      [662] " .. .. $ x: chr \"Fitted Value\""                                                                                           
      [663] " .. .. $ y: chr \"Observed Value\""                                                                                         
      [664] "  ..@ meta       : list()"                                                                                                  
      

