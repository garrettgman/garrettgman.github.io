---
layout: page
title: Science
weight: 3
---

Summary: Scientists search for natural laws. A complete law provides a
function between values and a value. An incomplete law is a model. It
provides a function between values and a distribution.

------------------------------------------------------------------------

O'Reilly publishes nine books on data science and one of them is named
"What is Data Science?" When you open any of these books you should ask
yourself what you are getting into. As a term, data science has come to
mean several things.

At one level, data science is a *body of knowledge*, a collection of
useful information related to a specific task. For example, library
science and managerial science are bodies of knowledge. Library science
collects the best ways to run a library, and managerial science collects
the best ways to run a business. Data science collects the best ways to
store, retrieve, and manage data. As a result, a data scientist might
know how to set up a hadoop cluster or run the latest type of
non-relational database. This is what many people think of when they
think of "data science," but this is not the type of data science that I
will teach you.

At another level, data science is a *way of doing science*. Data
scientists use data, models, and visualizations to make scientific
discoveries, just as other scientists use experiments. In fact, you can
think of data as a new, modern option for doing science. You can apply
the scientific method to both data and experiments, and each will yield
objective, empirically valid answers.

This book will teach you the method of data science. You will learn how
to use data to make discoveries, and to justify those discoveries once
they are made. Along the way, you will learn how to visualize data,
build models, and make predictions.

This chapter describes the scientific method, which is the foundation of
data science. You may be tempted to skip this chapter, but do not. It
provides the vocabulary that we will use throughout the book. It also
establishes the link between science and data science, which makes data
science easier to understand.

------------------------------------------------------------------------

The scientific world view
-------------------------

Science is based on two simple ideas. First, that the best way to learn
about the world is to observe it. And second, that the world operates
according to natural laws.

A *natural law* is a rule that describes a part of the natural world, a
rule like
*E* = *M**c*<sup>2</sup>
 or
*F* = *M**A*
. Natural laws provide a goal for scientists. With them, scientists can
understand, predict, and sometimes control natural phenomena.

The scientific method is a way of learning that is based on these two
ideas---observations and natural laws. At its heart, the scientific
method is a set of instructions for using observations to identify
natural laws. This method of learning distinguishes scientific research
from non-scientific research, and it delivers extremely successful
results. In fact, the scientific method has delivered almost every
important technological advancement that has occurred in the last 500
years.

This important method also provides the guiding strategy of data
science.

But what is the method? That important question has generated libraries
of debate between philosophers, so let's sidestep it and come to our own
answer through a thought experiment.

The scientific method
---------------------

Suppose you notice that objects tend to fall in a consistent way when
you drop them. You suspect that a natural law governs the movement of a
body in free fall, and you would like to know what the law is.

You can learn about free fall by observing some objects as they fall and
taking some measurements. But what exactly will you measure?

In this case, let's measure the velocity of an object (*V*) that we drop
and the time that has passed since we dropped it (*T*). Velocity and
time are *variables*, quantities, qualities, or properties that you can
measure. When you measure a variable, you get a *value*, the apparent
state of a variable when you measure it. The value of a variable can
change from measurement to measurement.

Natural laws describe the behavior of variables. They explain how the
values of one variable will change in response to changes in the values
of other variables.

You can write down a natural law as a relationship between variables.
For example,
*E* = *M**c*<sup>2</sup>
 is a natural law that states that the energy content of a system (
*E*
) is always equal to the mass of the system (
*M*
) multiplied by the speed of light squared (
*c*<sup>2</sup>
).
*F* = *M**A*
 is a natural law that explains that a force (
*F*
) exerted upon an object will cause the object to accelerate (
*A*
) at a rate proportional to the mass of the object (
*M*
), an insight that has many applications in the field of physics.

In our experiment, we expect that the value of velocity (*V*) will
change in response to the value of time (*T*). In other words, we expect
that there exists a law of the form

*V* = *f*(*T*)

where *f*(*T*) is a function of *T*. Now that we've quantified
everything, we can turn our attention away from math and
towards---perhaps unexpectedly---common sense.

Let's collect some data and to see if we can spot a law like
*V* = *f*(*T*)
. But what data should we collect? Here are a few examples of what we
should not collect.

1.  We should not drop two objects at slightly different times and then
    measure the velocity of object 1 and compare it to the time that has
    passed since we dropped object 2. We wouldn't expect the velocity of
    object 1 to relate to the time that object 2 has spent falling.

2.  We should not drop object 1 to measure the time as it passes and
    then redrop object 1 to take measurements on its velocity. You
    wouldn't expect the time measurements of the first trial to relate
    to the velocity measurements of the second trial.

In the first case, we decided not to compare measurements taken on two
different objects. In the second case, we decided not to compare
measurements taken in two different trials (e.g. at two different
times). Why shouldn't we do these things? Because we do not believe that
the law that relates velocity to time in free fall would apply in these
situations.

This intuition leads to an important fact. A natural law has a *scope*;
it will apply in some situations, but not others. Our law applies to
values measured *on the same object at the same time*. This is the scope
of our law.

Let's add to our cases above a third experiment that captures the likely
scope of our law. In this experiment, we drop object 1 and measure
simultaneously the velocity of the object and the time since we dropped
the object. Suppose we take three such measurements in quick succession:

*v*<sub>1</sub>, *t*<sub>1</sub>
*v*<sub>2</sub>, *t*<sub>2</sub>
*v*<sub>3</sub>, *t*<sub>3</sub>

Each of these measurement pairs is an *observation*, a set of values,
each measured on a different variable. You can think of an observation
as a snapshot of the world. An observation shows what a group of
variables looked like together for a brief moment before they changed.

In the notation above, the lowercase letters denote specific values of
the variables
*V*
 and
*T*
. Throughout the book, I will refer to variable names with a capital
letter (e.g., *V*) and individual values with a lower case letter (e.g.,
*v*<sub>1</sub>). If you're lucky, I may even use a *real* value like 60
mph.

The subscripts denote which observation each of the values belongs to.
When values are grouped into the same observation it implies that they
are similar in some way.

Like a natural law, an observation also has a *scope*. The scope
determines the ways that the values in the observation are similar to
each other. To see how this works, consider our three thought examples
again.

1.  In our first example, we created observations whose values shared
    *the same moment of time*. Within the observations, each value
    measured a different object, but the values were measured at the
    same moment of time.

2.  In our second example, we created observations whose values shared
    *the same object*. Within the observations, each value was measured
    at a different moment of time, but the values were measured on the
    same object.

3.  In our last example, we created observations whose values shared
    both *the same object and the same moment of time*. Within each
    observation, each value was measured at the exact same time on the
    exact same object.

The scope of the observations in our last example is more specific than
the scope of the observations that we created in the first two
experiments. You can group any set of values that like into a single
observation, but the observation may end up with a very broad scope.

Why should you care about the scope of an observation? Because
observations provide evidence about natural laws *when the observations
have the same scope as the law*. This may sound like a mouthful, but it
just restates the intuition we felt about our first two experiments
above.

What sort of evidence does the observation provide? If a law exists
between variables, it will exist between the values of those variables
when they appear in the same observation.

In other words, *natural laws* deal with *variables*, but they apply to
*values* that appear in the same *observation* where the *scope of the
observation* matches the *scope of the law*.

Where does this leave us? We've now conducted our thought
experiment--and two others besides. We understand the concepts involved
with our experiment, and we know how they relate to each other. Can this
help us identify a law? Yes. And this is where data begins to shine.

Data
----

If we combine our observations, we get a *data set*, a group of
observations---or more precisely, a group of values, each associated
with a variable and an observation.

<table>
<thead>
<tr class="header">
<th align="left">obs</th>
<th align="left"><br /><span class="math"><em>V</em></span><br /></th>
<th align="left"><br /><span class="math"><em>T</em></span><br /></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">1</td>
<td align="left"><br /><span class="math"><em>v</em><sub>1</sub></span><br /></td>
<td align="left"><br /><span class="math"><em>t</em><sub>1</sub></span><br /></td>
</tr>
<tr class="even">
<td align="left">2</td>
<td align="left"><br /><span class="math"><em>v</em><sub>2</sub></span><br /></td>
<td align="left"><br /><span class="math"><em>t</em><sub>2</sub></span><br /></td>
</tr>
<tr class="odd">
<td align="left">3</td>
<td align="left"><br /><span class="math"><em>v</em><sub>3</sub></span><br /></td>
<td align="left"><br /><span class="math"><em>t</em><sub>3</sub></span><br /></td>
</tr>
</tbody>
</table>

Data sets are a useful tool for science because natural laws appear as
patterns in data. You can identify a natural law by collecting data and
spotting a pattern.

The more data you collect, the easier it is to spot a pattern, but the
more difficult it is to work with the data. Throughout this book, we
will use your computer and a computer language named R to work with
data.

------------------------------------------------------------------------

### R

R is an easy to use computer language tailor made for data science.
Every year thousands of high school and college students learn to use R
and you can too. If you are new to R, read Appendix A - Getting started
with R for a quick introduction. Or read [Hands-On Programming with
R](http://shop.oreilly.com/product/0636920028574.do), the companion book
to this one, for a more comprehensive introduction.

------------------------------------------------------------------------

        a. A group of observations forms a _data set_.
    v. Now that we know what data to collect, how can we identify our law?
        a. Data as a data frame
        b. Natural laws appear as patterns in data. You can discover the patterns by
            i. Inspecting raw data
            ii. Visualizing the data
                a. `library(mosaic)`
                b. `xyplot()`
            iii. Running a function estimation algorithm on the data
                a. `lm()`
                b. `est <- goal(formula, data)` - Project Mosaic
                c. `fun <- makeFun(est)`
                d. `plotFun(fun, add = TRUE)`
    vi. Our data suggests the pattern $V = 9.8 \cdot T$. Is our investigation over? Not really. You can induce a pattern from data, but you cannot use the data to prove that the pattern is true. To see why not, consider what could go wrong.
        a. The pattern could be due to random chance
        b. The pattern could be due to confounding
        c. The pattern could have an unexpected form at unobserved points
        d. Induction might fail
            i. This last problem might seem the most trivial, but it gives the scientific method it's familiar shape. It is known as _the problem of induction_. Scientists avoid it by never relying on induction for proof (In theory, scientists do not prove anything. They leave that to the mathmeticians).
    vii. Now that our data has lead us to a hypothesis, we can test it with "the scientific method."
        a. Formulate the hypothesis: $V = 9.8 \cdot T$
        b. Deduce a testable prediction that must be true if the hypothesis is true: $V = 98$ _when_ $T = 10$.
        c. Collect data that would test the hypothesis.
        d. Reject the hypothesis if the data refutes the prediction
        e. Consider the hypothesis "not yet disproven" if the data corroborates the prediction
        f. Whenever necessary, rely on a well tested, not yet disproven hypothesis to make decisions
        g. Remain skeptical about all hypotheses
            i. Note scientists do not believe that any hypothesis or any formulation of a law is absolutely correct. 
            ii. A law is a useful approximation of how the world works. The approximation is accurate enough to be correct, but could possibly be improved upon.
            iii. science progresses by replacing hypotheses with more accurate hypotheses. Consider the history of physics:
                a. Aristotellian
                b. Newtonian Mechanics
                c. Einsteinian Relativity
                d. Quantum Weirdness
                e. String theory?
    vii. In our case, any data we collect will verify our hypothesis. Our law was discovered by Galileo 500 years ago, and every experiment since then has found that it is approximately true.

1.  Summary
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
