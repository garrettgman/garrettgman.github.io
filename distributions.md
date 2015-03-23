---
layout: page
title: Distributions
weight: 4
---

Chapter 2 - Distributions
-------------------------

Distributions provide a useful tool for reasoning about values that
vary. They provide a goal for data scientists. If you can describe a
variable's distribution, you can make more accurate predictions of the
variable's values.

------------------------------------------------------------------------

### 1. What is Variation?

1.  Variation defined - the tendency for a value to change each time we
    measure it  
2.  Variation is omnipresent
    1.  Example of speed of light  

3.  Causes of variation
    1.  natural laws
    2.  unmeasured variables  
    3.  randomness  

4.  Variation contains structure

------------------------------------------------------------------------

### 2. Distributions

1.  Distribution defined
    1.  Visualizing variation
        1.  `library(mosaic)`  
        2.  `dotPlot()`  
        3.  `histogram()`  
        4.  `freqpolygon()`  
        5.  `densityplot()`

------------------------------------------------------------------------

### 3. What is the relationship between a distribution and an individual case?

1.  Motivating examples  
2.  Typical values
    1.  `median()` - "typical" value  
    2.  `mean()` - best guess  
    3.  `min()` - smallest value  
    4.  `max()` - largest value  
    5.  Statistic defined - a number computed with an algorithm, that
        describes a group of individuals  

3.  Uncertainty
    1.  `range()`  
    2.  `var()`  
    3.  `sd()`  

4.  Probability
    1.  You can use probability to reason from a distribution to
        individual cases
        1.  Probability defined as a frequency. Each variable takes each
            value with a certain frequency.  
        2.  If the next observation is similar to the observations in
            your distribution, it will have the same probability of
            taking each state as the previous observations.  

    2.  `sample()`  
    3.  `resample()`  
    4.  `do()`  
    5.  confidence intervals
        1.  `quantile()`

------------------------------------------------------------------------

### 4. Parametric distributions

1.  This way of reasoning causes a problem: how do you know that you've
    collected enough data to have an accurate picture of the
    distribution?  
2.  In some situations, you can deduce the type of distribution that
    your data follows
    1.  `plotDist()`  
    2.  Binomial distribution  
    3.  Normal distribution  
    4.  t distribution  
    5.  Chi squared  
    6.  F  
    7.  Possion distribution  
    8.  uniform
    9.  etc.  

3.  In these cases, calculations become simple
    1.  `rnorm()`, etc.  
    2.  `pnorm()`, etc.  
    3.  `xpnorm()`, etc.  
    4.  `dnorm()`, etc.  
    5.  `qnorm()`, etc.  

4.  Before modern computers, statisticians relied heavily on parameteric
    distributions.
    1.  A common pattern of reasoning was to
        1.  Assume that data follows a distribution  
        2.  Try to disprove the assumption:
            1.  `qqmath()`, `xqqmath()`, `qqplot()`  
            2.  Goodness of fit tests  

        3.  Reason based on the assumption unless it failed the test  

5.  Modern computing makes it easier to avoid parametric assumptions
    1.  It is easier to collect more data  
    2.  It is easier to calculate probabilities computationally, which
        reduces the need to calculate them analytically (from a
        distribution)  
    3.  However, it is important to understand parametric distributions
        because many methods of data science rely on them

------------------------------------------------------------------------

### 5. Summary

1.  If you measure anything twice, you will get two different values, so
    long as you measure precisely enough.
    1.  This is variation  

2.  You can observe the structure of variation by collecting many
    observations and recording their distribution
3.  A distribution will let you use probability to reason about
    individual cases. A distribution reveals typical values, as well as
    the amount of uncertainty caused by variation.  
4.  Variation disrupts the standard method of science.
    1.  an improbable value could "disprove" a true hypotheses  
    2.  variation creates noise that hides patterns in data  

5.  Data scientists modify the principles of science to account for
    variation
