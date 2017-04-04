* Encoding: windows-1250.
GLM dominance trustwo neutral BY threat
  /WSFACTOR=face 3 Polynomial 
  /METHOD=SSTYPE(3)
  /POSTHOC=threat(TUKEY) 
  /PLOT=PROFILE(threat*face)
  /PRINT=ETASQ HOMOGENEITY 
  /CRITERIA=ALPHA(.05)
  /LMATRIX "control vs. others"
            threat  2 -1 -1
  /LMATRIX "morality vs. others"
            threat -1  2 -1
  /MMATRIX "dominance vs. others"
            dominance  2 trustwo -1 neutral -1;
           "trustworthiness vs. others"
            dominance -1 trustwo  2 neutral -1
  /WSDESIGN=face 
  /DESIGN=threat.
