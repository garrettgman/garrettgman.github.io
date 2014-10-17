---
layout: page
title: Foundations of Data Science
weight: 3
---

Data science has several meanings. O'Reilly publishes nine books on data science and one of them is named "What is Data Science?" When you open any of them you should ask yourself, what am I getting into? 

At one level, data science is a _branch_ of science. A branch of science uses scientific techniques to study a single subject. For example, physicists study physical systems, chemists study chemical systems, and biologists study living systems. Data scientists study data. This is not as strange as it sounds. Data is its own thing with its own behaviors. If you want to make the most of it, you need to know how to approach it (visualization and statistics anyone?). I'll teach you how to visualize data and do statistics, but this is not the type of data science that we'll cover here.

At another level, data science is a _body of knowledge_, a collection of useful information related to a specific task. For example, you've probably heard of other bodies of knowledge. Library science collects the best ways to run a library, managerial science collects the best ways to manage a business, and computer science collects the best ways to program a computer. Bodies of knowledge usually have the word "science" in their title, so its no surprise that the term "data science" came to be used this way. Data scientists collect the best ways to store, retrieve, and manage data. Or some of them do. This is useful information—and it is probably what most people think of when they think of "data science", but it is not the type of data science that I will teach you.

At the final level, data science is a _method_ of science. Data scientists study a method that anyone can use to solve scientific problems. You can think of data science as a complement to experimental science. Experimental scientists use the experimental method to solve scientific problems, and data scientists use the data science method. Many scientists use both. 

The method of data science motivates every other aspect of the field. Data scientists study data, and how to work with it, because data opens new doors of scientific discovery. _This_ is the data science that you will learn here. This book will teach you how to use data to make and justify scientific discoveries. I won't teach you how to run programs on a hadoop cluster or how to set up the latest type of non-relational database. Those are useful things for a data scientist to know, but to study them now would be like putting the cart before the horse.

This chapter will describe the problems that data scientists attempt to solve, as well as the methods that they use to solve them. It introduces data science as a specific method of reasoning that matches the structure of data to the structure of natural laws. This method of reasoning guides the techniques that you will learn in later chapters—techniques like machine learning, statistical modelling, and visualization.

## The data science worldview

As a method of science, data science is based on two simple ideas. First, that the best way to learn about the word is to observe it. And second, that the universe operates according to _natural laws_. 

A natural law is a law-like relationship between variables. So, for example, $E = Mc^{2}$ and $F = MA$ are both natural laws. In theses laws, the quantities $E$, $M$, $F$, and $A$ are all variables, quantities whose values can change from measurement to measurement. The quantity $c$ is a constant value. Throughout the book, I will refer to variable names with a capital letter and individual values with a lower case letter.

Natural laws explain how the values of variables relate to each other, which can help scientists understand, control, and make predictions about natural processes.

For example, $E = Mc^2$ states that the energy content of a system ($E$) is always equal to the mass of the system ($M$) multiplied by the speed of light squared ($c^{2}$). $F = MA$ explains that the force exerted upon an object ($F$) is equal to the mass of the object ($M$) multiplied by its acceleration ($A$), an insight that has many applications in the field of physics. 

You can think of science as a collection of methods that use observations to discover natural laws. Data science is one of those methods. It uses a specific property of observations to reveal natural laws, and that property is variation.

## Variation

_Variation_ is the natural tendency for a quantity or quality to change from measurement to measurement. Quantities like the temperature of the air and the salinity of the sea change from moment to moment and from place to place. Properties of objects, like height, weight, or volume, change from object to object. If you look closely at the same quantity twice, you will notice these changes, even if the changes are small.

Variation creates uncertainty for scientists because it implies that you cannot know what value you will observe when you measure a quantity—even if you have measured the quantity before. However, variation also contains information.

Variation contains clues about natural laws because natural laws determine how a variable will vary. Consider a particle in a physical system. The acceleration of the particle will vary as the forces that act on the particle change because the acceleration is determined by the forces according to the law $F = MA$.

This law will leave fingerprints on the pattern of variation displayed by acceleration. If you measure both the acceleration of the particle and the force acting on it, you may notice that the values of the acceleration and the force correspond in a systematic way. The value of $A$ will be high whenever the value of $F$ is high, and the value of $A$ will be low when the value of $F$ is low. This behavior is known as _covariation_, correspondence between the values of two or more variables.

You will observe an even more striking relationship if you also measure the particle's mass. Whenever you measure the acceleration, force, and mass simultaneously, you will observe values that display the relationship $F = MA$.

These measurements—and the covariation that they display—would provide a way to discover the relationship $F = MA$ if you did not know that it existed ahead of time. Data science is built around this mechanism.Data scientists use measurements and covariation to reveal unknown natural laws. To do this, they use a tool perfectly suited to the job: data.

## Data

A data set is a collection of measurements that have been organized in a specific way. Each value in a data set is associated with a _variable_ and an _observation_. We use "variable" and "observation" in everyday speech, but the terms have a technical meaning when associated with data.

* A _variable_ is a quantity, quality, or property that can be measured. 

* An _observation_ is a set of measurements that are made on multiple variables under similar (ideally identical) conditions. 

You can think of an observation as a snapshot of the world. An observation shows what a group of variables looked like together for a brief moment before they changed. 

Both of these definitions rely on the idea of measurement, so let's define that word too. To define measurement, I'll use the word "observation" in its general, everyday sense (as in "to observe"). A _measurement_ is an observation that is 

1. made with a reproducible method 
2. recorded in a precise way 

Every measurement creates a _value_, a piece of information that describes a specific part of the world at a specific time. Measurements make it easy to quantify variation because they provide a rigorous way to observe the world.

Measurements, variables, and observations give data sets a structure that parallels the structure of natural laws. Natural laws state how the values of variables will correspond when the variables are measured under identical conditions. In other words, a natural law states how the values of variables will correspond within an observation. For example, the law $F = MA$ states that when you measure a particle's force, mass, and acceleration, you will observe trios of values such that

$$f_{1} = m_{1} * a_{1}$$
$$f_{2} = m_{2} * a_{2}$$
$$f_{3} = m_{3} * a_{3}$$

and so on.

In the notation above, the lowercase letters denote specific values of the variables $F$, $M$, and $A$; $f_{1}$ is the value of $F$ that we measure on occasion one, and $f_{2}$ is the value of $F$ that we measure on occasion two. If two variables are measured on the same occasion, it implies that they are measured under identical conditions; or in other words, that their measurements are part of the same observation.

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

If you collect many different observations, this relationship will appear as a pattern of covariation in your data. As a result, data provides a way to discover natural laws. You can search for patterns in raw data, or visualize the data to make patterns more apparent. You can also search through your data with pattern recognition algorithms, like those of statistical modelling and machine learning.

Let's make this clear with a concrete example. The example is simple, but it will help us tackle more complicated ideas in the next section. Suppose your friend teaches you a new game that involves dice. On each turn, you roll one die and receive a score based on your roll. However, your friend forgets to explain how your score is determined. Luckily, you've written down the value of your die ($D$) and your score ($S$) as you've played. In other words, you've collected some data.

obs | $D$ | $S$ 
--- | --- | --- 
1   | 1 | 7 
2   | 4 | 19
3   | 3 | 15
4   | 6 | 27
5   | 2 | 11
6   | 5 | 23
7   | 5 | 23
8   | 5 | 23
9   | 1 | 7
10  | 5 | 23 

Unless the game is random, the values of $D$ and $S$ must be connected by some type of relationship, even if you do not know what the relationship is. The relationship between $D$ and $S$ is akin to a natural law because the relationship will hold whenever we examine $D$ and $S$ at the same time. 

Your data gives you clues about the relationship between $D$ and $S$. When you rearrange the values, you can see strong covariation. For example, the score increases as the die value increases. Also, everytime you roll a 1, the score is 7 and everytime you roll a 5 the score is 23. 

obs | $D$ | $S$ 
--- | --- | --- 
1   | 1 | 7 
9   | 1 | 7
5   | 2 | 11
3   | 3 | 15
2   | 4 | 19
6   | 5 | 23
7   | 5 | 23
8   | 5 | 23
10   | 5 | 23
4  | 6 | 27 

You can plot the data to make the relationship even more clear. This reveals that the relationship is linear.

<img src="/images/dice-plot.png"><img src="/images/dice-fit.png">

Since the relationship is linear, you can model it with linear regression, which returns an exact formula for the relationship, $S = 3 + 4D$. You now know all you need to play the game. This formula acts as a law between $S$ and $D$; the score will always equal three plus four times the amount of the die, unless someone is cheating. 

### Distribution

What if you forgot to collect data about $D$? Then your data set would look like this. Could you still use your data to discover insights about $S$?

obs | $S$ 
--- | --- 
1   | 7 
9   | 7
5   | 11
3   | 15
2   | 19
6   | 23
7   | 23
8   | 23
10   | 23
4  | 27 


So the basic idea of data science is simple: to search for patterns of covariation in data that reveal natural laws. However, the practice of data science is more complicated than that. With enough data, the laws of the universe become clear; but data scientists rarely get to work with enough data. As a general rule, you will work with data sets that cover too few variables and too few observations to easily reveal natural laws.

Under these conditions, data creates several illusions that are well known to scientists and statisticians. To make the most of real world data, you will need to spot these illusions and work around them. 

The first illusion is caused by studying too few variables. You can handle it with a technique known as _modelling_.

# Modelling

Unfortunately, in practice, you will never get to work with enough data. As a rule, you must make inferences from too few variables or too few observations, which introduces the chance for error and illusion.

It is especially common to work with too few variables when studying a natural law. Natural laws explain natural behavior in terms of variables, but you cannot know which variables are in a law until _after_ you discover the law. This makes it difficult to collect relevant data.

Second, it takes time and money to collect data. Sometimes you do not even get to collect data, you inherit it. In both cases, you are unlikely to measure every variable that you want to.

Third, many physical systems are quite complicated and involve many variables. Consider flipping a coin.

As a result, we ususally look for natural laws in data that can only hope to reveal part of the law, a relationship between several variables that occur in a law alongside other variables. What effect will this have on your research?

To find out, consider our dice game from before. Suppose that we modify the game so that on each turn two dice are rolled. You roll one and your friend rolls one. In this version of the game, the final score is equal to three plus four times your dice ($D_{1}$) plus five times your friend's dice ($D_{2}$), i.e. $S = 3 + 4D_{1} + 5D_{2}$.

$S$ is no longer solely determined by $D_{1}$, but it is related to $D_{1}$. As $D_{1}$ gets bigger, $S$ should get bigger, all else being equal. This insight could be useful. Perhaps it could form the basis of a game of Liar's dice. 

If you collect data on each of $S$, $D_{1}$, and $D_{2}$, this relationship will appear as a pattern between the three variables in the data set, although you may not recognize the pattern with the naked eye.

You can visualize the data with a three dimensional graph. The pattern will appear as a plane, the three dimensional equivalent of a linear relationship.

Consider what happens however, if you only collect data on $D_{1}$. However, you are unlikely to notice, let alone accurately describe the partial relationship between $S$ and $D_{1}$ because the effect of $D_{1}$ on $S$ is swamped by the effect of $D_{2}$ on $S$, which you have no way of examining. The effect of $D_{2}$ acts as noise in the data.

In many scientific analysis, things are similar but better. Suppose we modify the dice game, so your dice has the numbers 101 to 200 on it and your friends dice still has the numbers 1 to 6 on it. Now the effect of $D_{2}$ is small compared to the effect of $D_{1}$. It still appears as noise in the data, but it doesn't overwhelm the partial relationship between $S$ and $D_{1}$. We can make pretty accurate guesses about the partial relationship.

Data scientists deal with unmeasured variables by modelling the relationships (or partial relationships) that are revealed in the data. A model is an estimate of a relationship that divides the variation in the y variable into variation that can be explained by the x variables and variation that cannot be explained by the x variables, which is known as _unexplained variation_. For example, we can model the dice data as

Data scientists use the greek letter epsilon, $\epsilon$, to symbolize the unexplained variation in a model. You can treat this unexplained variation as random noise. So the estimate that your model would give is y plus some random noise. But be aware that there's no reason to think that this noise is random. As you saw in the dice example, the unexplained variation can be caused by unmeasured variables that have a small influence on the outcome.

Since the physical universe is very interconnected (for example, each particle technically exerts a gravitational pull on every other particle), there can be _many_ unmeasured variables that have a small influence on the system that you are studying. Consider a coin flip.

However, studying all of these small influences would not be productive. Experimental scientists try to avoid such labors by collecting data under experimental conditions, which prevent variation in unmeasured variables. Data scientists free themselves with the idea of randomness.

There's an old joke about physicists.

Randomness is a simplifying assumption just like the idea of a perfect sphere or a perfect vacuum is. It is difficult to find a perfect sphere or a perfect vacuum in reality, but it is easy to think about and reason with such things. It is difficult to find a perfectly random situation in reality. In fact, its unclear whether we havee _ever_ observed random behavior. The closest contender is quantum behavior, but even that is debated.

We can lump complicated, but small influences together as "random behavior" and then explain the variation that they cause with probability.







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