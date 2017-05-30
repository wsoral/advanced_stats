* Encoding: UTF-8.
COMPUTE rwa_t1 = mean(rwa101 TO rwa112).
COMPUTE rwa_r2 = mean(rwa201 TO rwa212).
COMPUTE cons_t1 = mean(spisz11 TO spisz16).
COMPUTE cons_t2 = mean(spisz21 TO spisz26).
EXECUTE.


/* Half-split with odd and even items. */

COMPUTE cons_o = mean(spisz11, spisz13, spisz15).
COMPUTE cons_e = mean(spisz12, spisz14, spisz16).
EXECUTE.


/* Some simple calculations */

DO IF $casenum = 1.
COMPUTE #temp = 2*0.903/(1+0.903).
PRINT /#temp.
END IF.
EXECUTE.


