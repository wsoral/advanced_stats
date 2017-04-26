* Encoding: windows-1250.
UNIANOVA time BY stereo sport gender
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
  /LMATRIX "gender==male"
   stereo*sport      
   stereo*sport*gender 
  /LMATRIX "gender==female"
   stereo*sport       
   stereo*sport*gender
  /PLOT=PROFILE(stereo*sport*gender)
  /EMMEANS=TABLES(stereo*gender*sport) 
  /PRINT=ETASQ
  /CRITERIA=ALPHA(.05)
  /DESIGN=stereo gender sport stereo*gender stereo*sport gender*sport stereo*gender*sport.
