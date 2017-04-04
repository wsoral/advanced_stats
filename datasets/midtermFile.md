# Preparing for midterm

While preparing for midterm exam you can use dataset midterm.sav. These are simulated results that could be obtained in some experimental study.

Participants after car accidents took part in a program where they were treated for their PTSD symptoms. Both men and women took part.
Participants in control condition (n=80) received booklets about PTSD and were encouraged to read it.
Eighty participants took part in psychotherapy only and the same number took part in pharmacotherapy only.
Last group (n=80) took part both in psychotherapy and pharmacotherapy.

DV in the study was a general level of well-being measured before program, just after the program, and 1 after the program ended.
For each participant time that elapsed from the accident was recorded at the beginning of the program.

This dataset can be analyzed in several ways.
1. Check whether the type of treatment has any effect on well-being after treatment.
  * check assumption of homogeneity of variance
  * check main effect of both psychotherapy and pharmacotherapy - which form of therapy seems to be more efficient (use values of effect size to compare them)
  * check whether there is an interaction between both forms of treatment
2. Repeat the analysis but this time accounting for the time elapsed from the accident
  * check whether assumptions for performing ANCOVA are not violated
  * check main effects of both psychotherapy and pharmacotherapy - which form of therapy seems to be more efficient (use values of effect size to compare them)
  * check whether there is an interaction between both forms of treatment; if yes analyse simple main effects of both types of therapy, interpret them
3. Check whether results of both forms of therapy are the same for males and females, account for time from the accident
  * perform 3 way ANOVA, and interpret main effects and 2 way interactions
  * if 3 way interaction is significant, decompose it with proper syntax commands and check 2 way interactions for males and females separately
  * if any of the simple 2 way interaction is significant decompose it and analyze simple main effects
4. Perform repeated measures analysis with well-being measured three times: pretest, posttest, and followup
  * check assumption of sphericity and apply any correction if necessary
  * check for the effect of time on well-being
  * interpret the effects of contrasts: what does linear trend means, and what does quadratic trend means
  * try different types of contrasts (look for description in SPSS documentation and Andy Field's book)
5. Perform mixed design ANOVA and check effects of time across participants in different conditions
  * for easiness of interpretation you can use one of auxiliary variables (aux1 or aux2) instead of those used in factorial ANOVA
  * check changes of well-being with time for those that received some treatment vs. those in control group
  * check assumption of homogeneity of inter-correlations
  * check whether a difference between wellbeing post-treatment and in follow up study vs. in pre-test is significantly higher for those that received some form of the therapy (vs. those who do not receive any treatment)
