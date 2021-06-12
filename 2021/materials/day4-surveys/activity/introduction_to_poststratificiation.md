# Quick introduction to cell-based post-stratification
## Prepared for 2021 Summer Institutes in Computational Social Science
## Matthew Salganik

Post-stratification is an estimation technique. It allows you to take the data in your sample and use it to make estimates.  

Let's start with a toy example from the [video you've already watched](https://www.youtube.com/watch?v=SLAi9v5CCnM).  Imagine that you want to estimate the average height of Princeton students.  You collect a non-random sample of 60 students: 20 men and 40 women. Imagine that in your sample men have average height of 180cm and women have average height of 170cm. Further, imagine that we know that Princeton students are 50% women and 50% men. Given this information how should we estimate the average height of Princeton students?

There are two natural approaches. The first--let's call it approach 1---would be to take the sample mean, which is 173.3 ((170*40+180*20)/60).  That seems fine, but it does not adjust for the fact that the sample seems to have a gender imbalance.

The second approach---let's call it approach 2---would be to combine your estimates for the average heights of men and women based on the information you have about the population, specially that have are men and half are women.  Approach 2 would yield an estimate of 175 (180*0.5+170*0.5).

Approach 2 is cell-based post-stratification, and it can be generalized in many different ways.  One way that it can be generalized is that we can chop the population into any number of groups (not just men and women), produce an estimate for each group, and then combine the estimates based on the relative sizes of the groups.  For example, the [study by Wei Wang and colleagues](https://doi.org/10.1016/j.ijforecast.2014.06.001) that used a non-random, opt-in sample from Xbox to predict the result of the 2012 election---described in [*Bit by Bit*](https://www.bitbybitbook.com/en/1st-ed/asking-questions/who/)---chopped the population into 76,256 groups defined by gender (2 categories), race (4 categories), age (4 categories), education (4 categories), state (51 categories), party ID (3 categories), ideology (3 categories), and 2008 vote (3 categories).  One challenge that arises as you chop the population into smaller and smaller groups is that you have less data from each group to make estimates.  For this reason, some researchers, such as Wang and colleagues, also use statistical modeling to produce the estimate for each group.  For this activity, we will not use modeling to the produce the estimate for each group because of time constraints.

Cell-based post-stratification will be unbiased under conditions described in the Mathematical notes of Chapter 3 of *Bit by Bit*.  This is the approach that you will use in your activity.

## What to read next

- Holt and Smith. 1979. "[Post Stratification](https://www.jstor.org/stable/2344652)", *Journal of the Royal Statistical Society, Series A*.
- Little. 1993. "[Post-Stratification: A Modeler's Perspective](https://www.jstor.org/stable/2290792 )", *Journal of the American Statistical Association*.
- Sarndall, Swensson, and Wretman. 1992. *[Model Assisted Survey Sampling](https://www.springer.com/gp/book/9780387406206)*.
- Lohr. 2010. *[Sampling: Design and Analysis](https://www.sharonlohr.com/sampling-design-and-analysis)*
