* Encoding: windows-1250.
GLM se by level content
  /METHOD=SSTYPE(3)
  /PLOT = PROFILE(content*level)
  /EMMEANS = TABLES(level*content) COMPARE (content) ADJ(BONFERRONI)
  /LMATRIX = "H1: competence will increase individual SE"
             content        -1  2 -1
             level*content  -1  2 -1  0  0  0
  /LMATRIX = "H2: morality will increase collective SE"
             content        -1 -1  2
             level*content   0  0  0 -1 -1  2
  /PRINT = ETASQ
  /DESIGN = level content level*content.
