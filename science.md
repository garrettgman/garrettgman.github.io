---
layout: page
title: Science
weight: 3
---

Chapter 1 - Science
-------------------

The principles of science guide data science. Scientists use
observations to discover natural laws, which are relationships between
variables that help scientists explain, predict, and control natural
phenomena.

------------------------------------------------------------------------

### 1. Scientific worldview

1.  The natural world is the world that we can observe and measure.
2.  Science is a method of learning about the natural world that has
    been extremely successful. It is based on two premises:
    1.  The best way to learn about the natural world is to observe it
    2.  The world behaves according to natural laws

3.  Scientists use observations to learn about natural laws

------------------------------------------------------------------------

### 2. Vocabulary

1.  Science uses many terms that we use in everyday speech; however,
    these terms have a specific meaning in the field of science.
    1.  *Natural law* - a rule that describes a part of the natural
        world, like *E* = *M**c*<sup>2</sup> or *F* = *M**A*. Natural
        laws help scientists understand, control, and make predictions
        about natural processes.
        -   You can write down a natural law as a function between
            variables.  
        -   Natural laws deal with variables, but they operate on values
            that appear in the same observation.

    2.  *Variable* - a quantity, quality, or property that can be
        measured
    3.  *Value* - the apparent state of a variable when you measure it.
        The value of a variable may change from measurement to
        measurement.
    4.  *Unit of Analysis* - the "unit" of a natural law. The unit
        explains when the natural law holds and when the natural law
        does not.
        -   For example, *F* = *M**A* implies that the force (*F*) that
            you impart on an object at a specific moment of time will be
            related to the mass (*M*) and the acceleration (*A*) of the
            same object at the same moment of time. Hence, the unit of
            analysis of the law is *a single object at a single moment
            of time*.

    5.  *Observation* - a set of values that are measured on multiple
        variables under similar conditions.
        -   You can think of an observation as a snapshot of the world.
            An observation shows what a group of variables looked like
            together on a specific occasion.

    6.  *Observational Unit* - the "unit" of an observation. The unit of
        an observation explains how the values in the observation are
        similar. For example, if the values *f*<sub>1</sub>,
        *m*<sub>1</sub>, and *a*<sub>1</sub> were all measured on Object
        1, then the values would form an observation whose unit is *a
        single object*.
        -   If *f*<sub>1</sub>, *m*<sub>1</sub>, and *a*<sub>1</sub>
            were all measured on Object 1 at the same time, then the
            values would form an observation whose unit is *a single
            object at a single moment of time*. The unit of an
            observation should express all of the ways the observations
            are similar.  
        -   Observations provide evidence about natural laws when they
            share the same unit as the law. If a law exists between
            variables, it will exist between the values of those
            variables whenever the values appear in an observation with
            the correct units.  

    7.  *Data* - a collection of observations, which you can also think
        of as a collection of values, each associated with a variable
        and an observation.
        -   This definition of data requires a data set to contain both
            values and relationships. As a result, many types of
            *unstructured data* (e.g. a pile of emails to text mine)
            will not meet the definition of data. This is on purpose.
            You cannot use the techniques covered in this book on
            unstructured data until the data has been reorganized around
            values and the relationships between those values.

------------------------------------------------------------------------

### 3. Discovery

1.  Data can help scientists discover natural laws
    1.  Natural laws appear as patterns in data
    2.  You can discover these patterns by
        1.  examining raw data
        2.  visualizing data
        3.  analyzing data with function estimation algorithms

2.  Data can display a natural law if it exists, but data cannot prove
    that the law exists.
    1.  In practice, you cannot rule out that a pattern was caused by
        confounding relationships or random chance
    2.  In theory, you cannot use a finite data set to *prove* the
        existence of a general law with absolute certainty.
        1.  However, you can *disprove* the existence of a natural law
            with absolute certainty. This fact shapes the scientific
            method which drives all science, including data science.

------------------------------------------------------------------------

### 4. The Scientific method

1.  To test a hypothesis about a natural law
    1.  deduce a testable prediction from the hypothesis  
    2.  observe whether the prediction is true
        -   often by designing an experiment  

    3.  if the prediction is false, disregard the hypothesis ( or the
        observation)  
    4.  if the prediction is correct, consider the hypothesis "not yet
        disproven"  

2.  The scientific method is asymmetrical: we do not prove, we disprove.
    1.  As a result, scientists view all hypotheses with skepticism
    2.  Hypotheses about natural laws are useful approximations to how
        the world works
    3.  Science advances by replacing hypotheses with more accurate
        approximations
        1.  For example, the laws of physics
            1.  Aristotelian
            2.  Newtonian mechanics
            3.  Einsteinian relativity
            4.  Quantum weirdness
            5.  String theory?

------------------------------------------------------------------------

### 5. Summary

1.  Scientists use observations to understand the natural laws of the
    universe  
2.  They form hypotheses from patterns in data and then test the
    hypotheses against new data

------------------------------------------------------------------------

### 6. Example with R

1.  R is a computer language for doing data science.  
2.  You can apply R to the principles of science by thinking of a
    natural law as a function.  
3.  Example - Suppose we collect some data on objects falling in a
    vacuum (time since we dropped the object, velocity of the object).
    1.  `library(mosaic)`  
    2.  syntax for a law `y ~ x`
    3.  plot the data as a set of observations with `xyplot()`
    4.  infer that `v` and `t` are related by the law `v = 9.8 * t`
    5.  express law as a function with `makeFun()`  
    6.  plot it as a function with `plotFun(add = TRUE)`  
    7.  test our hypotheis against new data
        1.  prediction: when `t` = 10, `v` = 98
            1.  a corroborating data point, `(10, 98)`
            2.  a falsifying data point, `(10, 85)`

------------------------------------------------------------------------

### 7. Data Science

1.  Data Science does not change the scientific method, it applies it to
    bolder questions.
2.  Consider a new example - Does height affect weight?
    1.  plot data `xyplot()`
    2.  Yes, this appears to be a useful "law", but it does not exactly
        predict the data points. Why not?
        1.  other things in addition to height affect weight
        2.  You can think of `weight ~ height` as a partial or
            incomplete law.

    3.  Complete laws predict individual values
    4.  Incomplete laws predict distributions, a collection of points
        centered around a range of values

3.  The example shows that distributions can be useful to work with, but
    they disrupt the scientific method
    1.  Which function best explains the results?
    2.  Does this data confirm or refute the hypothesis?

4.  Data science applies the scientific method to incomplete laws

------------------------------------------------------------------------
