---
layout: page
title: Models
weight: 5
---

Chapter 3 - Models
------------------

------------------------------------------------------------------------

### 1. Data Science reviewed

1.  We have described the program of data science: data scientists use
    the scientific method to identify and test models, hypotheses about
    parts of natural laws.
    1.  Complete natural laws provide a function that maps values to
        values
    2.  Incomplete natural laws provide a function that maps values to
        distributions
        1.  This makes data science a little more complicated than
            "non-data science":
            1.  The output of a model looks like a cloud of noisy data.
                How can you identify the model that created this cloud?
            2.  It is difficult to refute a distribution with a single
                value (or even a set of values)
            3.  Let's look at this first question. How can you identify
                a model from noisy data?

------------------------------------------------------------------------

### 2. Model fit

1.  Residuals
2.  Discrete variables

### 3. Multivariate models

1.  Multiple variables
2.  Interaction terms
3.  Spurious fit

### 4. Cross Validation

### 5. Non-linear models

1.  Transformations
2.  Splines
3.  Smooth functions
4.  Generalized models
5.  Other types of structure
    1.  survival data
    2.  time series data
    3.  spatial data

### 6. Summary

1.  A note on interpretation - just look at the predictions

`goal(y ~ x | z, data = ..., groups = ...)` `diffmean()` `tally()`
`ladd()` `prop()` `perc()` `rank()` `lm()` `makeFun()` `resid()`
`fitted()`
