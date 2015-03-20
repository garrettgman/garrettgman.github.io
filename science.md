---
layout: page
title: Science
weight: 3
---

The two premises of science. How and why to find natural laws.

***
1. Scientific worldview
    1. Natural laws defined  
        a. Natural laws let scientists explain, predict, and control natural phenomena
    2. Natural laws deal with variables and they have a unit  
        a. Variable defined
        b. Unit of analysis defined  
    3. The best way to learn about natural laws is to observe them  
        a. Value defined  
        b. observation defined 
            i. values must be similar to be part of an observation
            ii. observations should match units of analysis to reveal a law
    4. Observations provide evidence about natural laws.
        a. Scientists use observations in two ways:
            i. To test hypotheses
            ii. To discover laws
    
***

2. Hypothesis testing
    1. We approach the world not through observations, but ideas.
        a. Hypothesis defined
        b. Observations can highlight incorrect ideas
    2. To test a hypothesis
        a. deduce a testable prediction from the hypothesis
        b. observe whether the prediction is true
            i. often by designing an experiment
        c. if the prediction is false, disregard the hypothesis ( or the observation)
        d. if the prediction is correct, consider the hypothesis "not yet disproven"
        e. Science progresses by gradually refining our set of ideas about the world
    3. This method has played an influential role in science
        a. it has several names: scientific method, hypothetico deductive method, conjecture and refutation
        b. It will also play an influential role in data science
    4. The method is logically foolproof, but poses some problems
        a. it cannot prove that a hypothesis is correct
            i. scientists respond by treating everything with skepticism
            ii. it does not explain how to come up with ideas in the first place
            
***

3. Discovery
    1. Data provides a way to discover new laws
        a. Data defined - A collection of values each associated with a variable and an observation
            i. Note: this definition does not cover "unstructured 'data'", which we will not consider in this book
    2. Laws appear as patterns in data
        a. the human mind is not well suited to spot patterns in raw data, so scientists rely on several tools
    3. To discover a law:
        a. collect data
        b. visualize data
        c. search for patterns with an algorithm
    4. This method is very useful, but has some weaknesses of its own
        a. Unlike hypothesis testing, this method is not logically foolproof
            i. problem of induction
        b. a finite set of points cannot uniquely identify a law
        c. missing variables will appear as noise in a pattern
        
***


4. Summary
    1. Scientists use observations to understand the natural laws of the universe
    2. They iterate between explorations and discovery, and confirmation and testing
    3. These principles provide a program that guides data science.
        a. The principles guide all of science, not just data science.
        b. However, the principles are not well-suited for the universe as it actually is
    4. Data scientists apply the principles of science to a more complex, but realistic context.
        a. They adapt the principles of science to variation, a reality that affects all natural phenomena.
        
***

5. R 
    1. R is a computer language for doing data science.
    2. You can apply R to the principles of science by thinking of a natural law as a function.
        a. `library(mosaic)`
        b. express it as a function with `makeFun()`
        c. plot it as a function with `plotFun()`
    3. We will build upon this foundation in future chapters, eventually using R to do all of data science.