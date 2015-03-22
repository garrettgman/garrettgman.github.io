Chapter 1 - Science
-------------------

The principles of science guide data science. Scientists use
observations to discover natural laws, which are relationships between
variables that help scientists explain, predict, and control natural
phenomena.

------------------------------------------------------------------------

### 1. Scientific worldview

1.  Science is a method of learning about the natural world that has
    been extremely successful. It is based on two premises:
    1.  The world behaves according to natural laws
    2.  Observations provide the most trustworthy information about
        these laws

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

    5.  *Observation* - a set of values a set of values that are
        measured on multiple variables under similar conditions.
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
            object at a single moment of time*.  
        -   Observations provide evidence about natural laws when they
            share the same unit as the law. If a law exists between
            variables, it will exist between the values of those
            variables whenever the values appear in an observation with
            the correct units.  

    7.  *Data* - a collection of observations, which you can also think
        of as a collection of values, each associated with a variable
        and an observation.
        -   This definition of data requires that data contain both
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
    hypotheses agaisnt new data  
3.  Data Science does not change this reasoning, it applies it to new
    areas and new contexts.
    1.  In fact, there is no delineation between science and data
        science.
    2.  You can think of data science as the up to date version of the
        scientific method.
        1.  The scientific method was developed during a time when we
            thought the universe was fairly simple, and our measuring
            devices were not precise enough to challenge this
            assumption.
        2.  As technology increased, scientists began to make more
            precise measurements and to keep more voluminous records.
        3.  These changes revealed that the natural world is much more
            variable and inter-related than we first thought.
        4.  Data scientists apply the scientific method to this more
            complex, but realistic worldview. Specifically, they adapt
            the principles of science to variation, a reality that
            affects all natural phenomena.

------------------------------------------------------------------------

### 6. R

1.  R is a computer language for doing data science.  
2.  You can apply R to the principles of science by thinking of a
    natural law as a function.
    1.  `library(mosaic)`  
    2.  syntax for a law `y ~ x`
    3.  express it as a function with `makeFun()`  
    4.  plot it as a function with `plotFun()`  
    5.  plot it as a set of observations with `xyplot()`

3.  We will build upon this foundation in future chapters, eventually
    using R to do all of data science.
