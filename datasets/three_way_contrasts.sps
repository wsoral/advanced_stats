* Encoding: windows-1250.
/* decomposing 3-way interaction to find 2-way interactions with ANCOVA*/

GLM homon BY gender rwa_01 sdo_01 WITH age education
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(gender*rwa_01*sdo_01)
  /LMATRIX "low SDO"
           gender*rwa_01         1 -1 -1  1
           gender*rwa_01*sdo_01  1  0 -1  0 -1  0  1  0
  /LMATRIX "high SDO"
           gender*rwa_01         1 -1 -1  1
           gender*rwa_01*sdo_01  0  1  0 -1  0 -1  0  1
  /DESIGN.


/* Try to decompose the same 3-way interacation, but this time check 2-way interactions (rwa * sdo) 
/* among men and women. Fill the missing gaps in LMATRIX subcommand  */

GLM homon BY gender rwa_01 sdo_01 WITH age education
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(rwa_01*sdo_01*gender)
  /LMATRIX "men"
           rwa_01*sdo_01         
           gender*rwa_01*sdo_01   
  /LMATRIX "women"
           rwa_01*sdo_01         
           gender*rwa_01*sdo_01 
  /DESIGN.





/* After checking for 2-way interactions we can check simple main effects. */

GLM homon BY gender rwa_01 sdo_01 WITH age education
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(gender*rwa_01*sdo_01)
  /EMMEANS=TABLES(gender*rwa_01*sdo_01) COMPARE (rwa_01)
  /DESIGN.

/* Try to check simple main effects for rwa. Fill the missing subcommand. */

GLM homon BY gender rwa_01 sdo_01 WITH age education
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(gender*rwa_01*sdo_01)
  /DESIGN.
