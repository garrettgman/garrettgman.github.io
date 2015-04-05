---
layout: page
title: Science
weight: 3
---

Chapter 1 - Science
-------------------

Summary: Scientists search for natural laws. A complete law provides a
function between values and a value. An incomplete law is a model. It
provides a function between values and a distribution.

------------------------------------------------------------------------

### 1. What is data science?

1.  As a term, data science has come to be used in different ways
2.  This book will teach you the *method of science* known as data
    science
    1.  The method is a straightforward extension of the scientific
        method
    2.  In fact, it *is* the scientific method: the scientific method
        applied to modern questions, which are messier and more
        ambitious than last century's questions.
    3.  As a result, you can explain the method with some simple ideas.

3.  This chapter describes the scientific method, which is the
    foundation for all of data science. You may be tempted to skip this
    chapter, but do not. It provides the vocabulary that we will use
    throughout the book. It also establishes the link between data
    science and science, which will help you apply the things that you
    already know about science to data science.  
    \*\*\*

### 2. The scientific method

1.  Scientists study the natural world, i.e. the world that can be
    observed
    1.  They believe that the best way to learn about the natural world
        is to observe it
    2.  And they seem to agree that observations suggest that the world
        behaves according to natural laws, things like
        *E* = *M**C*<sup>2</sup> and *F* = *M**A*.
        1.  These laws provide a goal for science. They help scientists
            understand, predict, and sometimes control natural phenomena

    3.  The scientific method is a method for using observations to
        identify natural laws

2.  Example - Suppose you notice that objects tend to fall in a
    consistent way when you drop them. You suspect that a law governs
    the movement of a body in free fall, and you would like to know what
    the law is.
    1.  You can learn about free fall by observing some objects as they
        fall and taking some measurements. But what exactly will you
        measure?
        1.  In this case, let's measure the velocity of an object that
            we drop and the time that has passed since we dropped it.
        2.  Velocity and time are *variables*, quantities, qualities, or
            properties that you can measure.
        3.  When you measure a variable, you get a *value*, the apparent
            state of a variable when you measure it. The value of a
            variable can change from measurement to measurement.
        4.  Natural laws describe the behavior of variables. They
            explain how the values of a variable will change in response
            to changes in the values of other variables.
            1.  Recall *E* = *m**c*<sup>2</sup> and *F* = *M**A*. You
                can express a natural law as a function from a set of
                explanatory variables to a set of response variables.
            2.  Here we expect the value of velocity to change (i.e.
                respond) as time changes. Let's collect some data and
                see if this is the case.

    2.  But what data should we collect? Here are a few examples of what
        we should not collect.
        1.  We should not measure the time that has passed since we
            dropped object 1, and then measure the velocity of object 2,
            an object that we have not dropped. We wouldn't expect the
            time that object 1 has spent falling to relate to the
            velocity of object 2.
        2.  We should not drop object 1 to measure the time as it passes
            and then redrop object 1 to take measurements on its
            velocity. You shouldn't expect the velocity measurements of
            the second trial to relate to the time measurements of the
            first trial.
        3.  In the first case, we decided not to compare measurements
            taken on two different objects. In the second case, we
            decided not to compare measurements taken in two different
            trials (e.g. at two different times). Why shouldn't we do
            these things? Because we do not believe that the law that
            relates velocity to time in free fall would apply in these
            situations.
        4.  A natural law has units. These units define the situations
            in which the law applies. Our law applies to values measured
            *on the same object at the same time*. Those are the units
            of our law.

    3.  When you group together values measured on different variables,
        you create an *observation*.
        1.  A group of observations forms a *data set*.
        2.  Like a natural law, an observation also has units. The units
            of an observation are the similar conditions that unite the
            values in the observation.
            1.  In our first example, we created observations that had
                the unit *the same moment of time*. Although each of
                those values measured a different object, each value was
                measured at the same time.
            2.  In our second example, we created observations that had
                the unit *the same object*. We measured out values at
                different times, but each value was measured on the same
                object.

    4.  Observations provide evidence about natural laws *when the
        observations have the same unit as the natural law*.
        1.  If a law exists between variables, it will exist between the
            values of those variables when they appear in the same
            observation.
        2.  In other words, *natural laws deal with variables, but they
            apply to values that appear in the same observation*.

    5.  Now that we know what data to collect, how can we identify our
        law?
        1.  Data as a data frame
        2.  Natural laws appear as patterns in data. You can discover
            the patterns by
            1.  Inspecting raw data
            2.  Visualizing the data
                1.  `library(mosaic)`
                2.  `xyplot()`

            3.  Running a function estimation algorithm on the data
                1.  `lm()`
                2.  `est <- goal(formula, data)` - Project Mosaic
                3.  `fun <- makeFun(est)`
                4.  `plotFun(fun, add = TRUE)`

    6.  Our data suggests the pattern *V* = 9.8 ⋅ *T*. Is our
        investigation over? Not really. You can induce a pattern from
        data, but you cannot use the data to prove that the pattern is
        true. To see why not, consider what could go wrong.
        1.  The pattern could be due to random chance
        2.  The pattern could be due to confounding
        3.  The pattern could have an unexpected form at unobserved
            points
        4.  Induction might fail
            1.  This last problem might seem the most trivial, but it
                gives the scientific method it's familiar shape. It is
                known as *the problem of induction*. Scientists avoid it
                by never relying on induction for proof (In theory,
                scientists do not prove anything. They leave that to the
                mathmeticians).

    7.  Now that our data has lead us to a hypothesis, we can test it
        with "the scientific method."
        1.  Formulate the hypothesis: *V* = 9.8 ⋅ *T*
        2.  Deduce a testable prediction that must be true if the
            hypothesis is true: *V* = 98 *when* *T* = 10.
        3.  Collect data that would test the hypothesis.
        4.  Reject the hypothesis if the data refutes the prediction
        5.  Consider the hypothesis "not yet disproven" if the data
            corroborates the prediction
        6.  Whenever necessary, rely on a well tested, not yet disproven
            hypothesis to make decisions
        7.  Remain skeptical about all hypotheses
            1.  Note scientists do not believe that any hypothesis or
                any formulation of a law is absolutely correct.
            2.  A law is a useful approximation of how the world works.
                The approximation is accurate enough to be correct, but
                could possibly be improved upon.
            3.  science progresses by replacing hypotheses with more
                accurate hypotheses. Consider the history of physics:
                1.  Aristotellian
                2.  Newtonian Mechanics
                3.  Einsteinian Relativity
                4.  Quantum Weirdness
                5.  String theory?

    8.  In our case, any data we collect will verify our hypothesis. Our
        law was discovered by Galileo 500 years ago, and every
        experiment since then has found that it is approximately true.

3.  Summary
    1.  Scientists use observations to understand the natural laws of
        the universe b. They form hypotheses from patterns in data and
        then test the hypotheses against new data

------------------------------------------------------------------------

### 4. Data Science

1.  If the above method is science, what is data science? The same
    thing. Data Science does not change the scientific method, it
    applies it to messier questions.
2.  Consider a new example - Does height affect weight?
    1.  plot data `xyplot(weight ~ height, data = )`
    2.  Yes, this appears to be a useful "law", but it does not exactly
        predict the data points.
        1.  Each value of height is associated with multiple values of
            weight, a group of values
        2.  But the group of values at *h**e**i**g**h**t*<sub>1</sub> is
            different from the group of values at
            *h**e**i**g**h**t*<sub>2</sub>. In other words, the range of
            possible values for weight is different at different
            heights. If you are clever, you can use height to predict
            the range of possible weights.

    3.  If a natural law connects height and weight, why don't the
        values of height exactly predict the values of weight?
        1.  other things in addition to height affect weight
        2.  You can think of `weight ~ height` as a partial or
            incomplete law.
            1.  Complete laws predict individual values
            2.  Incomplete laws predict distributions, a collection of
                points centered around a range of values

3.  Modern measurements have revealed that almost every law we work with
    will be an incomplete law.
    1.  The universe is so connected that it is difficult to find events
        controlled by a small set of variables.
    2.  Example of law of gravitation (or maybe *F* = *M**A*)

    <!-- -->

    1.  Example of speed of light
    2.  imprecise measurements hide this fact, hence, the rise of data
        science alongside better measurement technology

4.  Data science applies the scientific method to incomplete laws. The
    method remains exactly the same, but now we will need to work with
    groups of values, not single values as our output. This means that
    we will need to know:
    1.  How to reason about groups of values
    2.  How to identify patterns that involve group output (i.e. how to
        spot patterns in noisy data), and
    3.  How to confirm or refute hypotheses about groups of values

5.  Before we move on to look at these topics, let's consolidate what
    we've learned into a vocabulary that we can use throughout the book.

------------------------------------------------------------------------

### 4. Vocabulary

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
