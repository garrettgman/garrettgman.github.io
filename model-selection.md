---
layout: page
title: Model Selection
weight: 6
---

Chapter 4 - Model Selection
---------------------------

Summary: What if we do not know which type of model to use? We can
select a model based on its predictive accuracy, which we can estimate
with AIC, BIC, Adjusted-R2, or Mallow's Cp. Or we can directly measure
the predictive accuracy with cross-validation. We can also use stepwise
selection, but I wouldn't recommend it.

------------------------------------------------------------------------

### 1. Selecting an algorithm

1.  There are many different algorithms to use to fit a model to your
    data. Each algorithm will return a different model. How do you know
    which algorithm to use?
2.  The best answer is clear, but often impractical: you wish to model a
    law. Choose the algorithm that comes nearest to your current
    understanding of the law. If you do not understand the law, consult
    with experts who do.
    1.  Laws have a certain structure
    2.  Algorithms are designed to find the best model *with a certain
        structure*.
    3.  Determine which structure scientists believe the law has and
        then use the algorithm that searches for models with that
        structure.
    4.  This approach will let you profit from whatever information is
        encoded in scientific consensus, but it has another benefit as
        well. Most of the tests used by statisticians assume that you
        have used this approach.

3.  However, this approach does not address the conditions that many
    scientists work in. It does not work if experts do not agree on the
    form of a natural law, or if you are working in a new area with
    little previous research.
4.  In these situations, you can return to optimization: select the
    model that performs the best.

------------------------------------------------------------------------

### 2. Predictive Accuracy

1.  How should you measure the performance of a model? A model that
    makes better predictions is more useful (and more likely to be
    accurate) than a model that makes poor predictions.
2.  To measure the predictive accuracy of a model, use the model to
    predict the values of your observations.
    1.  Quantify the error with mean squared error.

3.  However, this approach has a flaw. It overestimates the predictive
    accuracy of your model.
    1.  Consider what would happen if you fit two models. In the first
        model, use all of your data, including point A to fit the model.
        In the second model, do not include point A. Then use both
        models to predict point A. The first model will make a more
        accurate prediction.
    2.  Data scientists refer to this distinction as training error and
        test error.
        1.  *training set* - the set of points that you use to fit, or
            train, a model. Training error is the error that your model
            makes when predicting the training set.
        2.  *test set* - a set of points that you do not use to fit the
            model. You can use this set to estimate the model's test
            error, the error that the model makes when predicting the
            values of new observations.

4.  Test error provides the best measure of a model's predictive
    accuracy.
    1.  Why should this be? Because you can arbitrarily decrease any
        model's training error to zero by making the model more
        flexible.
        1.  graphical depiction

    2.  However, at some point decreases in training error are
        associated with increases in test error. You begin to fit the
        noise in the data more than the law that generated the data, a
        situation known as *overfitting*.
        1.  bias variance decomposition
        2.  degrees of freedom
        3.  the "sweet spot" of flexibility will change from law to law.
            You can estimate the best model for your data with cross
            validation.

------------------------------------------------------------------------

3. Cross Validation
-------------------

1.  Cross validation is a method for measuring the test error of a
    model. With cross validation, you can compare the performance of
    different models and select the best one.
2.  To cross validate your model, divide your data into a training set
    and a test set. Fit your model to the training set and then use it
    to estimate the test set. Quantify the error with the mean squared
    error.
3.  This is the general outline of cross validation, but the details can
    vary. You can decide
    1.  How many points to leave out as a test set
    2.  How many times to repeat the process to guard against
        variability in the estimates

------------------------------------------------------------------------

### 4. Estimates of predictive accuracy

1.  Before modern computing made cross validation feasible,
    statisticians developed other ways to estimate the predictive
    accuracy of a model. These estimates can provide a second metric for
    comparing models.
    1.  Adjusted R-squared
    2.  Akaike Information Criteria (AIC)
    3.  Bayesian Information Criteria (BIC)
    4.  Mallow's Cp

------------------------------------------------------------------------

### 5. Summary

1.  Predictive accuracy provides a basis for comparing models. Models
    with higher predictive accuracy yield more useful predictions and
    are more likely to provide an accurate description of the underlying
    law.
2.  Cross validation provides a straightforward, easy to understand
    method for estimating predictive accuracy.
