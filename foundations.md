---
layout: page
title: Foundations of Data Science
weight: 3
---

# What is data science?

Data science is a _method_ of science. This sets it apart from other fields that are _branches_ of science. A branch of science uses scientific techniques to study a single subject. For example, physicists study physical systems, chemists study chemical systems, and biologists study living systems. But data science is different.  

Data scientists study a method that anyone can use to solve scientific problems. You can think of data science as a complement to experimental science. Experimental scientists use the experimental method to solve scientific problems, and data scientists use the data science method. Many scientists use both.

This chapter will describe the problems that data scientists attempt to solve, as well as the methods that they use to solve them. It introduces data science as a specific method of reasoning that matches the structure of data to the structure of scientific laws. This method of reasoning guides the techniques that you will learn in later chapters—techniques like machine learning, statistical modelling, and visualization.

# The data science world view

Science is based on a simple idea, that the best way to learn about the world is to observe it. Data scientists build on this idea by observing the world in a specific way. They measure it. A _measurement_ is an observation that is made with a reproducible method and recorded in a precise way. Every measurement creates a _value_, a piece of information that describes a specific part of the world at a specific time.

Measurement reveals two things that form the backbone of data science. First, the universe appears to be in constant flux. If you measure the same thing twice, you will observe two different values, provided that you measure precisely enough. This is true for any quantity or quality that you choose to measure. Many things vary naturally. For example, the temperature of the air varies from time to time and the salinity of the sea varies from place to place. Other things seem to be constant in theory, but vary when measured due to small measurement errors.You can see this variance in the initial observations of the speed of light (which is a universal constant), <<TABLE-MICHELSON>>.

[[TABLE-MICHELSON]]
.50 measurements of the speed of light (km/s) observed by Michelson in 1879
[width="50%"]
|=======
|299,850| 299,740| 299,900| 300,070| 299,930 |299,800| 299,850| 299,880| 299,900| 299,840
|299,850| 299,950| 299,980| 299,980| 299,880 |299,830| 299,790| 299,810| 299,880| 299,880
|300,000| 299,980| 299,930| 299,650| 299,760 |299,830| 299,800| 299,790| 299,760| 299,800
|299,810| 300,000| 300,000| 299,960| 299,960 |299,880| 299,880| 299,880| 299,860| 299,720
|299,960| 299,940| 299,960| 299,940| 299,880 |299,720| 299,620| 299,860| 299,970| 299,950
|=======

Unfortunately, when measuring constants it is not clear which measurements should be trusted and which are affected by errors. As a result, data scientists treat everything that can be measured as a _variable_, a quantity or quality whose value can vary from measurement to measurement. 

It is important to understand the difference between a variable and a value. A variable is a general quantity or quality that can be measured, such as height, weight, or the outcome of an event. A value is a state that a variable that can have when measured. For example, the variable height can have values like 60 inches and 61.3 inches. A variable that describes a coin flip (an event) can have the values heads and tails. 

Throughout the book, I will use capital letters to denote variables and lower case letters to denote values. So for example, we can speak of the variable $H$. If we measure it, we might find that it is equal to the value $h$.

$H = h$

But if we measure $H$ a second time, we might expect it to be equal to a different value, $h_{2}$.

$H = h_{2}$

Variation creates a huge source of uncertainty for scientists. How can you know anything for certain if everything that you can measure is in constant flux?

In addition to variation, measurement reveals a second phenomenon that data scientists use to reason about the universe: covariation. The values of one variable often seem to correspond to the values of other variables in a systematic way. For example, the value of the child's weight also tends to increase as the value of a child's height increases. This correspondence between variables is known as _covariation_. 

Covariation is exactly what you would expect if you believe that the universe operates according to laws of cause and effect (and most scientists do). According to this view, the value of each variable is an effect determined by a system of causes, which are also variables.

Let's make this clear with an example. Imagine rolling a pair of dice. You can denote the sum of the dice as a variable, $S$, and you can speculate that it is determined by the values of the individual dice, $D_{1}$ and $D_{2}$, in a specific way. 

$S = D_{1} + D_{2}$

This simple system has an effect, $S$, and two causes, $D_{1}$ and $D_{2}$. I prefer to refer to $S$ as the output of the system. It is determined in a causal manner by $D_{1}$ and $D_{2}$, the inputs of the system. If you change the value of $D_{1}$ or $D_{2}$, the value of $S$ will change in response. This relationship would appear in your data as a strong covariation between $S$, $D_{1}$, and $D_{2}$.

Covariation reduces the uncertainty caused by variation. First, covariation implies that variables do not vary chaotically. Instead, values are associated with each other through relationships of cause and effect. If you can identify the relationship that determines the value of a variable, then you can know the variables values accross many conditions. Moreover, you can be reasonable certain about these values. To determine which occurs, you need only measure the input variables of the system.

Second, covariation provides a way to spot and describe the relationships between variables. This is the bread and butter of data science. 


Addresses uncertainty
Notation of laws
Helpful in several ways
Scientists look for such laws
Data provides the ideal tool to find laws



