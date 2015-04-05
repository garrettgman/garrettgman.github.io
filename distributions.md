---
layout: page
title: Distributions
weight: 4
---

Chapter 2 - Distributions
-------------------------

Summary: Distributions reveal useful information, but the information is
probabilistic.

------------------------------------------------------------------------

### 1. Distributions

1.  Models predict more than the range of values a group of points will
    fall into. They also predict the *distribution* of the points.
    1.  A distribution contains information about probabilities
        associated with the points. For example, distributions reveal
        which values are typical, which are rare, and which are
        seemingly impossible. A distribution also reveals the "best
        guess" for predicting future values, as well as how certain or
        uncertain that guess may be.
    2.  You can think of a distribution as the "boundary" conditions on
        a variable's values.

------------------------------------------------------------------------

### 2. Visualizing Distributions

1.  The easiest way to understand a distribtuion is to visualize it.
    1.  `library(mosaic); library(lattice)`  
    2.  `dotPlot()`  
    3.  `histogram()`  
    4.  `freqpolygon()`  
    5.  `densityplot()`  

2.  So far we have examined a continuous variable. A continuous variable
    can take any value on a segment of the continuous number line. Other
    variables are *discrete*, the values of a discrete variable fall in
    a countable set of values that may or may not have an implied order.
    1.  Visualize a discrete distribution with a bar graph.
    2.  `bargraph()`

------------------------------------------------------------------------

### 3. Statistics

1.  The most useful properties of a distribution can be described with
    familiar statistics.
    1.  Statistic defined - a number computed with an algorithm, that
        describes a group of individuals  
    2.  Motivating examples  

2.  Typical values
    1.  `median()` - "typical" value  
    2.  `mean()` - best guess  
    3.  `min()` - smallest value  
    4.  `max()` - largest value  
    5.  Describe a prediction as $\\bar{Y} + \\epsilon$, where *ϵ*
        denotes the structure of the distribution.

3.  Uncertainty
    1.  The "more" a variable varies, the less certain you can be when
        predicting its values. The spread of the distribution quantifies
        this uncertainty.
        1.  `range()`  
        2.  `var()`  
        3.  `sd()`  
        4.  `IQR()`
        5.  `bwplot()`

------------------------------------------------------------------------

### 4. Probability

1.  What is the relationship between a distribution and an individual
    case?
2.  You can use probability to reason from a distribution to individual
    cases
    1.  Probability defined as a frequency. Each variable takes each
        value with a certain frequency.  
    2.  If the next observation is similar to the observations in your
        distribution, it will have the same probability of taking each
        state as the previous observations.  

3.  Simulation. You can use the frequencies of a distribution to
    simulate new values from the distribution, a technique known as
    monte carlo simulation.
    1.  `sample()`  
    2.  `resample()`  
    3.  `do()`  
    4.  prediction intervals
        1.  `quantile()`

------------------------------------------------------------------------

### 5. Parametric distributions

1.  How do you know that you've collected enough data to have an
    accurate picture of a variable's distribution?  
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

        3.  Proceed as if the assumption were true  

    2.  But this reasoning has a weakness: it relies on an assumption
        that has not been proven. Moreover, we're tempted to believe
        that the assumption is true because the assumption will help us.
        1.  Unfortunately, tests that would disprove the assumption if
            it were false are not very powerful
        2.  Once you assume a distribution, all of your results are
            "conditional" on the assumption being correct. This makes it
            very difficult to interpret parametric probabilities.

5.  Modern computing makes it easier to avoid parametric assumptions
    1.  It is easier to collect more data  
    2.  It is easier to calculate probabilities computationally, which
        reduces the need to calculate them analytically (from a
        distribution)  
    3.  However, it is important to understand parametric distributions
        because many methods of data science rely on them

------------------------------------------------------------------------

### 5. Variation

1.  Distributions provide a tool for working with variation.
    1.  Variation is what makes the world dynamic and uncertain.
    2.  As a scientist, your goal is to understand and explain variation
        (natural laws explain how a variable varies), which makes
        distributions a very important tool.

2.  Variation defined - the tendency for a value to change each time we
    measure it  
3.  Variation is omnipresent
    1.  Example of speed of light  

4.  Causes of variation
    1.  unidentified laws
    2.  randomness

5.  Models partition the variation in a variable into explained
    variation and unexplained distribution.
    1.  The distribution predicted by the model captures the unexplained
        variation
    2.  As you add components of the law to your model, you will
        transfer unexplained variation to explained variation. As a
        result, the distributions predicted by the model will become
        narrower, and the individual predictions more uncertain.
    3.  Eventually, a distribution will collapse to a single point as
        you include the entire law in your model.

------------------------------------------------------------------------

### 6. Summary

1.  Scientists search for natural laws. A complete law provides a
    function between values and a value. An incomplete law is a model.
    It provides a function between values and a distribution.
2.  Distributions reveal useful information, but the information is
    probabilistic.
3.  As models improve (include more components of the underlying law),
    the distributions that they predict become narrower.
    1.  As a result, their individual predictions become more certain.
    2.  If a model includes all of the components of a law, its
        distributions will collapse into single points. The model has
        become a law, a function from a set of values to a single value.

4.  Unfortunately, the nature of distributions make models a little more
    difficult to work with than laws. Recall the two steps of the
    scientific method.
    1.  Identify laws as patterns in data
        1.  Which function is "correct"?

    2.  Test laws against new data
        1.  Does the data "disprove" the model?

5.  Due to these problems, data scientists must modify the tactics they
    use to implement the strategy of the scientific method. We'll
    examine these tactics in the rest of this Part.
