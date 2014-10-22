---
layout: page
title: Notes for Foundations of Data Science
weight: 3
---

## Science vs. science

Library science. Managerial science. Computer science. The word "science" is a giveaway. If a field has "science" in its name, you can bet that its practioners do not wear lab coats and talk about experiments. They wear ties and talk about how you should pay them for their expertise.

The "real" sciences call themselves things like physics, chemistry, and biology -- not library science, managerial science, or computer science.

If a field has to claim that it is a science, it is usually not -- library science, political science, computer science, managerial science. 

## Vague

Data science is a term that was used before it was defined.

O'Reilly publishes nine books on data science and one of them is named "What is Data Science?" When you open any of them you should ask yourself, what am I getting into?

(It doesn't answer the question). As a term, data science is so broadly used. Whenever you open a book on data science, you should ask, "What am I getting into?" Data science is two overlapping things. Like computer science or library science, it is a collection of knowledge. But unlike these subjects.

that you are right to ask, "What am I getting into?" when you open a book on the subject. This book will show you a very specific part of data science: it's scientific core.

Data science has a dual nature, which is part of its confusion. On the one hand, data science refers to a psuedo-academic field. The term science in its name tells you that the field is not an actual branch of science -- like physics, chemistry, or biology -- but a collection of useful techniques that pretend to be scientific, like library science, management science, or computer science. This type of data science involves the best practices for storing, searching and crunching massive data sets on finite hardware. That's not the data science we'll cover here.

## Method vs branch vs body of knowledge

Data science is a _method_ of science. This sets it apart from other fields that are _branches_ of science. A branch of science uses scientific techniques to study a single subject. For example, physicists study physical systems, chemists study chemical systems, and biologists study living systems. But data science is different.  

I'll teach you how to visualize data and do statistics. After all, this is the type of data science that R was designed to do. However, the book will focus on a more basic—and more important—aspect of data science.

At another level, data science is a _body of knowledge_, a collection of useful information related to a specific task. For example, you've probably heard of other bodies of knowledge. Library science collects the best ways to run a library, managerial science collects the best ways to manage a business, and computer science collects the best ways to program a computer. Bodies of knowledge usually have the word "science" in their title, so its no surprise that the term "data science" came to be used this way. Data scientists collect the best ways to store, retrieve, and manage data. Or some of them do. This is useful information. In fact, it is probably what most people in industry think of when they think of "data science," but it is not the type of data science that I will teach you.

 I won't teach you about hadoop clusters or non-relational databases, and I will only teach you the most useful parts of statistics. Those are useful things for a data scientist to know about, but to study them now would be like putting the cart before the horse.

## The data science worldview

A natural law is a law-like relationship between variables. So, for example, $E = Mc^{2}$ and $F = MA$ are both natural laws. In theses laws, the quantities $E$, $M$, $F$, and $A$ are all variables, quantities whose values can change from measurement to measurement. The quantity $c$ is a constant value. Throughout the book, I will refer to variable names with a capital letter and individual values with a lower case letter.

You can think of science as a collection of methods that use observations to discover natural laws. Data science is one of those methods. It uses a specific property of observations to reveal natural laws, and that property is variation.

You shouldn't expect $a_{3}$ to be related to $f_{1}$ in a law-like way because the forces acting on a particle may change between occasion one and occasion three.

Scientists act as if the world behaves according to natural laws, which provides a goal for science. If you can discover a natural law, you can use it to explain—and perhaps control—a natural process.

## Data

Both of these definitions rely on the idea of measurement, so let's define that word too. To define measurement, I'll use the word "observation" in its general, everyday sense (as in "to observe"). A _measurement_ is an observation that is 

1. made with a reproducible method 
2. recorded in a precise way 

Every measurement creates a _value_, a piece of information that describes a specific part of the world at a specific time. Measurements make it easy to quantify variation because they provide a rigorous way to observe the world.

Measurements, variables, and observations give data sets a structure that parallels the structure of natural laws. Natural laws can be written as a formula of variables, but their operation depends on measurements and observations. 


## Variation

You will notice two different values whenever you measure the same variable twice, so long as you measure precisely enough. In fact, due to measurement errors, you will notice two different values even if you measure a constant. 

Data sets are more than a record of values, they are also a record of variation. 

_Variation_ is the natural tendency for a quantity or quality to change from measurement to measurement. Quantities like the temperature of the air and the salinity of the sea change from moment to moment and from place to place. Properties of objects, like height, weight, or volume, change from object to object. If you look closely at the same quantity twice, you will notice these changes, even if the changes are small.

Variation creates uncertainty for scientists because it implies that you cannot know what value you will observe when you measure a quantity—even if you have measured the quantity before. However, variation also contains information.

Variation contains clues about natural laws because natural laws determine how a variable will vary. Consider a particle in a physical system. The acceleration of the particle will vary as the forces that act on the particle change because the acceleration is determined by the forces according to the law $F = MA$.

This law will leave fingerprints on the pattern of variation displayed by acceleration. If you measure both the acceleration of the particle and the force acting on it, you may notice that the values of the acceleration and the force correspond in a systematic way. The value of $A$ will be high whenever the value of $F$ is high, and the value of $A$ will be low when the value of $F$ is low. This behavior is known as _covariation_, correspondence between the values of two or more variables.

You will observe an even more striking relationship if you also measure the particle's mass. Whenever you measure the acceleration, force, and mass simultaneously, you will observe values that display the relationship $F = MA$.

These measurements—and the covariation that they display—would provide a way to discover the relationship $F = MA$ if you did not know that it existed ahead of time. Data science is built around this mechanism.Data scientists use measurements and covariation to reveal unknown natural laws. To do this, they use a tool perfectly suited to the job: data.

## Data 

Natural laws state how the values of variables will correspond when the variables are measured under identical conditions.

If a natural law exists between the variables, their values will display the law within each observation. In our case, $f_{1}$ will equal $m_{1}$ times $a_{1}$, e.

## Modelling

In practice, you will not have enough variables or observations to clearly identify a natural law. Instead, you must estimate laws—often incomplete laws—with a model.

As a data scientist, you will not know ahead of time which variables are in a natural law. This makes it difficult to collect relevant data. As a result, you might not collect data on each variable in the law. You also will not have enough observations to clearly identify a law.