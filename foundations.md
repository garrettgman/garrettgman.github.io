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

$E = Mc^2$ states that the energy content of a system ($E$) is always equal to the mass of the system ($M$) multiplied by the speed of light squared ($c^{2}$), an insight that helped explain nuclear power. $F = MA$ explains that the force exerted upon an object ($F$) is equal to the mass of the object ($M$) multiplied by its acceleration ($A$), an insight that has many applications in the field of physics. 

You can think of science as a collection of methods that use observations to discover natural laws. Data science is one of those methods. It uses a specific property of observations to reveal natural laws, and that property is variation.

## Variation

_Variation_ is the natural tendency for a property to change from measurement to measurement. Quantities like the temperature of the air and the salinity of the sea change from moment to moment and from place to place. Properties of objects, like height, weight, or volume, change from object to object. If you look closely at the same quantity twice, you will notice these changes, even if the changes are small.

Variation creates uncertainty for scientists because it implies that you cannot know what value you will observe when you measure a quantity—even if you have measured the quantity before. However, variation also contains information.

The values of each variable are determined by a natural law that affects how the variable can vary. For example, the acceleration of a particle can vary, but the acceleration will always be related to the mass of the particle and the forces acting on the particle (according to $F = MA$). 

This law will leave fingerprints on the pattern of variation displayed by acceleration. If you measure both the acceleration of the particle and the forces acting on it, you may notice that the values of the two variables correspond in a systematic way. The value of $A$ will be high wheneever the value of $F$ is high, and the value of $A$ will be low when the value of $F$ is low.

You will observe an even more striking relationship if you also measure the particle's mass. Whenever you measure the acceleration, force, and mass simultaneously, their values will display the relationship $F = MA$.

Data scientists use variation and _covariation_, the correspondence between values of different variables, to reveal unknown natural laws. To do this, they use a tool perfectly suited to the job: data.

## Data

A data set is a collection of measurements that have been organized in a specific way. Each value in a data set is associated with a variable and an observation. 

We use "variable" and "observation" in everyday speech, but the terms have a technical meaning when associated with data.

* A _variable_ is a quantity, quality, or property that can be measured. 

* An _observation_ is a set of measurments that are made under similar (ideally identical conditions). 

+You can think of an observation as a snap shot of the world. An obseration shows what a group of variables looked like together for a brief moment before they went on changing. 

#### Measurement
***
 A _measurement_ is an observation that is 

1. made with a reproducible method 
2. recorded in a precise way 

Every measurement creates a _value_, a piece of information that describes a specific part of the world at a specific time. 

Measurements make it easy to quantify variation because they provide a rigorous way to observe the world. 
***

The structure of data parallels the structure of natural laws. Natural laws contain variables whose values correspond when the variables are measured under identical conditions. Each observation in a data set contains variables whose values have been measured under identical conditions. As a result, natural laws appear as patterns in data. 

This provides a way to discover natural laws. You can search for patterns in raw data, or visualize the data to make patterns more apparent. You can also search through your data with computerized pattern recogition algorithms or function estimation techniques.

A concrete example, the dice game.

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