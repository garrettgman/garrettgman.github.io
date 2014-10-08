---
layout: page
title: Foundations of Data Science
weight: 3
---

Data science is a term too successful for its own good. O'Reilly publishes nine books on data science and one of them is named "What is Data Science?" When you open any of them you should ask yourself, what am I getting into? 

At one level, data science is a _branch_ of science. A branch of science uses scientific techniques to study a single subject. For example, physicists study physical systems, chemists study chemical systems, and biologists study living systems. Data scientists study data. That's not as strange as it sounds. Data is its own thing with its own behaviors. If you want to make the most of it, you need to know how to approach it (visualization anyone?). I'll teach you how to visualize data, but this is not the type of data science that we'll cover here.

At another level, data science is a _body of knowledge_, a collection of useful information related to a specific task. For example, library science collects the best ways to run a library, managerial science collects the best ways to manage a business, and computer science collects the best ways to program a computer. Bodies of knowledge usually have the word "science" in their title, so its no surprise that the term "data science" came to be used this way. Data scientists collect the best ways to store, retrieve, and manage data. Or some of them do. This is useful information, but its not the type of data science that I will teach you.

At its most fundamental level, data science is a _method_ of science. Data scientists study a method that anyone can use to solve scientific problems. You can think of data science as a complement to experimental science. Experimental scientists use the experimental method to solve scientific problems, and data scientists use the data science method. Many scientists use both. 

The method of data science motivates every other aspect of data science. Data scientists study data, and how to work with it, because data opens new doors of scientific discovery. _This_ is the data science that you will learn here. This book will teach you how to use data to make and justify scientific discoveries.

I won't teach you how to run programs on a hadoop cluster or how to set up the latest type of non-relational database. These are useful things for a data scientist to know, for sure, but to study them now would be like putting the cart before the horse.

This chapter will describe the problems that data scientists attempt to solve, as well as the methods that they use to solve them. It introduces data science as a specific method of reasoning that matches the structure of data to the structure of natural laws. This method of reasoning guides the techniques that you will learn in later chapters—techniques like machine learning, statistical modelling, and visualization.

## The data science worldview

As a method of science, data science is based on two simple ideas. First, that the best way to learn about the word is to observe it. And second, that the universe operates according to _natural laws_. 

A natural law is a law-like relationship between _variables_, which are quantities or qualities whose values can change from measurement to measurement. So, for example, $E = Mc^{2}$ and $F = MA$ are both natural laws. In theses laws, the quantities $E$, $M$, $F$, and $A$ are all variables. The quantity $c$ is a constant value. Throughout the book, I will refer to variable names with a capital letter and individual values with a lower case letter.

Natural laws explain how the values of variables relate to each other, which can help scientists understand, control, and make predictions about natural processes.

For example, $E = Mc^2$ states that the energy content of a system ($E$) is always equal to the mass of the system ($M$) multiplied by the speed of light squared ($c^{2}$). $F = MA$ explains that the force exerted upon an object ($F$) is equal to the mass of the object ($M$) multiplied by its acceleration ($A$), an insight that has many applications in the field of physics. 

You can think of science as a collection of methods that use observations to discover natural laws. Data science is one of those methods. It uses a specific property of observations to reveal natural laws, and that property is variation.

## Variation

_Variation_ is the natural tendency for a quantity or quality to change from measurement to measurement. Quantities like the temperature of the air and the salinity of the sea change from moment to moment and from place to place. Properties of objects, like height, weight, or volume, change from object to object. If you look closely at the same quantity twice, you will notice these changes, even if the changes are small.

Variation creates uncertainty for scientists because it implies that you cannot know what value you will observe when you measure a quantity—even if you have measured the quantity before. However, variation also contains information.

The values of variables are constrained by natural laws that affect how variables can vary. For example, the acceleration of a particle can vary, but the acceleration will always be related to the mass of the particle and the forces acting on the particle (according to $F = MA$). 

This law will leave fingerprints on the pattern of variation displayed by acceleration. If you measure both the acceleration of a particle and the force acting on it, you may notice that the values of the acceleration and the force correspond in a systematic way. The value of $A$ will be high whenever the value of $F$ is high, and the value of $A$ will be low when the value of $F$ is low.

You will observe an even more striking relationship if you also measure the particle's mass. Whenever you measure the acceleration, force, and mass simultaneously, you will observe values that display the relationship $F = MA$. This behavior is known as _covariation_, correspondence between the values of two or more variables.

Correspondence between values of different variables is known as _covariation_. Data scientists use variation and covariation to reveal unknown natural laws. To do this, they use a tool perfectly suited to the job: data.

## Data

A data set is a collection of measurements that have been organized in a specific way. Each value in a data set is associated with a _variable_ and an _observation_. We use "variable" and "observation" in everyday speech, but the terms have a technical meaning when associated with data.

* A _variable_ is a quantity, quality, or property that can be measured. 

* An _observation_ is a set of measurements that are made on multiple variables under similar (ideally identical) conditions. 

You can think of an observation as a snap shot of the world. An observation shows what a group of variables looked like together for a brief moment before they changed. 

Both of these definitions rely on the idea of measurement, so let's be specific about what a measurement is. To define measurement, I'll use the word "observation" in its general, everyday sense. A _measurement_ is an observation that is 

1. made with a reproducible method 
2. recorded in a precise way 

Every measurement creates a _value_, a piece of information that describes a specific part of the world at a specific time. Measurements make it easy to quantify variation because they provide a rigorous way to observe the world. 

Measurements, variables, and observations give data sets a structure that parallels the structure of natural laws. Natural laws contain variables whose values correspond when the variables are measured under identical conditions. 

For example, the natural law $F = MA$ contains the variables $F$, $M$, and $A$; and it implies that you will observe trios of values such that

$$f_{1} = m_{1} * a_{1}$$
$$f_{2} = m_{2} * a_{2}$$
$$f_{3} = m_{3} * a_{3}$$

and so on.

In the above notation, the lowercase letters denote specific values of the variables $F$, $M$, and $A$; $f_{1}$ is the value of $F$ that we measure on occasion one, and $f_{2}$ is the value of $F$ that we measure on occasion two. If two variables are measured on the same occaision, it implies that they are measured under identical conditions; or in other words, that their measurements are part of the same observation.

Data sets contain values that are each associated with a variable and an observation, e.g.

obs | $F$     |           | $M$     |           | $A$    
--- | ------- | --------- | ------- | --------- | -------
1   | $f_{1}$ |   $\:\:$  | $m_{1}$ | $\:\:$    | $a_{1}$
2   | $f_{2}$ |   $\:\:$  | $m_{2}$ |  $\:\:$   | $a_{2}$
3   | $f_{3}$ |   $\:\:$  | $m_{3}$ |  $\:\:$   | $a_{3}$

If a natural law exists between the variables, their values will display the law within each observation. In our case, $f_{1}$ will equal $m_{1}$ times $a_{1}$, e.g.

obs | $F$     |     | $M$     |          | $A$    
--- | ------- | --- | ------- | -------- | -------
1   | $f_{1}$ | =   | $m_{1}$ | $\times$ | $a_{1}$
2   | $f_{2}$ | =   | $m_{2}$ | $\times$ | $a_{2}$
3   | $f_{3}$ | =   | $m_{3}$ | $\times$ | $a_{3}$

If you collect many different observations, this relationship will appear as a pattern of covariation in your data.

This provides a way to discover natural laws. You can search for patterns in raw data, or visualize the data to make patterns more apparent. You can also search through your data with pattern recognition algorithms, like those of statistical modelling and machine learning.

The basic idea of data science is simple: to search for patterns of covariation that reveal natural laws. However, the practice of data science is somewhat complicated. Data creates several illusions that are well known to scientists and statisticians. To make the most of data you will need to be able to spot these illusions and work around them.

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