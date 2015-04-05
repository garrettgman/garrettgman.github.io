---
layout: page
title: Model Fitting
weight: 5
---

Chapter 3 - Model Fitting
-------------------------

Summary: Laws look like continuous sequences of points in data, but
models look like noisy clouds of points. As a result, it is much harder
to reverse engineer a model from data than it is to reverse engineer a
law. How should we pick the model that best describes the data? We can
use inverse probability, or likelihood to find the model that is *most
likely* to have generated the data. This allows us to fit many different
types of models. Linear. Linear discrete. Linear multivariate. Linear
multivariate with interaction terms. Generalized linear models. And
non-linear Generalized Additive Models.

------------------------------------------------------------------------

### 1. How to fit?

1.  Both laws and models appear as patterns in data. However it is much
    easier to spot a law with these patterns than it is to spot a model.
    1.  Why should this be? For a law, each data point falls *on* the
        function that describes the law.
    2.  But for a model, each data point falls *around* the function
        that describes the model. In fact, the data points are
        *distributed* around the function (as you know).
        1.  With enough points, you may be able to notice the structure
            of these distributions, and therefore make a good guess
            about the form of the model, but you will rarely have this
            many points.
        2.  More commonly you will need to make the best guess that you
            can about the model given the data that you have.
        3.  In practice, you use an algorithm to select the best guess
            and R takes care of the details
            1.  `lm()`
            2.  `xyplot()`, `makeFun()`, `plotFun(add = TRUE)`

        4.  But what is R doing?

2.  Many algorithms exist to help you spot the "best" model given the
    data. In this chapter we will look at how the most popular
    algorithms work and learn to use them. In the following chapter, we
    will consider how to choose between the algorithms when modeling a
    particular data set.

------------------------------------------------------------------------

### 2. Likelihood, the inverse of probability

1.  The most intuitive modeling algorithms rely on likelihood. In short,
    they pick the model that is most *likely* to have generated the
    data.
2.  We use the term likely in everyday speech, but in science
    *likelihood* has a specific meaning that is closely related to
    probability.
    1.  Probability describes the chance that a certain observation will
        come to pass given a model. It reasons from model to (future)
        observation.
    2.  Likelihood describes the chance that a given model caused the
        observation that has come to pass. It reasons from observation
        to model. For this reason, likelihood is sometimes called
        inverse probability.
        1.  Although likelihood and probability both deal with chances
            they behave differently mathematically. Most notably, the
            probability of disjoint events must sum to one. Not so for
            likelihoods.

3.  You can calculate the likelihood that a specific model produced a
    set of data.
    1.  Example of a very simple model
        1.  `goal(y ~ 1, data = ...)`
        2.  `lm()`

    2.  To find the most likely model compare the likelihoods of
        different models and choose the model with the highest
        likelihood.
    3.  There is no guarantee that the model with the highest likelihood
        generated the data, but it is the most pragmatic conclusion to
        draw. This method of reasoning is known as abduction.

4.  In practice, there is a logistical issue to address. There is an
    infinite number of models to choose from. How will you ever stop
    calculating likelihoods?
    1.  Well, the same way you manage possibilities whenever you make a
        decision in real life. You first narrow the possibilities down
        to a smaller set for further consideration. Each modeling
        algorithm only applies to a small set of models, the set of
        models that have the structure the algorithm optimizes
        likelihoods over.
        1.  By choosing to use an algorithm, you narrow the set of
            models to consider to a tractable number. The algorithm then
            identifies the most likely model within that set.
        2.  You should choose the algorithm that matches the structure
            of the natural law that you wish to model (if you know this
            structure).
        3.  In the next chapter, we will consider how to proceed when
            you do not know anything about this structure.

------------------------------------------------------------------------

### 3. Fitting a linear model

1.  Linear models are among the oldest and most interpretable modeling
    methods. A linear model uses a linear function to map a set of
    values to a set of normal distributions.
    1.  Linear models are widely useful because
        1.  The normal distribution occurs frequently in the natural
            world.
        2.  Any continuous function can be approximated well with a
            straight line over a short distance.

    2.  Linear models also have another useful feature. For linear
        models (and generalized linear models with exponential
        distributions), the model with maximum likelihood will be the
        model that has the smallest residual sum of squares.
        1.  A residual is the distance between the mean of the
            distribution predicted by a model and the actual data point
            observed.
        2.  Notice that residuals can be positive or negative. Squaring
            the residuals is a way to measure the magnitude of a
            residual.
        3.  Hence the least squares model will be the model that has the
            smallest squared residuals, i.e. the model that comes
            closest to the data points.

2.  The `lm()` function fits a linear model to data.
    1.  `goal(y ~ x, data = ...)`
    2.  `lm()`

3.  R's modeling functions return an object that contains a lot of data.
    To access the data, *store then explore*.
    1.  `resid()`
    2.  `coef()`
    3.  `fitted()`
    4.  `xyplot()`, `makeFun()`, `plotFun(add = TRUE)`

4.  Linear models are particularly easy to interpret. The coefficient of
    *X* is the number of units that the best guess of *Y* ($\\hat{Y}$)
    increases as *X* increases by one unit.

------------------------------------------------------------------------

### 4. Discrete terms

1.  You can also apply linear models to discrete terms.
    1.  Consider this example. To explore the data:
        1.  `diffmean()`
        2.  `tally()`
        3.  `prop()`
        4.  `perc()`

    2.  Build your model as you normally would
        1.  `goal(y ~ 1 | z, data = ...)`
        2.  `lm()`

2.  Interpretation
    1.  R will provide a coefficient for each level of the discrete
        variable except one. This level will be used as a baseline.
    2.  The intercept is the best guess of *Y* for the baseline group
    3.  Each *β* coefficient is a modifier. It shows how to modify the
        baseline coefficient to determine the best guess of *Y* for each
        remaining group. In other words, it shows the change in the best
        guess of *Y* that results from switching from the baseline group
        to the coefficient's group.
    4.  Use `factor()` to change the baseline group. Your coefficients
        will change, but the final results will not.

------------------------------------------------------------------------

### 5. Multivariate models

1.  Add additional terms to the formula to include additional predictors
    in your model
    1.  `goal(y ~ x | z, data = ...)`
    2.  `goal(y ~ x + z, data = ...)`

2.  Now each coefficient should be interpreted as the change in the best
    guess of *Y* that results from changing *X*<sub>*i*</sub> by one
    unit *while holding the values of the other *X*<sub>*j*</sub>
    constant*.

------------------------------------------------------------------------

### 6. Interaction terms

1.  Multivariate models create the possibility of interaction effects.
    An interaction effect occurs when the values of one variable modify
    the effect of another variable.
    1.  A visual explanation

2.  Notation
    1.  `goal(y ~ x + z + x:z, data = ...)`
    2.  `goal(y ~ x*z, data = ...)`

3.  Interpretation

------------------------------------------------------------------------

### 7. Generalized models

1.  `lm()` uses likelihood to find the model that maps values of *X* to
    distributions in *Y* that have a *normal* distribution. We saw in
    Chapter 2 that many natural events will have a normal distribution,
    but other will not. What if we want to use a model that maps values
    to non-normal distributions? (This would be appropriate if we are
    modeling a non-normal *Y* or even a discrete *Y*)
    1.  This is an important change because the distributions associated
        with a model determine how well it fits. They determine how
        likely the model is to generate the data.

2.  It is easy to generalize linear models to non-normal cases by
    modeling a function of *Y*.
    1.  Compare linear model equation to glm model equation
    2.  Such functions are known as *link functions*. They map
        non-normal input (*Y*) to normal output, which can be fitted in
        the usual way.
    3.  These models are known as *generalized linear models (GLM)*
    4.  The most common form of generalized linear models are logisitic
        models
    5.  `glm(..., family = ...)`
        1.  `options(na.action = "na.exclude")`
        2.  `predict(mod, type = "link"); predict(mod, type = "link")`
        3.  `resid(gmod, type = "deviance"); resid(gmod, type = "pearson")`

3.  To interpret a generalized linear model, back transform the
    coefficients through the link function, or simply try to understand
    the predictions
    1.  Interpreting a logistic regression

------------------------------------------------------------------------

### 8. Non-linear models

1.  We can use a similar strategy to model non-linear relationships.
    Instead of modeling *Y* on *X*, we can model *Y* on a function of
    *X*.
    1.  If you have a particular function of *X* in mind, you can put it
        straight into the model equation.
        1.  `lm()`
        2.  Don't forget to back transform your results when
            interpreting

2.  *General additive models (GAMS)* fit a model that maps smooth
    functions of the *X*<sub>*i*</sub> to distributions in *Y*. These
    functions do not need to be linear, only smooth, which makes GAM
    algorithms useful for mapping many types of relationships.
    1.  GAM model equation
    2.  `library(mgcv)`
    3.  `gam()`
    4.  `s()`
        1.  interactions

3.  As before, we are using likelihood to identify the best model, but
    our low level tactics have changed. The model with the highest
    likelihood will be the model whose *X* functions put the model line
    exactly through each data point, something that may now be feasible.
    However, such a model is as unlikely to be true in the practical
    sense as it is likely to be true in the mathematical sense. As a
    result, `gam()` uses a penalized iterative method to select the most
    likely sensible model.
4.  You can combine generalized linear methods and generalized additive
    methods with `gam()`.
    1.  Model equation
    2.  Hence, you can think of `gam()` as a type of generalized
        modeling algorithm

5.  Interpreting the results of GAMs is difficult. For GAMs as well as
    other modeling methods that we will encounter later, interpret the
    model through its predictions.

------------------------------------------------------------------------

### 9. Summary

1.  At its heart, model fitting is an optimization algorithm. Each of
    the methods above optimizes a likelihood function to find the "best
    fitting" model.
    1.  Recommended reading for the mathematics behind model fitting:
        The Elements of Statistical Learning

2.  Each of these methods finds the best *parametric* model to fit your
    data. It is hard to describe a model (which must describe all
    possible data points) without using a parametric distribution.
    1.  We will look at some *non-parametric* models in Chapter 6.

3.  This chapter covered the most popular (and the most accessible)
    methods of model fitting, but many more modeling algorithms exist.
    1.  Additional reference for other methods: Applied Predictive
        modeling
    2.  How do you know which method you should use with your data?
        Chapter 4 will begin with this question.
