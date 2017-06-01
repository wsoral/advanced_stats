# Final exam preparation exercises

## Responses

### Task 1

- Collective narcissism - reliability $\alpha = .85$ is satisfactory, deletion of any item would only reduce reliability
- National identification - reliability $\alpha = .37$ is too low, this results due to reverse coded items. After recoding as below, $\alpha = .88$, a satisfactory result

```
COMPUTE ident_3r = 6 - ident_3.
COMPUTE ident_4r = 6 - ident_4.
COMPUTE ident_6r = 6 - ident_6.
COMPUTE ident_8r = 6 - ident_8.
COMPUTE ident_10r = 6 - ident_10.
COMPUTE ident_11r = 6 - ident_11.
EXECUTE.
```

- Conspiracy stereotypes - reliability $\alpha = .96$ is very good, deletion of any item would only reduce reliability
- Powerlessness - reliability $\alpha = .91$ is very good, deletion of any item would only reduce reliability
- Meaninglessness - reliability $\alpha = .90$ is very good, deletion of any item would only reduce reliability
- Political discrimination - reliability $\alpha = .94$ is very good, deletion of any item would only reduce reliability
- Social distance - reliability $\alpha = .84$ is satisfactory, there are only two items, so this is maximum possible (with this data) value
- Economic discrimination - reliability $\alpha = .91$ is very good, there are only two items, so this is maximum possible (with this data) value

### Task 2

Code below can be used to compute composite scores and to give each new variable a label:

- Collective narcissism

```
COMPUTE coll_nar = mean(cn_1 TO cn_5).
EXECUTE.
VARIABLE LABELS coll_nar "Collective narcissism - mean".
```

- National identification (assuming reverse coded variables were recoded previously)

```
COMPUTE n_ident = mean(ident_1, ident_2, ident_3r, ident_4r, ident_5, ident_6r,
                       ident_7, ident_8r, ident_9, ident_10r, ident_11r, ident_12).
EXECUTE.
VARIABLE LABELS n_ident "National identification - mean".
```

- Conspiracy stereotypes

```
COMPUTE con_ste = mean(consp_1 TO consp_6).
EXECUTE.
VARIABLE LABELS con_ste "Conspiracy stereotypes - mean".
```

- Powerlessness

```
COMPUTE power = mean(power_1 TO power_4).
EXECUTE.
VARIABLE LABELS power "Powerlessness - mean".
```

- Meaninglessness

```
COMPUTE meani = mean(mean_1 TO mean_4).
EXECUTE.
VARIABLE LABELS meani "Meaninglessness - mean".
```

- Political discrimination - the composite score reversed to facilitate interpretation

```
COMPUTE pdisc = mean(pdisc_1 TO pdisc_4).
COMPUTE pdisc = 9 - pdisc.
EXECUTE.
VARIABLE LABELS pdisc "Political discrimination - mean".
```

- Social distance

```
COMPUTE sdist = mean(dist_1 TO dist_2).
EXECUTE.
VARIABLE LABELS sdist "Social distance - mean".
```

- Economic discrimination - the composite score reversed to facilitate interpretation

```
COMPUTE edisc = mean(edisc_1 TO edisc_2).
COMPUTE edisc = 6 - edisc.
EXECUTE.
VARIABLE LABELS edisc "Economic discrimination - mean".
```


### Task 3

- Different measures of discriminatory attitudes

A total of 8 items were included in the analysis. Overall KMO measure was higher than 0.7, and equal to KMO = .79 which indicated that correlation is appropriate to perform factor analysis. Moreover the case of each variable MSA was higher than .62. Value of Bartlett's test was significantly different from 0, $\chi^2 (28) = 4591.40, p < .001$, indicating that correlation matrix is different from identity matrix. Finally, the value of the determinant, $det = .003$ didn't provide any evidence of multicollinearity.

Both Kaiser criterion and scree plot indicated a solution with 3 factors as the most appropriate. This was in line with expectations. Moreover, analysis of factor loadings matrix (with varimax rotation) showed that each theoretical scales loaded on different factors. Items related to political discrimination loaded on factor 1 (factor explained 50% of variance), items related to economic discrimination loaded on factor 2 (factor explained 22% of variance), and items related to social distance loaded on factor 3 (factor explained 14% of variance). In the case of each factor loadings for the appropriate scales were higher than .83. Moreover, for every item cross-loadings (i.e. item's correlations with other - not expected - factors) were lower than 0.4.

Additional analysis of loadings with oblimin rotation brought similar conclusions, with correlations between factors ranging from r = -.21 to r = .42 (negative correlations resulted from different codings of the items). Nevertheless, factor scores from FA with varimax rotation were saved and used in further analyses. Anderson-Rubin method of extracting factor scores was used as it results in uncorrelated factor scores with mean of 0, and standard deviation of 1.

- Powerlessness and meaninglessness

A total of 8 items were included in the analysis. Overall KMO measure was higher than 0.7, and equal to KMO = .89 which indicated that correlation is appropriate to perform factor analysis. Moreover the case of each variable MSA was higher than .85. Value of Bartlett's test was significantly different from 0, $\chi^2 (28) = 4992.57, p < .001$, indicating that correlation matrix is different from identity matrix. Finally, the value of the determinant, $det = .002$ didn't provide any evidence of multicollinearity.

Both Kaiser criterion and scree plot indicated a solution with 2 factors as the most appropriate. This was in line with expectations. Moreover, analysis of factor loadings matrix (with varimax rotation) showed that each theoretical scales loaded on different factors. Items related to powerlessness loaded on factor 1 (factor explained 64% of variance), and items related to meaninglessness loaded on factor 2 (factor explained 15% of variance). In the case of each factor loadings for the appropriate scales were higher than .67. Moreover, for every item cross-loadings were lower than 0.41. One should note that the last item in the meaninglessness scale (*The political situation in Poland is so entangled that almost anything might happen*), seemed to load on both factors. However loading on factor 2 (.67) was definitely higher than loading on factor 1 (.41).

Additional analysis of loadings with oblimin rotation brought similar conclusions, with large correlation between, r = .67.

Nevertheless, factor scores from FA with varimax rotation were saved and used in further analyses. Anderson-Rubin method of extracting factor scores was used as it results in uncorrelated factor scores with mean of 0, and standard deviation of 1. Probably using oblimin rotation and regression scores would be a better approach here - but for the sake of simplicity factor scores are saved in the same way as before.

- National identification

A total of 12 items were included in the analysis. Overall KMO measure was higher than 0.7, and equal to KMO = .87 which indicated that correlation is appropriate to perform factor analysis. Moreover the case of each variable MSA was higher than .83. Value of Bartlett's test was significantly different from 0, $\chi^2 (66) = 4816.20, p < .001$, indicating that correlation matrix is different from identity matrix. Finally, the value of the determinant, $det = .003$ didn't provide any evidence of multicollinearity.

Baised on the Kaiser criterion 4 factors were extracted, however scree plot indicated rather 2 factor solution. None of these were in line with expected 3 factors. Factor loadings matrices (with varimax rotation) were analysed for each of the solutions. First, 4-factor solution indicated that all 6 positive coded items loaded on factor 1 (factor explained 45% of variance), whereas negatively coded items loaded on remaining 3 factors. Specifically, negative items related to ingroup affect loaded on factor 2 (factor explained 13% of variance), negative items related to ingroup ties loaded on factor 3 (factor explained 9% of variance), and
Baised on the Kaiser criterion 4 factors were extracted, however scree plot indicated rather 2 factor solution. None of these were in line with expected 3 factors. Factor loadings matrices (with varimax rotation) were analysed for each of the solutions. First, 4-factor solution indicated that all 6 positively coded items loaded on factor 1 (factor explained 45% of variance), whereas negatively coded items loaded on remaining 3 factors. Specifically, negative items related to ingroup affect loaded on factor 2 (factor explained 13% of variance), negative items related to ingroup ties loaded on factor 3 (factor explained 9% of variance), and negative items related to centrality loaded on factor 4 (factor explained 8% of variance). In turn, 2-factor solution indicated that all 6 positively items items loaded on factor 1 (factor explained 45% of variance), while all 6 negatively coded items loaded on factor 2 (factor explained 13% of variance). Hence, initial expectation regarding 3 factors seemed not proven by the analysis. There is some evidence of 3-factor solution for negative, but not for positive items. Overall, the valence of items seems to differentiate the scale mostly.

As initial expectations regarding national identification were not confirmed, I have decided not to compute factor scores for national identification. Because, reliability of the whole scale was satisfactory a simple average of the responses was used in further analyses.

### Task 4

Effect codings for the categorical variable can be computed as below:

- Gender

```
COMPUTE gender_e = -1.
IF (gender = 2) gender_e = 1.
EXECUTE.
VARIABLE LABELS gender_e "Gender (-1=F, 1=M)".
```

- Age

```
COMPUTE age_e1 = 0.
COMPUTE age_e2 = 0.
COMPUTE age_e3 = 0.
COMPUTE age_e4 = 0.
IF (age = 1) age_e1 = -1.
IF (age = 1) age_e2 = -1.
IF (age = 1) age_e3 = -1.
IF (age = 1) age_e4 = -1.
IF (age = 2) age_e1 = 1.
IF (age = 3) age_e2 = 1.
IF (age = 4) age_e3 = 1.
IF (age = 5) age_e4 = 1.
EXECUTE.
VARIABLE LABELS age_e1 "Age (25-34)".
VARIABLE LABELS age_e2 "Age (35-44)".
VARIABLE LABELS age_e3 "Age (45-54)".
VARIABLE LABELS age_e4 "Age (55-)".
```

- Place of living

```
COMPUTE live_e1 = 0.
COMPUTE live_e2 = 0.
COMPUTE live_e3 = 0.
COMPUTE live_e4 = 0.
IF (live = 1) live_e1 = -1.
IF (live = 1) live_e2 = -1.
IF (live = 1) live_e3 = -1.
IF (live = 1) live_e4 = -1.
IF (live = 2) live_e1 = 1.
IF (live = 3) live_e2 = 1.
IF (live = 4) live_e3 = 1.
IF (live = 5) live_e4 = 1.
EXECUTE.
VARIABLE LABELS live_e1 "Live (small town)".
VARIABLE LABELS live_e2 "Live (medium town)".
VARIABLE LABELS live_e3 "Live (big town)".
VARIABLE LABELS live_e4 "Live (city)".
```

### Task 5

Model of conspiracy stereotypes regressed on participants gender, age category, and place of living was analyzed. The model fit was adequate, F(9, 802) = 6.55, p < .001. Overall the model with demographic variables explained 7% of variance of conspiracy stereotypes. Analysis of coefficients for each variable (effect coded categories) indicated that there was significant difference between males and females, in that men endorsed conspiracy stereotypes more the total sample, b = 0.17, SE= 0.04, p < .001, $\beta = .16$. Conspiracy stereotypes were endorsed mostly among the older participants. Specifically, group of age in range 45-54 endorsed conspiracy stereotypes significantly more than the total sample, b = 0.15, SE= 0.07, p = .036, $\beta = .09$, the same was true for group of age more than 55, b = 0.32, SE= 0.09, p < .001, $\beta = .18$. Moreover, among group of the youngest participants (18-24) belief in the conspiracy stereotypes was the lowest, b = -0.32, SE= 0.07, p < .001, $\beta = -.25$. (*Note: You have to change the reference category to see that last result.*). No differences between participants living in different places were observed.
*Note: Usually you would include the results in the table and this would allow you to report also non significant results. However because you will not draw tables during the exam, I decided to put results in the text and to omit some values.*

### Task 6

Two additional variables were added to the previous model: collective narcissism and national identification. This resulted in significant increase in the explained variance of conspiracy stereotypes, $\Delta R^2 = .06, F(2, 800) = 29.13, p < .001$. The new model explained 13% of variance of the outcome variable. Collective narcissism was significant and positive predictor of endorsing conspiracy stereotypes, b = 0.30, SE= 0.04, p < .001, $\beta = .26$, but the effect of national identification was negative, albeit not significant, b = -0.04, SE= 0.05, p = .491, $\beta = -.02$.

### Task 7

*Coming soon...*

### Task 8

*Coming soon...*

### Task 9

*Coming soon...*
