---
layout: page
title: Distributions
weight: 4
---

Chapter 2 - Distributions
-------------------------

------------------------------------------------------------------------

### 1. What is Variation?

1.  A distribution is a group of values measured on the same variable.
    Distributions reveal the patterns of variation that affect a
    variable.
    1.  Variation is what makes the world dynamic and uncertain.
    2.  As a scientist, your goal is to understand and explain variation
        (natural laws explain how a variable varies), which makes
        distributions a very important tool.

2.  Variation defined - the tendency for a value to change each time we
    measure it  
3.  Variation is omnipresent
    1.  Example of speed of light  

4.  Causes of variation
    1.  natural laws
    2.  unmeasured variables  
    3.  randomness  

5.  Variation contains structure, which is captured by a distribution

------------------------------------------------------------------------

### 2. Visualizing Distributions

1.  `library(mosaic)`  
2.  `dotPlot()`  
3.  `histogram()`  
4.  `freqpolygon()`  
5.  `densityplot()`  
6.  So far we have examined a continuous variable. A continuous variable
    can take any value on a segment of the continuous number line. Other
    variables are *discrete*, the values of a discrete variable fall in
    a countable set of values that may or may not have an implied order.
    1.  Visualize a discrete distribution with a bar graph.
    2.  `bargraph()`

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
    1.  The "more" a variable varies, the less certain you can be when
        predicting its values. The spread of the distribution quantifies
        this uncertainty.
        1.  `range()`  
        2.  `var()`  
        3.  `sd()`  
        4.  `IQR()`
        5.  `bwplot()`

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

### 4. Distributions and laws

1.  You saw in the end of Chapter 1 that incomplete laws map input
    values to output distributions, which you can now see is a useful
    thing to do.
    1.  `bwplot(horizontal = FALSE)`

2.  There is a relationship between how complete a law is and how much
    variation is in the output distributions.
    1.  As a law becomes more complete, the variation diminishes.
    2.  When the law is complete, the variation diminishes to zero (e.g.
        each distribution becomes a point).

3.  Consider how this works with our example:
    1.  You can examine the weights by themselves. This is the most
        incomplete form of our law, `weight ~`.
        1.  The weights have a structured distribution with lots of
            uncertainty.

    2.  We know that height is a component of the law that determines
        weight, which allows us to form an incomplete law,
        `weight ~ height`. The output of this law will be a set of
        distributions.
        1.  Each of these output distributions has a smaller spread than
            the distribution of weight by itself.

    3.  We can add a second component of the law that determines weight,
        `sex`. The partial law `weight ~ height + sex` also returns a
        set of distributions.
        1.  These distributions have even less variation than those
            returned by the less complete law `weight ~ height`.

    4.  You can imagine adding additional components of the law that
        determines weight. Each component will reduce the variation of
        the output distributions. At some point, the law will be
        complete and the variation will be reduced to zero.
        1.  A distribution with zero variance is a single point.
        2.  e.g. complete laws map values to values, as we saw with
            *V* = 9.8 × *T*

4.  Why does this happen? Because each new component in the law explains
    some of the variation that was previously left in the distributions
    as unexplained variation.
5.  Laws that map values to distributions are called *models*.
    1.  You can write a model like this, where $\\bar{y}$ is a statistic
        that describes the best guess of *Y* and *ϵ* is an error term
        that explains what type of distribution *Y* has and how much
        variation is in the distribution,

    $$\\bar{Y} + \\epsilon = \\alpha + \\beta\_{1} X\_{1} + \\beta\_{2} X\_{2} + ...$$

    1.  but it is more common to see models written like this

    $$\\bar{Y} = \\alpha + \\beta\_{1} X\_{1} + \\beta\_{2} X\_{2} + ... + \\epsilon$$

6.  Data scientists attempt to use data to find, improve, and test
    models, just as other scientists use observations to find, improve,
    and test laws.
7.  But working with models creates some difficulties.
    1.  How do you pick the best model to describe a cloud of noisy
        data?
        1.  Visual explanation

    2.  How do you use individual observations to test hypotheses
        against models
        1.  Visual explanation

    3.  We'll examine these details in Chapter 3, but first we need to
        examine one last topic related to distributions.

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

        3.  Reason based on the assumption unless it failed the test  

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

### 5. Summary

1.  If you measure anything twice, you will get two different values, so
    long as you measure precisely enough.
    1.  This is variation  

2.  You can observe the structure of variation by collecting many
    observations and recording their distribution
3.  Distributions provide information about individual cases. They
    reveal
    1.  typical values and typical ranges
    2.  best guesses
    3.  the amount of uncertainty associated with variation
    4.  probabilities

4.  Complete laws provide a function from input values to output values,
    but incomplete laws provide a function from input values to output
    distributions. The more complete a law is, the less variation these
    distributions will contain.
5.  Sidebar - this approach to modeling raises an interesting question:
    what is the role of randomness in the world?
    1.  Randomness provides a simplifying assumption that lets us apply
        probability to distributions to predict future values.
    2.  But the behaviour of models suggests that we could explain
        anything that seems random in the natural world by identifying
        more variables (even if these variables seem trivial, or would
        be what we describe as measurement errors).
    3.  Does this mean that randomness does not exist? Not necessarily.
    4.  But it does suggest that we can take an attitude towards
        randomness that is similar to LaPlace's famous attitude about
        God: we have no need of that hypothesis
