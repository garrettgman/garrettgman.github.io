---
layout: page
title: Foundations of Data Science
weight: 3
---

Data science is a _method_ of science. This sets it apart from other fields that are _branches_ of science. A branch of science uses scientific techniques to study a single subject. For example, physicists study physical systems, chemists study chemical systems, and biologists study living systems. But data science is different.  

Data scientists study a method that anyone can use to solve scientific problems. You can think of data science as a complement to experimental science. Experimental scientists use the experimental method to solve scientific problems, and data scientists use the data science method. Many scientists use both.

This chapter will describe the problems that data scientists attempt to solve, as well as the methods that they use to solve them. It introduces data science as a specific method of reasoning that matches the structure of data to the structure of natural laws. This method of reasoning guides the techniques that you will learn in later chapters—techniques like machine learning, statistical modelling, and visualization.

## The data science worldview

Science is based on two simple ideas. First, that the best way to learn about the word is to observe it. And second, that the universe operates according to _natural laws_. 

A natural law is a law like relationship between _variables_, which are quantities or qualities whose values can change from measurement to measurement. So, for example, $E = Mc^{2}$ and $F = MA$ are both natural laws. In theses laws, the quantities $E$, $M$, $F$, and $A$ are all variables. The quantity $c$ is a constant value.

Natural laws explain how the values of variables relate to each other, which can help scientists understand, control, and make predictions about natural processes.

$E = Mc^2$ states that the energy content of a system ($E$) is always equal to the mass of the system ($M$) multiplied by the speed of light squared ($c^{2}$), which suggests that mass can be converted into energy, an insight that led to nuclear power. $F = MA$ explains that the force exerted upon an object ($F$) is equal to the mass of the object ($M$) multiplied by its acceleration ($A$), an insight that has many applications in the field of physics. 

You can think of science as a collection of methods that use observations to discover natural laws. Data science is one of those methods. It uses a specific property of observations to reveal natural laws, and that property is variation.

## Variation

_Variation_ is the natural tendency for a property to change from measurement to measurement. Quantities like the temperature of the air and the salinity of the sea change from moment to moment and from place to place. Properties of objects, like height, weight, or volume, change from object to object. If you look closely at the same quantity twice, you will notice these changes, even if the changes are small.

Variation creates uncertainty for scientists: you cannot know what value you will observe when you measure a quantity—even if you have measured the quantity before. However, variation also contains information.

The value of each variable that you can measure is determined by a natural law. This law affects how the variable can vary, and fingerprints of the law appear in the variable's pattern of variation.

Take, for example, a simple variable, like the acceleration of a particle in space. You can measure the particle's acceleration under different conditions. Sometimes the particle will be acclerating rapidly, sometimes it will be slowing down, sometimes it will not be accelerating at all. In other words, the acceleration can vary widely as different forces act on the particle. However, 

Variation is not haphazard, but has structure. If you examine multiple measurements of the same variable, you will notice that some values appear more often than others. For example, if you measure the heights of adult men, you will notice that many men are roughly 5' 9&rdquo; (~175 cm). A much smaller number of men are a foot taller (6' 9&rdquo;) or a foot shorter (4' 9&rdquo;), and almost nobody is two feet taller (7' 9&rdquo;) or two feet shorter (3' 9&rdquo;).

For every variable, some values will seem typical; some values will seem rare but plausible; and other values will seem downright impossible. In other words, the possible values of each variable are distributed in a structured way. You can improve your predictions about a variable if you identify the distribution of values associated with the variable.

If you collect multiple measurements of _several_ variables, you may notice a second type of structure. The values of one variable may correspond to the values of another variable in a systematic way. For example, if you measured the heights and weights of children, you may notice that children with large heights also tend to have large weights, and vice versa. 

This correspondence between variables is known as _covariation_, and it provides a way to discover natural laws. If two variables are related through a natural law, the relationship described in the law will appear whenever you measure the two variables together. As a result, the values of the variables will covary.



Data reveals this structure. The structure of data parallels natural laws. As a result, laws appear as patterns in data.

A concrete example, the dice game.

You can visualize these patterns, or find them with a function estimation algorithm.

But data is a tricky subject that creates very well documented illusions. You'll need to spot and work around these. 

# Probability and Randomness

If you don't identify all of the variables in your law, your data will have noise.

This noise can even come from variables that affect your measurement, but not your quantity of interest, e.g. measurement error.

You can divide variation into a model: the variation that you can explain, and the variation that you cannot.

You can describe what is left over with probability and randomness.

Randomness does not need to imply random.

# Model selection

You would need an infinite number of data points to clearly see the correct model, and noise doesn't help.

As a result, your data will support multiple models.

Data scientists use inference to the best explanation, they select the "best" model.

Which model is "best" will depend on the situation.

It can be the model that best incorporates previous beliefs or assumptions.

Or the model that has the best predictive accuracy, which you may need to estimate.

# Inference

Too few observations can also expose you to sample bias.

You'll sometimes want to make inferences about causality.

# Summary

So to do data science: you need to be able to discover structure in variation, handle the noise created by data, pick the best model from a set of options, check that you are not being fooled by sample bias, and report your results. 