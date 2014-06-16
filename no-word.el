. ivregress gmm si  cpi_growth  gdp_gap (l.si=l.li l. cpi_growth),vce(hac nwest 3)

Instrumental variables (GMM) regression                Number of obs =      64
                                                       Wald chi2(3)  =  657.37
                                                       Prob > chi2   =  0.0000
                                                       R-squared     =  0.9516
GMM weight matrix: HAC Bartlett 3                      Root MSE      =  .19896

------------------------------------------------------------------------------
             |                 HAC
          si |      Coef.   Std. Err.      z    P>|z|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
          si |
         L1. |   .8505502   .0396867    21.43   0.000     .7727658    .9283347
             |
  cpi_growth |   .0453043   .0073804     6.14   0.000      .030839    .0597697
     gdp_gap |    .042673   .0197982     2.16   0.031     .0038693    .0814766
       _cons |   .7404647   .2213623     3.35   0.001     .3066027    1.174327
------------------------------------------------------------------------------
Instrumented:  L.si
Instruments:   cpi_growth gdp_gap L.li L.cpi_growth
HAC VCE:       Bartlett kernel with 3 lags

. vce
Covariance matrix of coefficients of ivregress model

             |          L.                                    
        e(V) |         si  cpi_growth     gdp_gap       _cons 
-------------+------------------------------------------------
        L.si |  .00157503                                     
  cpi_growth |  .00003131   .00005447                         
     gdp_gap | -.00030822  -.00005043   .00039197             
       _cons | -.00875462  -.00023311   .00177885   .04900125 

. ivregress gmm si  cpi_growth  gdp_gap  l.hp_gap (l.si=l.li  l. cpi_growth hpgrowth),vce
> (hac nwest 3)

Instrumental variables (GMM) regression                Number of obs =      64
                                                       Wald chi2(4)  =  632.88
                                                       Prob > chi2   =  0.0000
                                                       R-squared     =  0.9596
GMM weight matrix: HAC Bartlett 3                      Root MSE      =  .18175

------------------------------------------------------------------------------
             |                 HAC
          si |      Coef.   Std. Err.      z    P>|z|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
          si |
         L1. |   .8286735   .0415298    19.95   0.000     .7472766    .9100704
             |
  cpi_growth |   .0455248   .0068902     6.61   0.000     .0320203    .0590292
     gdp_gap |   .0396127   .0159135     2.49   0.013     .0084228    .0708025
             |
      hp_gap |
         L1. |     .01793   .0078177     2.29   0.022     .0026076    .0332525
             |
       _cons |   .8598564   .2346143     3.66   0.000     .4000208    1.319692
------------------------------------------------------------------------------
Instrumented:  L.si
Instruments:   cpi_growth gdp_gap L.hp_gap L.li L.cpi_growth hpgrowth
HAC VCE:       Bartlett kernel with 3 lags

. vce
Covariance matrix of coefficients of ivregress model

             |          L.                                  L.            
        e(V) |         si  cpi_growth     gdp_gap      hp_gap       _cons 
-------------+------------------------------------------------------------
        L.si |  .00172472                                                 
  cpi_growth |  .00008804   .00004747                                     
     gdp_gap | -.00029458  -.00004911   .00025324                         
    L.hp_gap | -.00007323  -3.152e-06   .00001526   .00006112             
       _cons | -.00970471  -.00056821   .00181075   .00036701   .05504388 

. . regress si  l.cpi_growth gdp_gap,r
Linear regression                                      Number of obs =      64
                                                       F(  2,    61) =    8.21
                                                       Prob > F      =  0.0007
                                                       R-squared     =  0.3363
                                                       Root MSE      =   .7547

------------------------------------------------------------------------------
             |               Robust
          si |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
  cpi_growth |
         L1. |   .0514627   .0294971     1.74   0.086    -.0075203    .1104458
             |
     gdp_gap |   .3910902   .1158874     3.37   0.001      .159359    .6228214
       _cons |   5.617572   .0987867    56.87   0.000     5.420036    5.815108


M2回归结果

. ivregress gmm m2_gap  cpi_growth  f3.gdp_gap (l. m2_gap=l.m1_gap l2. m1_gap),vce(hac nw
> est 3)

Instrumental variables (GMM) regression                Number of obs =      59
                                                       Wald chi2(3)  =  282.75
                                                       Prob > chi2   =  0.0000
                                                       R-squared     =  0.8354
GMM weight matrix: HAC Bartlett 3                      Root MSE      =   .9556

------------------------------------------------------------------------------
             |                 HAC
      m2_gap |      Coef.   Std. Err.      z    P>|z|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
      m2_gap |
         L1. |   .9213888   .0779655    11.82   0.000     .7685792    1.074198
             |
  cpi_growth |  -.1077925   .0524954    -2.05   0.040    -.2106815   -.0049034
             |
     gdp_gap |
         F3. |  -.2987026    .154624    -1.93   0.053    -.6017601     .004355
             |
       _cons |   .1037169   .1711975     0.61   0.545    -.2318241    .4392579
------------------------------------------------------------------------------
Instrumented:  L.m2_gap
Instruments:   cpi_growth F3.gdp_gap L.m1_gap L2.m1_gap
HAC VCE:       Bartlett kernel with 3 lags

. vce

Covariance matrix of coefficients of ivregress model

             |          L.                     F3.            
        e(V) |     m2_gap  cpi_growth     gdp_gap       _cons 
-------------+------------------------------------------------
    L.m2_gap |  .00607862                                     
  cpi_growth |  .00185102   .00275577                         
  F3.gdp_gap |  .00420808  -.00028956    .0239086             
       _cons | -.00639495  -.00575735   -.0097321   .02930859 

. estat overid

  Test of overidentifying restriction:

  Hansen's J chi2(1) = .770744 (p = 0.3800)

.
. ivregress gmm m2_gap  cpi_growth  f3.gdp_gap  l2.hp_gap (l. m2_gap=l.m1_gap l2. m1_gap)
> ,vce(hac nwest 3)

Instrumental variables (GMM) regression                Number of obs =      59
                                                       Wald chi2(4)  =  375.74
                                                       Prob > chi2   =  0.0000
                                                       R-squared     =  0.8559
GMM weight matrix: HAC Bartlett 3                      Root MSE      =    .894

------------------------------------------------------------------------------
             |                 HAC
      m2_gap |      Coef.   Std. Err.      z    P>|z|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
      m2_gap |
         L1. |   .9157235   .0601968    15.21   0.000     .7977399    1.033707
             |
  cpi_growth |   -.110767   .0439801    -2.52   0.012    -.1969665   -.0245675
             |
     gdp_gap |
         F3. |  -.1859539   .1455499    -1.28   0.201    -.4712265    .0993187
             |
      hp_gap |
         L2. |  -.0875035   .0315087    -2.78   0.005    -.1492594   -.0257476
             |
       _cons |   .1371993   .1421571     0.97   0.334    -.1414236    .4158222
------------------------------------------------------------------------------
Instrumented:  L.m2_gap
Instruments:   cpi_growth F3.gdp_gap L2.hp_gap L.m1_gap L2.m1_gap
HAC VCE:       Bartlett kernel with 3 lags

. vce

Covariance matrix of coefficients of ivregress model

             |          L.                     F3.         L2.            
        e(V) |     m2_gap  cpi_growth     gdp_gap      hp_gap       _cons 
-------------+------------------------------------------------------------
    L.m2_gap |  .00362365                                                 
  cpi_growth |  .00113107   .00193425                                     
  F3.gdp_gap |  .00031856  -.00232047   .02118478                         
   L2.hp_gap |  .00011202   .00062445  -.00093838    .0009928             
       _cons | -.00231262  -.00328688  -.00120512  -.00222986   .02020865 

. estat overid

  Test of overidentifying restriction:

  Hansen's J chi2(1) =  .24916 (p = 0.6177)


. prais  m2_gap  cpi_growth    gdp_gapav,corc

Iteration 0:  rho = 0.0000
Iteration 1:  rho = 0.8657
Iteration 2:  rho = 0.8665
Iteration 3:  rho = 0.8665
Iteration 4:  rho = 0.8665

Cochrane-Orcutt AR(1) regression -- iterated estimates

      Source |       SS       df       MS              Number of obs =      59
-------------+------------------------------           F(  2,    56) =    4.44
       Model |  7.58392002     2  3.79196001           Prob > F      =  0.0162
    Residual |  47.8218706    56  .853961974           R-squared     =  0.1369
-------------+------------------------------           Adj R-squared =  0.1061
       Total |  55.4057906    58  .955272251           Root MSE      =   .9241

------------------------------------------------------------------------------
      m2_gap |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
  cpi_growth |  -.2115022   .1155766    -1.83   0.073    -.4430301    .0200256
   gdp_gapav |  -.5882953   .3207301    -1.83   0.072    -1.230795    .0542042
       _cons |   .0857512   .9344099     0.09   0.927    -1.786097    1.957599
-------------+----------------------------------------------------------------
         rho |   .8664952
------------------------------------------------------------------------------
Durbin-Watson statistic (original)    0.241767
Durbin-Watson statistic (transformed) 1.410803.
