---
layout: page
title: Variation
weight: 4
---

What is variation? How to describe variation with a distribution. How to describe a distribution with statistics. How to reason about variation with probability.

***

1. What is Variation?  
    1. Variation defined - the tendency for a value to change each time we measure it  
    2. Variation is omnipresent  
        a. Example of speed of light  
    3. Causes of variation  
        a. unmeasured variables  
        b. randomness  
    4. Variation contains structure    
    
***
    
2. Distributions  
    1. Distribution defined  
        a. Visualizing variation  
            i. `library(mosaic)`  
            ii. `dotPlot()`  
            iii. `histogram()`  
            iv. `freqpolygon()`  
            v. `densityplot()`  
            
***

3. What is the relationship between a distribution and an individual case?  
    1. Motivating examples  
    2. Typical values  
        a. `median()` - "typical" value  
        b. `mean()` - best guess  
        c. `min()` - smallest value  
        d. `max()` - largest value  
        e. Statistic defined - a number computed with an algorithm, that describes a group of individuals  
    3. Uncertainty  
        a. `range()`  
        b. `var()`  
        c. `sd()`  
    4. Probability  
        a. You can use probability to reason from a distribution to individual cases  
            i. Probability defined as a frequency. Each variable takes each value with a certain frequency.  
            ii. If the next observation is similar to the observations in your distribution, it will have the same probability of taking each state as the previous observations.  
        b. `sample()`  
        c. `resample()`  
        d. `do()`  
        e. confidence intervals  
            i. `quantile()`  

***

4. Parametric distributions  
    1. This way of reasoning causes a problem: how do you know that you've collected enough data to have an accurate picture of the distribution?  
    2. In some situations, you can deduce the type of distribution that your data follows  
        a. `plotDist()`  
        b. Binomial distribution  
        c. Normal distribution  
        d. t distribution  
        e. Chi squared  
        f. F  
        g. Possion distribution  
        h. etc.  
    3. In these cases, calculations become simple  
        a. `rnorm()`, etc.  
        b. `pnorm()`, etc.  
        c, `xpnorm()`, etc.  
        d. `dnorm()`, etc.  
        e. `qnorm()`, etc.  
    4. Before modern computers, statisticians relied heavily on parameteric
distributions.  
        a. A common pattern of reasoning was to   
            i. Assume that data follows a distribution  
            ii. Try to disprove the assumption:  
                a. `qqmath()`, `xqqmath()`, `qqplot()`  
                b. Goodness of fit tests  
            iii. Reason based on the assumption unless it failed the test  
    5. Modern computing makes it easier to avoid parametric assumptions  
        a. It is easier to collect more data  
        b. It is easier to calculate probabilities computationally, which reduces the need to calculate them analytically (from a distribution)  
        c. However, it is important to understand parametric distributions because many methods of data science rely on them  

***

5. Summary
    1. If you measure anything twice, you will get two different values, so long as you measure precisely enough.  
        a. This is variation  
    2. You can observe the structure of variation by collecting many   observations and recording their distribution
    3. A distribution will let you use probability to reason about individual cases. A distribution reveals typical values, as well as the amount of uncertainty caused by variation.  
    4. Variation disrupts the standard method of science.  
        a. an improbable value could "disprove" a true hypotheses  
        b. variation creates noise that hides patterns in data  
    5. Data scientists modify the principles of science to account for variation