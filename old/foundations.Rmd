---
layout: page
title: Foundations of Data Science
weight: 3
---

Data science is a _method_ of science. This sets it apart from other fields that are _branches_ of science. A branch of science uses scientific techniques to study a single subject. For example, physicists study physical systems, chemists study chemical systems, and biologists study living systems. But data science is different.  

Data scientists study a method that anyone can use to solve scientific problems. You can think of data science as a complement to experimental science. Experimental scientists use the experimental method to solve scientific problems, and data scientists use the data science method. Many scientists use both.

This chapter will describe the problems that data scientists attempt to solve, as well as the methods that they use to solve them. It introduces data science as a specific method of reasoning that matches the structure of data to the structure of scientific laws. This method of reasoning guides the techniques that you will learn in later chapters—techniques like machine learning, statistical modelling, and visualization.

## The data science worldview

Science is based on a simple idea, that the best way to learn about the world is to observe it. Data scientists extend this idea by studying measurements, a specifc type of observation. A _measurement_ is an observation that is 

1. made with a reproducible method and 
2. recorded in a precise way. 

Every measurement creates a _value_, a piece of information that describes a specific part of the world at a specific time. 

### Variation

Measurements let us compare observations in a rigorous way. You might think that this would simplify science, but it does the opposite. The rigor of measurement reveals a surprising phenomenon: if you measure the same thing twice, you will observe two different values, so long as you measure precisely enough. 

This is true of any quantity or quality that you choose to measure. Many things will vary from measurement to measurement due to natural reasons. For example, the temperature of the air will vary from time to time, and the salinity of the sea will vary from place to place. 

Other things seem to be constant in theory, but will vary when measured due to small measurement errors. You can see this variation in the earliest measurements of the speed of light, which are displayed in the table below. The speed of light is a universal constant that should never vary, but the measurements of the speed of light vary greatly.

|------------|------------|------------|------------|------------|------------|------------|------------|------------|------------
| 299,850|    299,740|    299,900|    300,070|    299,930 |    299,800| 299,850|    299,880|    299,900|    299,840
|299,850| 299,950| 299,980| 299,980| 299,880 |299,830| 299,790| 299,810| 299,880| 299,880
|300,000| 299,980| 299,930| 299,650| 299,760 |299,830| 299,800| 299,790| 299,760| 299,800
|299,810| 300,000| 300,000| 299,960| 299,960 |299,880| 299,880| 299,880| 299,860| 299,720
|299,960| 299,940| 299,960| 299,940| 299,880 |299,720| 299,620| 299,860| 299,970| 299,950

_50 measurements of the speed of light (km/s) observed by Michelson in 1879._

Unfortunately, when measuring constants it is not clear which measurements should be trusted and which are affected by errors. As a result, data scientists treat everything that can be measured as a _variable_, a quantity or quality whose value can vary from measurement to measurement. 

It is important to understand the difference between a variable and a value. A variable is a general quantity or quality that you can measure, such as height, weight, or the outcome of an event. A value is a state that a variable can have when you measure it. For example, the variable height can have values like 60 inches and 61.3 inches. A variable that describes a coin flip (which is an event) can have the values "heads" and "tails." 

Throughout the book, I will use capital letters to denote variables and lower case letters to denote values. So for example, we can speak of the variable $H$. If we measure it, we might find that it is equal to the value $h$.

$$H = h$$

But if we measure $H$ a second time, we might expect it to be equal to a different value, $h_{2}$.

$$H = h_{2}$$

Variation creates a huge source of uncertainty for scientists. How can you know anything certain about the universe if the universe constantly changes? How can you learn anything from your measurements if even constants change each time you measure them? 

This is the primary problem that data scientists try to solve, i.e. how to build reliable knowledge in the face of uncertainty. To solve the problem, data scientists rely on a second phenomenon also revealed by measurement.

### Covariation

The second phenomenon that measurement reveals is that many variables appear to be related to each other. In other words, the values of one variable often seem to correspond to the values of other variables in a systematic way. For example, the value of a child's weight tends to increase as the value of the child's height increases. The number of naps that a child takes tends to decrease as the value of the child's age increases. This correspondence between variables is known as _covariation_. 

Covariation is exactly what you would expect if you believe that the universe operates according to laws of cause and effect (and most scientists do). According to this view, the value of each variable is an effect determined by a system of causes, and each cause in the system is itself a variable.

Let's make this clear with an example. Imagine rolling a pair of dice. You can denote the sum of the dice as a variable, $S$, and you can speculate that it is determined by the values of the individual dice, $D_{1}$ and $D_{2}$, in a specific way. 

$$S = D_{1} + D_{2}$$

This simple system has an effect, $S$, and two causes, $D_{1}$ and $D_{2}$. I prefer to refer to $S$ as the output of the system. $S$ is determined in a causal manner by $D_{1}$ and $D_{2}$, the inputs of the system. If you change the value of $D_{1}$ or $D_{2}$, the value of $S$ will change in response. If you collect data on the system, the causal relationship would appear as a strong covariation between $S$, $D_{1}$, and $D_{2}$. Whenever the values of $D_{1}$ and $D_{2}$ are high, the value of S will be high. Whenever the values of $D_{1}$ and $D_{2}$ are low, the value of $S$ will be low.

Whenever a set of variables determines the value of an output variable, you can express the relationship as a formula, like $S = D_{1} + D_{2}$. For convenience, I'm going to call this type of formula a _scientific law_. These formulas are scientific because they deal with quantities or qualities that can be observed (at least in theory). These formulas are laws because they describe law-like relationships. The relationship must always hold so long as the set of input variables _does_ determine the value of the output variable in a causal manner.

### Scientific laws

You've seen scientific laws in many places. For example, two familiar scientific laws are 

$$E=Mc^{2}$$

and 

$$F=MA$$

The first law states that the energy content of a system ($E$) is equal to the mass of the system ($M$) multiplied by the speed of light squared ($c^{2}$). The second law explains that force exerted upon an object ($F$) is equal to the mass of the object ($M$) multiplied by its acceleration ($A$). 

In theses laws, the quantities $E$, $M$, $F$, and $A$ are all variables. The quantity $c$ is a constant value, in theory.

Scientists search for scientific laws because laws provide a way to reason about variation. Laws explain why and how the values of a variable vary. They also help scientists understand, predict, and control natural behavior.

First, you can use a law to understand the world. $E = Mc^{2}$ explains why plutonium creates a nuclear explosion when detonated. A piece of plutonium contains an amount of energy equal to the mass of the piece times the speed of light squared. When plutonium is detonated, an atomic reaction converts some of this mass to energy. Scientists have used the law to calculate that about one gram of plutonium was converted to energy when the United States detonated a plutonium bomb above Nagasaki, Japan in WWII. One gram of plutonium would weigh about as much as a paper clip.

Second, you can use a law to make predictions. For example, you could use the law $F = MA$ to predict how fast a nuclear bomb will accelerate once you drop it out of a plane. Substitute the force exerted by gravity for $F$, the mass of the bomb for $M$, and then do some simple algebra to get $A$.

Third, you can use a scientific law to control a system. Imagine that you would like to design a plane that can accelerate fast enough after dropping a nuclear bomb to escape the resulting explosion. The law $F = MA$ tells you how to do this. You can make a plane accelerate faster by decreasing its mass or by giving it an engine that can exert more force on the plane. Given this application, I’d do both.



Data provides the ideal tool to find laws because it is a record of covariation.



