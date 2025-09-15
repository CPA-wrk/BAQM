# lm_plot.infl produces expected plot elements for cars

    Code
      lm_plot.infl_cars
    Output
      $mdl
      
      Call:
      lm(formula = mpg ~ wt + hp, data = mtcars)
      
      Coefficients:
      (Intercept)           wt           hp  
          37.2273      -3.8778      -0.0318  
      
      
      $opt
      list()
      
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
                          .cooksd.is.infl .hat.is.infl  .quantile outlier .stud.outl .attn
      Mazda RX4                     FALSE        FALSE -1.2298588     reg        reg   reg
      Mazda RX4 Wag                 FALSE        FALSE -0.5334097     reg        reg   reg
      Datsun 710                    FALSE        FALSE -1.0775156     reg        reg   reg
      Hornet 4 Drive                FALSE        FALSE  0.1970991     reg        reg   reg
      Hornet Sportabout             FALSE        FALSE  0.3601299     reg        reg   reg
      Valiant                       FALSE        FALSE -0.9467818     reg        reg   reg
      Duster 360                    FALSE        FALSE -0.4450965     reg        reg   reg
      Merc 240D                     FALSE        FALSE  0.8305109     reg        reg   reg
      Merc 230                      FALSE        FALSE  0.5334097     reg        reg   reg
      Merc 280                      FALSE        FALSE -0.1970991     reg        reg   reg
      Merc 280C                     FALSE        FALSE -0.8305109     reg        reg   reg
      Merc 450SE                    FALSE        FALSE  0.4450965     reg        reg   reg
      Merc 450SL                    FALSE        FALSE  0.2776904     reg        reg   reg
      Merc 450SLC                   FALSE        FALSE -0.7245144     reg        reg   reg
      Cadillac Fleetwood            FALSE        FALSE  0.1177699     reg        reg   reg
      Lincoln Continental           FALSE        FALSE  0.6260990     reg        reg   reg
      Chrysler Imperial             FALSE        FALSE  1.4177971    outl       infl  infl
      Fiat 128                      FALSE        FALSE  1.6759397    outl       infl  infl
      Honda Civic                   FALSE        FALSE  0.7245144     reg        reg   reg
      Toyota Corolla                FALSE        FALSE  2.1538747    outl       infl  infl
      Toyota Corona                 FALSE        FALSE -1.4177971     reg        reg   reg
      Dodge Challenger              FALSE        FALSE -1.6759397     reg        reg   reg
      AMC Javelin                   FALSE        FALSE -2.1538747     reg        reg   reg
      Camaro Z28                    FALSE        FALSE -0.3601299     reg        reg   reg
      Pontiac Firebird              FALSE        FALSE  1.0775156     reg        reg   reg
      Fiat X1-9                     FALSE        FALSE -0.0391761     reg        reg   reg
      Porsche 914-2                 FALSE        FALSE  0.0391761     reg        reg   reg
      Lotus Europa                  FALSE        FALSE  1.2298588     reg        reg   reg
      Ford Pantera L                FALSE        FALSE -0.1177699     reg        reg   reg
      Ferrari Dino                  FALSE        FALSE -0.2776904     reg        reg   reg
      Maserati Bora                 FALSE         TRUE  0.9467818     reg        reg   reg
      Volvo 142E                    FALSE        FALSE -0.6260990     reg        reg   reg
      
      $plts
        [1] "List of 1"                                                                                                                  
        [2] " $ infl: <ggplot2::ggplot>"                                                                                                 
        [3] "  ..@ data       :'data.frame':\t32 obs. of  18 variables:"                                                                 
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
       [21] " .. .. $ .attn          : chr [1:32] \"reg\" \"reg\" \"reg\" \"reg\" ..."                                                   
       [22] "  ..@ layers     :List of 7"                                                                                                
       [23] " .. .. $ geom_hline     :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
       [24] "    aes_params: list"                                                                                                       
       [25] "    compute_aesthetics: function"                                                                                           
       [26] "    compute_geom_1: function"                                                                                               
       [27] "    compute_geom_2: function"                                                                                               
       [28] "    compute_position: function"                                                                                             
       [29] "    compute_statistic: function"                                                                                            
       [30] "    computed_geom_params: NULL"                                                                                             
       [31] "    computed_mapping: NULL"                                                                                                 
       [32] "    computed_stat_params: NULL"                                                                                             
       [33] "    constructor: call"                                                                                                      
       [34] "    data: data.frame"                                                                                                       
       [35] "    draw_geom: function"                                                                                                    
       [36] "    finish_statistics: function"                                                                                            
       [37] "    geom: <ggproto object: Class GeomHline, Geom, gg>"                                                                      
       [38] "        aesthetics: function"                                                                                               
       [39] "        check_constant_aes: FALSE"                                                                                          
       [40] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [41] "        draw_group: function"                                                                                               
       [42] "        draw_key: function"                                                                                                 
       [43] "        draw_layer: function"                                                                                               
       [44] "        draw_panel: function"                                                                                               
       [45] "        extra_params: na.rm"                                                                                                
       [46] "        handle_na: function"                                                                                                
       [47] "        non_missing_aes: "                                                                                                  
       [48] "        optional_aes: "                                                                                                     
       [49] "        parameters: function"                                                                                               
       [50] "        rename_size: TRUE"                                                                                                  
       [51] "        required_aes: yintercept"                                                                                           
       [52] "        setup_data: function"                                                                                               
       [53] "        setup_params: function"                                                                                             
       [54] "        use_defaults: function"                                                                                             
       [55] "        super:  <ggproto object: Class Geom, gg>"                                                                           
       [56] "    geom_params: list"                                                                                                      
       [57] "    inherit.aes: FALSE"                                                                                                     
       [58] "    layer_data: function"                                                                                                   
       [59] "    layout: NULL"                                                                                                           
       [60] "    map_statistic: function"                                                                                                
       [61] "    mapping: ggplot2::mapping, uneval, gg, S7_object"                                                                       
       [62] "    name: NULL"                                                                                                             
       [63] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
       [64] "        aesthetics: function"                                                                                               
       [65] "        compute_layer: function"                                                                                            
       [66] "        compute_panel: function"                                                                                            
       [67] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [68] "        required_aes: "                                                                                                     
       [69] "        setup_data: function"                                                                                               
       [70] "        setup_params: function"                                                                                             
       [71] "        use_defaults: function"                                                                                             
       [72] "        super:  <ggproto object: Class Position, gg>"                                                                       
       [73] "    print: function"                                                                                                        
       [74] "    setup_layer: function"                                                                                                  
       [75] "    show.legend: FALSE"                                                                                                     
       [76] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
       [77] "        aesthetics: function"                                                                                               
       [78] "        compute_group: function"                                                                                            
       [79] "        compute_layer: function"                                                                                            
       [80] "        compute_panel: function"                                                                                            
       [81] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
       [82] "        dropped_aes: "                                                                                                      
       [83] "        extra_params: na.rm"                                                                                                
       [84] "        finish_layer: function"                                                                                             
       [85] "        non_missing_aes: "                                                                                                  
       [86] "        optional_aes: "                                                                                                     
       [87] "        parameters: function"                                                                                               
       [88] "        required_aes: "                                                                                                     
       [89] "        retransform: TRUE"                                                                                                  
       [90] "        setup_data: function"                                                                                               
       [91] "        setup_params: function"                                                                                             
       [92] "        super:  <ggproto object: Class Stat, gg>"                                                                           
       [93] "    stat_params: list"                                                                                                      
       [94] "    super:  <ggproto object: Class Layer, gg> "                                                                             
       [95] " .. .. $ geom_segment   :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
       [96] "    aes_params: list"                                                                                                       
       [97] "    compute_aesthetics: function"                                                                                           
       [98] "    compute_geom_1: function"                                                                                               
       [99] "    compute_geom_2: function"                                                                                               
      [100] "    compute_position: function"                                                                                             
      [101] "    compute_statistic: function"                                                                                            
      [102] "    computed_geom_params: NULL"                                                                                             
      [103] "    computed_mapping: NULL"                                                                                                 
      [104] "    computed_stat_params: NULL"                                                                                             
      [105] "    constructor: call"                                                                                                      
      [106] "    data: waiver"                                                                                                           
      [107] "    draw_geom: function"                                                                                                    
      [108] "    finish_statistics: function"                                                                                            
      [109] "    geom: <ggproto object: Class GeomSegment, Geom, gg>"                                                                    
      [110] "        aesthetics: function"                                                                                               
      [111] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [112] "        draw_group: function"                                                                                               
      [113] "        draw_key: function"                                                                                                 
      [114] "        draw_layer: function"                                                                                               
      [115] "        draw_panel: function"                                                                                               
      [116] "        extra_params: na.rm"                                                                                                
      [117] "        handle_na: function"                                                                                                
      [118] "        non_missing_aes: linetype linewidth"                                                                                
      [119] "        optional_aes: "                                                                                                     
      [120] "        parameters: function"                                                                                               
      [121] "        rename_size: TRUE"                                                                                                  
      [122] "        required_aes: x y xend|yend"                                                                                        
      [123] "        setup_data: function"                                                                                               
      [124] "        setup_params: function"                                                                                             
      [125] "        use_defaults: function"                                                                                             
      [126] "        super:  <ggproto object: Class Geom, gg>"                                                                           
      [127] "    geom_params: list"                                                                                                      
      [128] "    inherit.aes: TRUE"                                                                                                      
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
      [166] " .. .. $ geom_text_repel:Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
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
      [177] "    data: data.frame"                                                                                                       
      [178] "    draw_geom: function"                                                                                                    
      [179] "    finish_statistics: function"                                                                                            
      [180] "    geom: <ggproto object: Class GeomTextRepel, Geom, gg>"                                                                  
      [181] "        aesthetics: function"                                                                                               
      [182] "        default_aes: uneval"                                                                                                
      [183] "        draw_group: function"                                                                                               
      [184] "        draw_key: function"                                                                                                 
      [185] "        draw_layer: function"                                                                                               
      [186] "        draw_panel: function"                                                                                               
      [187] "        extra_params: na.rm"                                                                                                
      [188] "        handle_na: function"                                                                                                
      [189] "        non_missing_aes: "                                                                                                  
      [190] "        optional_aes: "                                                                                                     
      [191] "        parameters: function"                                                                                               
      [192] "        rename_size: FALSE"                                                                                                 
      [193] "        required_aes: x y label"                                                                                            
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
      [205] "    position: <ggproto object: Class PositionNudgeRepel, Position, gg>"                                                     
      [206] "        aesthetics: function"                                                                                               
      [207] "        compute_layer: function"                                                                                            
      [208] "        compute_panel: function"                                                                                            
      [209] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [210] "        required_aes: "                                                                                                     
      [211] "        setup_data: function"                                                                                               
      [212] "        setup_params: function"                                                                                             
      [213] "        use_defaults: function"                                                                                             
      [214] "        x: 0"                                                                                                               
      [215] "        y: 0.0419061922194211 0.0419061922194211 0.0419061922194211 ..."                                                    
      [216] "        super:  <ggproto object: Class PositionNudgeRepel, Position, gg>"                                                   
      [217] "    print: function"                                                                                                        
      [218] "    setup_layer: function"                                                                                                  
      [219] "    show.legend: FALSE"                                                                                                     
      [220] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
      [221] "        aesthetics: function"                                                                                               
      [222] "        compute_group: function"                                                                                            
      [223] "        compute_layer: function"                                                                                            
      [224] "        compute_panel: function"                                                                                            
      [225] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [226] "        dropped_aes: "                                                                                                      
      [227] "        extra_params: na.rm"                                                                                                
      [228] "        finish_layer: function"                                                                                             
      [229] "        non_missing_aes: "                                                                                                  
      [230] "        optional_aes: "                                                                                                     
      [231] "        parameters: function"                                                                                               
      [232] "        required_aes: "                                                                                                     
      [233] "        retransform: TRUE"                                                                                                  
      [234] "        setup_data: function"                                                                                               
      [235] "        setup_params: function"                                                                                             
      [236] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [237] "    stat_params: list"                                                                                                      
      [238] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [239] " .. .. $ geom_hline...4 :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
      [240] "    aes_params: list"                                                                                                       
      [241] "    compute_aesthetics: function"                                                                                           
      [242] "    compute_geom_1: function"                                                                                               
      [243] "    compute_geom_2: function"                                                                                               
      [244] "    compute_position: function"                                                                                             
      [245] "    compute_statistic: function"                                                                                            
      [246] "    computed_geom_params: NULL"                                                                                             
      [247] "    computed_mapping: NULL"                                                                                                 
      [248] "    computed_stat_params: NULL"                                                                                             
      [249] "    constructor: call"                                                                                                      
      [250] "    data: data.frame"                                                                                                       
      [251] "    draw_geom: function"                                                                                                    
      [252] "    finish_statistics: function"                                                                                            
      [253] "    geom: <ggproto object: Class GeomHline, Geom, gg>"                                                                      
      [254] "        aesthetics: function"                                                                                               
      [255] "        check_constant_aes: FALSE"                                                                                          
      [256] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [257] "        draw_group: function"                                                                                               
      [258] "        draw_key: function"                                                                                                 
      [259] "        draw_layer: function"                                                                                               
      [260] "        draw_panel: function"                                                                                               
      [261] "        extra_params: na.rm"                                                                                                
      [262] "        handle_na: function"                                                                                                
      [263] "        non_missing_aes: "                                                                                                  
      [264] "        optional_aes: "                                                                                                     
      [265] "        parameters: function"                                                                                               
      [266] "        rename_size: TRUE"                                                                                                  
      [267] "        required_aes: yintercept"                                                                                           
      [268] "        setup_data: function"                                                                                               
      [269] "        setup_params: function"                                                                                             
      [270] "        use_defaults: function"                                                                                             
      [271] "        super:  <ggproto object: Class Geom, gg>"                                                                           
      [272] "    geom_params: list"                                                                                                      
      [273] "    inherit.aes: FALSE"                                                                                                     
      [274] "    layer_data: function"                                                                                                   
      [275] "    layout: NULL"                                                                                                           
      [276] "    map_statistic: function"                                                                                                
      [277] "    mapping: ggplot2::mapping, uneval, gg, S7_object"                                                                       
      [278] "    name: NULL"                                                                                                             
      [279] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
      [280] "        aesthetics: function"                                                                                               
      [281] "        compute_layer: function"                                                                                            
      [282] "        compute_panel: function"                                                                                            
      [283] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [284] "        required_aes: "                                                                                                     
      [285] "        setup_data: function"                                                                                               
      [286] "        setup_params: function"                                                                                             
      [287] "        use_defaults: function"                                                                                             
      [288] "        super:  <ggproto object: Class Position, gg>"                                                                       
      [289] "    print: function"                                                                                                        
      [290] "    setup_layer: function"                                                                                                  
      [291] "    show.legend: FALSE"                                                                                                     
      [292] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
      [293] "        aesthetics: function"                                                                                               
      [294] "        compute_group: function"                                                                                            
      [295] "        compute_layer: function"                                                                                            
      [296] "        compute_panel: function"                                                                                            
      [297] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [298] "        dropped_aes: "                                                                                                      
      [299] "        extra_params: na.rm"                                                                                                
      [300] "        finish_layer: function"                                                                                             
      [301] "        non_missing_aes: "                                                                                                  
      [302] "        optional_aes: "                                                                                                     
      [303] "        parameters: function"                                                                                               
      [304] "        required_aes: "                                                                                                     
      [305] "        retransform: TRUE"                                                                                                  
      [306] "        setup_data: function"                                                                                               
      [307] "        setup_params: function"                                                                                             
      [308] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [309] "    stat_params: list"                                                                                                      
      [310] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [311] " .. .. $ annotate       :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
      [312] "    aes_params: list"                                                                                                       
      [313] "    compute_aesthetics: function"                                                                                           
      [314] "    compute_geom_1: function"                                                                                               
      [315] "    compute_geom_2: function"                                                                                               
      [316] "    compute_position: function"                                                                                             
      [317] "    compute_statistic: function"                                                                                            
      [318] "    computed_geom_params: NULL"                                                                                             
      [319] "    computed_mapping: NULL"                                                                                                 
      [320] "    computed_stat_params: NULL"                                                                                             
      [321] "    constructor: call"                                                                                                      
      [322] "    data: data.frame"                                                                                                       
      [323] "    draw_geom: function"                                                                                                    
      [324] "    finish_statistics: function"                                                                                            
      [325] "    geom: <ggproto object: Class GeomText, Geom, gg>"                                                                       
      [326] "        aesthetics: function"                                                                                               
      [327] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [328] "        draw_group: function"                                                                                               
      [329] "        draw_key: function"                                                                                                 
      [330] "        draw_layer: function"                                                                                               
      [331] "        draw_panel: function"                                                                                               
      [332] "        extra_params: na.rm"                                                                                                
      [333] "        handle_na: function"                                                                                                
      [334] "        non_missing_aes: angle"                                                                                             
      [335] "        optional_aes: "                                                                                                     
      [336] "        parameters: function"                                                                                               
      [337] "        rename_size: FALSE"                                                                                                 
      [338] "        required_aes: x y label"                                                                                            
      [339] "        setup_data: function"                                                                                               
      [340] "        setup_params: function"                                                                                             
      [341] "        use_defaults: function"                                                                                             
      [342] "        super:  <ggproto object: Class Geom, gg>"                                                                           
      [343] "    geom_params: list"                                                                                                      
      [344] "    inherit.aes: FALSE"                                                                                                     
      [345] "    layer_data: function"                                                                                                   
      [346] "    layout: NULL"                                                                                                           
      [347] "    map_statistic: function"                                                                                                
      [348] "    mapping: unlabelled, ggplot2::mapping, uneval, gg, S7_object"                                                           
      [349] "    name: NULL"                                                                                                             
      [350] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
      [351] "        aesthetics: function"                                                                                               
      [352] "        compute_layer: function"                                                                                            
      [353] "        compute_panel: function"                                                                                            
      [354] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [355] "        required_aes: "                                                                                                     
      [356] "        setup_data: function"                                                                                               
      [357] "        setup_params: function"                                                                                             
      [358] "        use_defaults: function"                                                                                             
      [359] "        super:  <ggproto object: Class Position, gg>"                                                                       
      [360] "    print: function"                                                                                                        
      [361] "    setup_layer: function"                                                                                                  
      [362] "    show.legend: FALSE"                                                                                                     
      [363] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
      [364] "        aesthetics: function"                                                                                               
      [365] "        compute_group: function"                                                                                            
      [366] "        compute_layer: function"                                                                                            
      [367] "        compute_panel: function"                                                                                            
      [368] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [369] "        dropped_aes: "                                                                                                      
      [370] "        extra_params: na.rm"                                                                                                
      [371] "        finish_layer: function"                                                                                             
      [372] "        non_missing_aes: "                                                                                                  
      [373] "        optional_aes: "                                                                                                     
      [374] "        parameters: function"                                                                                               
      [375] "        required_aes: "                                                                                                     
      [376] "        retransform: TRUE"                                                                                                  
      [377] "        setup_data: function"                                                                                               
      [378] "        setup_params: function"                                                                                             
      [379] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [380] "    stat_params: list"                                                                                                      
      [381] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [382] " .. .. $ geom_hline...6 :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
      [383] "    aes_params: list"                                                                                                       
      [384] "    compute_aesthetics: function"                                                                                           
      [385] "    compute_geom_1: function"                                                                                               
      [386] "    compute_geom_2: function"                                                                                               
      [387] "    compute_position: function"                                                                                             
      [388] "    compute_statistic: function"                                                                                            
      [389] "    computed_geom_params: NULL"                                                                                             
      [390] "    computed_mapping: NULL"                                                                                                 
      [391] "    computed_stat_params: NULL"                                                                                             
      [392] "    constructor: call"                                                                                                      
      [393] "    data: data.frame"                                                                                                       
      [394] "    draw_geom: function"                                                                                                    
      [395] "    finish_statistics: function"                                                                                            
      [396] "    geom: <ggproto object: Class GeomHline, Geom, gg>"                                                                      
      [397] "        aesthetics: function"                                                                                               
      [398] "        check_constant_aes: FALSE"                                                                                          
      [399] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [400] "        draw_group: function"                                                                                               
      [401] "        draw_key: function"                                                                                                 
      [402] "        draw_layer: function"                                                                                               
      [403] "        draw_panel: function"                                                                                               
      [404] "        extra_params: na.rm"                                                                                                
      [405] "        handle_na: function"                                                                                                
      [406] "        non_missing_aes: "                                                                                                  
      [407] "        optional_aes: "                                                                                                     
      [408] "        parameters: function"                                                                                               
      [409] "        rename_size: TRUE"                                                                                                  
      [410] "        required_aes: yintercept"                                                                                           
      [411] "        setup_data: function"                                                                                               
      [412] "        setup_params: function"                                                                                             
      [413] "        use_defaults: function"                                                                                             
      [414] "        super:  <ggproto object: Class Geom, gg>"                                                                           
      [415] "    geom_params: list"                                                                                                      
      [416] "    inherit.aes: FALSE"                                                                                                     
      [417] "    layer_data: function"                                                                                                   
      [418] "    layout: NULL"                                                                                                           
      [419] "    map_statistic: function"                                                                                                
      [420] "    mapping: ggplot2::mapping, uneval, gg, S7_object"                                                                       
      [421] "    name: NULL"                                                                                                             
      [422] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
      [423] "        aesthetics: function"                                                                                               
      [424] "        compute_layer: function"                                                                                            
      [425] "        compute_panel: function"                                                                                            
      [426] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [427] "        required_aes: "                                                                                                     
      [428] "        setup_data: function"                                                                                               
      [429] "        setup_params: function"                                                                                             
      [430] "        use_defaults: function"                                                                                             
      [431] "        super:  <ggproto object: Class Position, gg>"                                                                       
      [432] "    print: function"                                                                                                        
      [433] "    setup_layer: function"                                                                                                  
      [434] "    show.legend: FALSE"                                                                                                     
      [435] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
      [436] "        aesthetics: function"                                                                                               
      [437] "        compute_group: function"                                                                                            
      [438] "        compute_layer: function"                                                                                            
      [439] "        compute_panel: function"                                                                                            
      [440] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [441] "        dropped_aes: "                                                                                                      
      [442] "        extra_params: na.rm"                                                                                                
      [443] "        finish_layer: function"                                                                                             
      [444] "        non_missing_aes: "                                                                                                  
      [445] "        optional_aes: "                                                                                                     
      [446] "        parameters: function"                                                                                               
      [447] "        required_aes: "                                                                                                     
      [448] "        retransform: TRUE"                                                                                                  
      [449] "        setup_data: function"                                                                                               
      [450] "        setup_params: function"                                                                                             
      [451] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [452] "    stat_params: list"                                                                                                      
      [453] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [454] " .. .. $ annotate...7   :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>"
      [455] "    aes_params: list"                                                                                                       
      [456] "    compute_aesthetics: function"                                                                                           
      [457] "    compute_geom_1: function"                                                                                               
      [458] "    compute_geom_2: function"                                                                                               
      [459] "    compute_position: function"                                                                                             
      [460] "    compute_statistic: function"                                                                                            
      [461] "    computed_geom_params: NULL"                                                                                             
      [462] "    computed_mapping: NULL"                                                                                                 
      [463] "    computed_stat_params: NULL"                                                                                             
      [464] "    constructor: call"                                                                                                      
      [465] "    data: data.frame"                                                                                                       
      [466] "    draw_geom: function"                                                                                                    
      [467] "    finish_statistics: function"                                                                                            
      [468] "    geom: <ggproto object: Class GeomText, Geom, gg>"                                                                       
      [469] "        aesthetics: function"                                                                                               
      [470] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [471] "        draw_group: function"                                                                                               
      [472] "        draw_key: function"                                                                                                 
      [473] "        draw_layer: function"                                                                                               
      [474] "        draw_panel: function"                                                                                               
      [475] "        extra_params: na.rm"                                                                                                
      [476] "        handle_na: function"                                                                                                
      [477] "        non_missing_aes: angle"                                                                                             
      [478] "        optional_aes: "                                                                                                     
      [479] "        parameters: function"                                                                                               
      [480] "        rename_size: FALSE"                                                                                                 
      [481] "        required_aes: x y label"                                                                                            
      [482] "        setup_data: function"                                                                                               
      [483] "        setup_params: function"                                                                                             
      [484] "        use_defaults: function"                                                                                             
      [485] "        super:  <ggproto object: Class Geom, gg>"                                                                           
      [486] "    geom_params: list"                                                                                                      
      [487] "    inherit.aes: FALSE"                                                                                                     
      [488] "    layer_data: function"                                                                                                   
      [489] "    layout: NULL"                                                                                                           
      [490] "    map_statistic: function"                                                                                                
      [491] "    mapping: unlabelled, ggplot2::mapping, uneval, gg, S7_object"                                                           
      [492] "    name: NULL"                                                                                                             
      [493] "    position: <ggproto object: Class PositionIdentity, Position, gg>"                                                       
      [494] "        aesthetics: function"                                                                                               
      [495] "        compute_layer: function"                                                                                            
      [496] "        compute_panel: function"                                                                                            
      [497] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [498] "        required_aes: "                                                                                                     
      [499] "        setup_data: function"                                                                                               
      [500] "        setup_params: function"                                                                                             
      [501] "        use_defaults: function"                                                                                             
      [502] "        super:  <ggproto object: Class Position, gg>"                                                                       
      [503] "    print: function"                                                                                                        
      [504] "    setup_layer: function"                                                                                                  
      [505] "    show.legend: FALSE"                                                                                                     
      [506] "    stat: <ggproto object: Class StatIdentity, Stat, gg>"                                                                   
      [507] "        aesthetics: function"                                                                                               
      [508] "        compute_group: function"                                                                                            
      [509] "        compute_layer: function"                                                                                            
      [510] "        compute_panel: function"                                                                                            
      [511] "        default_aes: ggplot2::mapping, uneval, gg, S7_object"                                                               
      [512] "        dropped_aes: "                                                                                                      
      [513] "        extra_params: na.rm"                                                                                                
      [514] "        finish_layer: function"                                                                                             
      [515] "        non_missing_aes: "                                                                                                  
      [516] "        optional_aes: "                                                                                                     
      [517] "        parameters: function"                                                                                               
      [518] "        required_aes: "                                                                                                     
      [519] "        retransform: TRUE"                                                                                                  
      [520] "        setup_data: function"                                                                                               
      [521] "        setup_params: function"                                                                                             
      [522] "        super:  <ggproto object: Class Stat, gg>"                                                                           
      [523] "    stat_params: list"                                                                                                      
      [524] "    super:  <ggproto object: Class Layer, gg> "                                                                             
      [525] "  ..@ scales     :Classes 'ScalesList', 'ggproto', 'gg' <ggproto object: Class ScalesList, gg>"                             
      [526] "    add: function"                                                                                                          
      [527] "    add_defaults: function"                                                                                                 
      [528] "    add_missing: function"                                                                                                  
      [529] "    backtransform_df: function"                                                                                             
      [530] "    clone: function"                                                                                                        
      [531] "    find: function"                                                                                                         
      [532] "    get_scales: function"                                                                                                   
      [533] "    has_scale: function"                                                                                                    
      [534] "    input: function"                                                                                                        
      [535] "    map_df: function"                                                                                                       
      [536] "    n: function"                                                                                                            
      [537] "    non_position_scales: function"                                                                                          
      [538] "    scales: list"                                                                                                           
      [539] "    set_palettes: function"                                                                                                 
      [540] "    train_df: function"                                                                                                     
      [541] "    transform_df: function"                                                                                                 
      [542] "    super:  <ggproto object: Class ScalesList, gg> "                                                                        
      [543] "  ..@ guides     :Classes 'Guides', 'ggproto', 'gg' <ggproto object: Class Guides, gg>"                                     
      [544] "    add: function"                                                                                                          
      [545] "    assemble: function"                                                                                                     
      [546] "    build: function"                                                                                                        
      [547] "    draw: function"                                                                                                         
      [548] "    get_custom: function"                                                                                                   
      [549] "    get_guide: function"                                                                                                    
      [550] "    get_params: function"                                                                                                   
      [551] "    get_position: function"                                                                                                 
      [552] "    guides: NULL"                                                                                                           
      [553] "    merge: function"                                                                                                        
      [554] "    missing: <ggproto object: Class GuideNone, Guide, gg>"                                                                  
      [555] "        add_title: function"                                                                                                
      [556] "        arrange_layout: function"                                                                                           
      [557] "        assemble_drawing: function"                                                                                         
      [558] "        available_aes: any"                                                                                                 
      [559] "        build_decor: function"                                                                                              
      [560] "        build_labels: function"                                                                                             
      [561] "        build_ticks: function"                                                                                              
      [562] "        build_title: function"                                                                                              
      [563] "        draw: function"                                                                                                     
      [564] "        draw_early_exit: function"                                                                                          
      [565] "        elements: list"                                                                                                     
      [566] "        extract_decor: function"                                                                                            
      [567] "        extract_key: function"                                                                                              
      [568] "        extract_params: function"                                                                                           
      [569] "        get_layer_key: function"                                                                                            
      [570] "        hashables: list"                                                                                                    
      [571] "        measure_grobs: function"                                                                                            
      [572] "        merge: function"                                                                                                    
      [573] "        override_elements: function"                                                                                        
      [574] "        params: list"                                                                                                       
      [575] "        process_layers: function"                                                                                           
      [576] "        setup_elements: function"                                                                                           
      [577] "        setup_params: function"                                                                                             
      [578] "        train: function"                                                                                                    
      [579] "        transform: function"                                                                                                
      [580] "        super:  <ggproto object: Class GuideNone, Guide, gg>"                                                               
      [581] "    package_box: function"                                                                                                  
      [582] "    print: function"                                                                                                        
      [583] "    process_layers: function"                                                                                               
      [584] "    setup: function"                                                                                                        
      [585] "    subset_guides: function"                                                                                                
      [586] "    train: function"                                                                                                        
      [587] "    update_params: function"                                                                                                
      [588] "    super:  <ggproto object: Class Guides, gg> "                                                                            
      [589] "  ..@ mapping    : <ggplot2::mapping> List of 2"                                                                            
      [590] " .. .. $ x: language ~.sequence"                                                                                            
      [591] " .. .. $ y: language ~.stud.resid"                                                                                          
      [592] "  ..@ theme      : <theme>  Named list()"                                                                                   
      [593] " .. .. @ complete: logi FALSE"                                                                                              
      [594] " .. .. @ validate: logi TRUE"                                                                                               
      [595] "  ..@ coordinates:Classes 'CoordCartesian', 'Coord', 'ggproto', 'gg' <ggproto object: Class CoordCartesian, Coord, gg>"     
      [596] "    aspect: function"                                                                                                       
      [597] "    backtransform_range: function"                                                                                          
      [598] "    clip: on"                                                                                                               
      [599] "    default: TRUE"                                                                                                          
      [600] "    distance: function"                                                                                                     
      [601] "    draw_panel: function"                                                                                                   
      [602] "    expand: TRUE"                                                                                                           
      [603] "    is_free: function"                                                                                                      
      [604] "    is_linear: function"                                                                                                    
      [605] "    labels: function"                                                                                                       
      [606] "    limits: list"                                                                                                           
      [607] "    modify_scales: function"                                                                                                
      [608] "    range: function"                                                                                                        
      [609] "    ratio: NULL"                                                                                                            
      [610] "    render_axis_h: function"                                                                                                
      [611] "    render_axis_v: function"                                                                                                
      [612] "    render_bg: function"                                                                                                    
      [613] "    render_fg: function"                                                                                                    
      [614] "    reverse: none"                                                                                                          
      [615] "    setup_data: function"                                                                                                   
      [616] "    setup_layout: function"                                                                                                 
      [617] "    setup_panel_guides: function"                                                                                           
      [618] "    setup_panel_params: function"                                                                                           
      [619] "    setup_params: function"                                                                                                 
      [620] "    train_panel_guides: function"                                                                                           
      [621] "    transform: function"                                                                                                    
      [622] "    super:  <ggproto object: Class CoordCartesian, Coord, gg> "                                                             
      [623] "  ..@ facet      :Classes 'FacetNull', 'Facet', 'ggproto', 'gg' <ggproto object: Class FacetNull, Facet, gg>"               
      [624] "    attach_axes: function"                                                                                                  
      [625] "    attach_strips: function"                                                                                                
      [626] "    compute_layout: function"                                                                                               
      [627] "    draw_back: function"                                                                                                    
      [628] "    draw_front: function"                                                                                                   
      [629] "    draw_labels: function"                                                                                                  
      [630] "    draw_panel_content: function"                                                                                           
      [631] "    draw_panels: function"                                                                                                  
      [632] "    finish_data: function"                                                                                                  
      [633] "    format_strip_labels: function"                                                                                          
      [634] "    init_gtable: function"                                                                                                  
      [635] "    init_scales: function"                                                                                                  
      [636] "    map_data: function"                                                                                                     
      [637] "    params: list"                                                                                                           
      [638] "    set_panel_size: function"                                                                                               
      [639] "    setup_data: function"                                                                                                   
      [640] "    setup_panel_params: function"                                                                                           
      [641] "    setup_params: function"                                                                                                 
      [642] "    shrink: TRUE"                                                                                                           
      [643] "    train_scales: function"                                                                                                 
      [644] "    vars: function"                                                                                                         
      [645] "    super:  <ggproto object: Class FacetNull, Facet, gg> "                                                                  
      [646] "  ..@ layout     :Classes 'Layout', 'ggproto', 'gg' <ggproto object: Class Layout, gg>"                                     
      [647] "    coord: NULL"                                                                                                            
      [648] "    coord_params: list"                                                                                                     
      [649] "    facet: NULL"                                                                                                            
      [650] "    facet_params: list"                                                                                                     
      [651] "    finish_data: function"                                                                                                  
      [652] "    get_scales: function"                                                                                                   
      [653] "    layout: NULL"                                                                                                           
      [654] "    map_position: function"                                                                                                 
      [655] "    panel_params: NULL"                                                                                                     
      [656] "    panel_scales_x: NULL"                                                                                                   
      [657] "    panel_scales_y: NULL"                                                                                                   
      [658] "    render: function"                                                                                                       
      [659] "    render_labels: function"                                                                                                
      [660] "    reset_scales: function"                                                                                                 
      [661] "    resolve_label: function"                                                                                                
      [662] "    setup: function"                                                                                                        
      [663] "    setup_panel_guides: function"                                                                                           
      [664] "    setup_panel_params: function"                                                                                           
      [665] "    train_position: function"                                                                                               
      [666] "    super:  <ggproto object: Class Layout, gg> "                                                                            
      [667] "  ..@ labels     : <ggplot2::labels> List of 2"                                                                             
      [668] " .. .. $ x: chr \"Sequence\""                                                                                               
      [669] " .. .. $ y: chr \"Studentized Residual\""                                                                                   
      [670] "  ..@ meta       : list()"                                                                                                  
      

