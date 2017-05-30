# Final exam preparation exercises

## Dataset: final.sav

The dataset is a sample of N = 812 responses on conspiracy stereotype of Jews, its antecedents and consequences.

### Main variables:
- main DV: a scale of 6 items on different beliefs regarding conspiracy theories about Jews (CONSPIRACY)
- main IVs: 2 scales (4 items each) of measuring political POWERLESSNESS and MEANINGLESSNESS

### Covariates and moderators:
- collective narcissism (CN): a scale of 5 items measuring defensive aspects of national identification
- national identification (IDENT): a scale of 12 items measuring 3 aspects of national identification (items 1-4: ingroup ties; items 5-8: centrality; items 9-12: ingroup affect)

### Discriminatory consequences of conspiracy beliefs:
- political discrimination of Jews (POLITICAL DISC.): 4 items regarding different beliefs used to justify political discrimination of Jews - lower score means more prejudice
- economic discrimination of Jews (ECONOMIC DISC.): 2 items on support for different discriminatory politics against Jews - lower score means more prejudice
- social distance towards Jews (SOCIAL DISTANCE): 2 items from Bogardus scale - higher score means more prejudice

### Demographics variables:
- gender: male vs. female
- age: nominal variable with 5 age categories
- live: nominal variable with 5 categories related to place of living

## Tasks:

### Task 1
Start with some psychometric analyses. Check reliability for each scale. Note any suspicious results. What can you do to improve the reliability of the suspicious scales?

### Task 2
Compute composite scores (means) for each of the scales. You can use the fact that the scales are grouped together and use this syntax (example for collective narcissism):

```
COMPUTE coll_nar = mean(cn_1 TO cn_5).
EXECUTE.
```
Note that you don't need to write all the items in each scale, but only a first and a last one (you have to use TO keyword between).

Some items are reverse coded and may require recoding. E.g. ident_3 indicates low identification. To quickly recode it (so that higher values will indicate higher identification), use:

```
COMPUTE ident_3r = 6 - ident_3.
EXECUTE.
```
Here you recode the value of the item to the new one - ident_3r. You just subtract the value of each observation from (highest possible value + 1).

### Task 3
Perform factor analyses to check whether:
- different scales related to discriminatory attitudes form 3 different interpretable factors
- powerlessness and meaninglessness form 2 separate factors
- national identification scale forms 3 different factors

- In each case check whether requirements of factor analysis are satisfied.
- Compare the number of factors extracted and suggested by scree plot, with the theoretical expectation.
- Check factor loadings to see whether they load on factors as suggested by theoretical expectations, use both orthogonal and oblique rotation. Choose the one that gives more clear view of the factors. To make things easier check: Options > Sorted by size and Options > Suppress small coefficients (use value 0.4 as cutoff).
- In case where you find satisfactory solution, save factor scores and use them instead of composite scores computed by  averaging.

### Task 4
Compute instrumental variables for gender, age, and place of living. Use dummy or effect coding. Below you will find code for creating instrumental variables for age. You can adjust it and use it also for other variables.

```
* dummy coding

COMPUTE age_d1 = 0.
COMPUTE age_d2 = 0.
COMPUTE age_d3 = 0.
COMPUTE age_d4 = 0.
IF (age = 2) age_d1 = 1.
IF (age = 3) age_d2 = 1.
IF (age = 4) age_d3 = 1.
IF (age = 5) age_d4 = 1.
EXECUTE.

* effect coding

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
```

### Task 5
Perform regression analysis with composite score of conspiracy scale regressed on categorical variables: gender, age, and place of living. Interpret the results, e.g. which gender believes more in conspiracy stereotypes of Jews, and is the difference significant.

### Task 6
Add collective narcissism and national identification to the model. Instead of doing a new analysis, in the Block section click `Next`. You should be in block 2 of 2, add the 2 new covariates. Run and interpret the analysis. E.g. what is the relation between collective narcissism and belief in conspiracy stereotypes.

### Task 7
Finally, add powerlessness and meaninglessness.
- Check assumptions for the obtained linear regression model.
- Assess the goodness of fit of the model.
- Check which of the 2 main variables: powerlessness or meaninglessness is significant predictor of conspiracy stereotypes. Assess importance of both predictors.

### Task 8
1. Check the mediation hypothesis: powerlessness affects discriminatory attitudes towards Jews through conspiracy stereotypes. In other words check whether conspiracy beliefs mediate the relationship between powerlessness and discriminatory attitudes (i.e. perform mediation analysis 3 times for each of the discrimination scales).
2. Repeat the same analysis but this time with meaninglessness as X variable.

### Task 9
1. Check moderation hypothesis: effect of meaninglessness on discriminatory attitudes towards Jews depends on the level of national identification. Perform moderation hypothesis 3 times for each of the discrimination scales. In case of significant interaction - meaninglessness x identification, check simple slopes, i.e. whether effect of meaninglessness on discriminatory attitudes is higher/lower for those with high/low level of identification.
2. Repeat the same analysis but this time with powerlessness as X variable.
