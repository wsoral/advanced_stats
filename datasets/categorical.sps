* Encoding: ISO-8859-2.
/* Coding of gender - effect coding

COMPUTE egender = -1.
IF (gender = 1) egender = 1.
EXECUTE.

/* Coding of gender - weighted effect coding

/* Check frequencies */

FREQUENCIES gender. 

COMPUTE wegender = -(1753/1561).
IF (gender = 1) wegender = 1.
EXECUTE.

/* Coding of education - dummy coding scheme */

COMPUTE d1 = 0.
COMPUTE d2 = 0.
IF (education = 2) d1 = 1.
IF (education = 3) d2 = 1.
EXECUTE.

/* Coding of education - effect coding scheme */

COMPUTE e1 = 0.
COMPUTE e2 = 0.
IF (education = 1) e1 = -1.
IF (education = 1) e2 = -1.
IF (education = 2) e1 = 1.
IF (education = 3) e2 = 1.
EXECUTE.


/* Coding  of education - weighted effect coding scheme */

/* First check frequencies */

FREQUENCIES education.

/* Code */ 

COMPUTE we1 = 0.
COMPUTE we2 = 0.
IF (education = 1) we1 = -(1419/698).
IF (education = 1) we2 = -(1197/698).
IF (education = 2) we1 = 1.
IF (education = 3) we2 = 1.
EXECUTE.

/* Coding of education - orthogonal (contrast) coding scheme */

COMPUTE o1 = 0.
COMPUTE o2 = 0.
IF (education = 1) o1 = -0.5.
IF (education = 2) o1 = 0.25.
IF (education = 3) o1 = 0.25.
IF (education = 2) o2 = -0.5.
IF (education = 3) o2 = 0.5.
EXECUTE.
