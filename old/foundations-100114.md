---
layout: page
title: Foundations of Data Science
weight: 3
---

Data science is a _method_ of science. This sets it apart from other fields that are _branches_ of science. A branch of science uses scientific techniques to study a single subject. For example, physicists study physical systems, chemists study chemical systems, and biologists study living systems. But data science is different.  

Data scientists study a method that anyone can use to solve scientific problems. You can think of data science as a complement to experimental science. Experimental scientists use the experimental method to solve scientific problems, and data scientists use the data science method. Many scientists use both.

This chapter will describe the problems that data scientists attempt to solve, as well as the methods that they use to solve them. It introduces data science as a specific method of reasoning that matches the structure of data to the structure of natural laws. This method of reasoning guides the techniques that you will learn in later chapters—techniques like machine learning, statistical modelling, and visualization.

This chapter also describes the challenges that shape data science. As a tool, data can be misleading. Data creates specific illusions that you must be able to recognize and avoid as you do data science.

## The data science worldview

Science is based on a simple idea, that the best way to learn about the world is to observe it. To a scientist, a statement is true if it corresponds with the way things really are (and a statement is false if it does not). As a result, observations provide very trustworthy knowledge. An observation reveals a part of the world as it really is, and any statement that accurately describes an observation will be true. 

However, observations reveal a phenomenon known as _variation_: the observable parts of the world are in constant flux. For example, quantities like the temperature of the air and the salinity of the sea change from moment to moment and from place to place. Properties of objects, like height, weight, or volume, change from object to object. If you closely observe the same quantity twice, you will notice these changes, even if the changes are small.

Variation creates a dilemma for scientists because it limits what you can know. Variation implies that the information revealed by an observation only applies to a specific object—at a specific time and place. To learn about other cases, a scientist must make new observations, which may be difficult, or in some cases impossible. In other words, variation makes observation a weak tool for reasoning about the unobserved parts of the world.

In spite of variation, scientists use observations to explain, predict, and control the unobservable parts of the world. They do this by acting as if variation is caused by laws of cause and effect. According to this view, every observable change in the world is the result of a cause. If you can identify the causes of a change, then you can experiment to find the exact relationship between the cause and its effects. 

Scientists call the relationships between cause and effect _natural laws_, and you've seen them before. $E = Mc^{2}$ and $F = MA$ are both natural laws that explain how and why observable parts of the world vary. A natural law provides a way to reason about the entire world, because it applies (in theory) to both the observed and unobserved parts of the world.

Observations provide a way to identify natural laws. They reveal variation, which contains its own type of information. Natural variation is not haphazard, but contains structure. This structure gives clues about the causes that shape the variation in a quantity. As a result, scientists can discover natural laws by studying patterns of variation. 

Data science is a method for analyzing the structure of variation to reveal natural laws. It relies heavily on data, a tool uniquely suited to revealing the structure of variation.

## Measurement

Data scientists study a specific type of observation, measurements.

A _measurement_ is an observation that is 

1. made with a reproducible method 
2. recorded in a precise way 

Every measurement creates a _value_, a piece of information that describes a specific part of the world at a specific time. 

The rigor of measurement makes patterns of variation clear.

Measurement reveals two types of structure associated with variation: distribution and covariation. 

If you examine multiple measurements of the same variable, you will notice that some values appear more often than others. For example, if you measure the heights of adult men, you will notice that many men are roughly 5' 9&rdquo; (~175 cm). A much smaller number of men are a foot taller (6' 9&rdquo;) or a foot shorter (4' 9&rdquo;), and almost nobody is two feet taller (7' 9&rdquo;) or two feet shorter (3' 9&rdquo;).

For every variable, some values will seem typical; some values will seem rare but plausible; and other values will seem downright impossible. In other words, the possible values of each variable are distributed in a structured way. You can improve your predictions about a variable if you identify the distribution of values associated with the variable.

If you examine multiple measurements of _several_ variables, you may notice a second type of structure. The values of one variable may correspond to the values of another variable in a systematic way. For example, if you measured the heights and weights of children, you may notice that children with large heights also tend to have large weights, and vice versa. 

This correspondence between variables is known as _covariation_, and it provides a second way to improve predictions about a variable. If you spot a relationship between two variables, you can use the value of one variable to make informed predictions about the value of a second variable. 

Let's continue our example above. Suppose you wish to know the weight of John, a boy whose height you have measured. John is three feet tall. Looking at your previous measurements, you see that every child that you've weighed so far that was three feet tall had a weight between 50 and 55 pounds. As a result, you can make an informed guess about John's weight, that John is also between 50 and 55 pounds. 

Covariation can do much more than improve your predictions. It may provide evidence about natural laws. 

Covariation is exactly what you would expect if you believe that the universe operates according to laws of cause and effect (and most scientists do). According to this view, the universe behaves according to deterministic laws, which can be expressed as formulas, mathematical relationships between variables. Some popular scientific laws include 

$$E=Mc^{2}$$

and 

$$F=MA$$

The first law states that the energy content of a system ($E$) is equal to the mass of the system ($M$) multiplied by the speed of light squared ($c^{2}$). The second law explains that force exerted upon an object ($F$) is equal to the mass of the object ($M$) multiplied by its acceleration ($A$). 

In theses laws, the quantities $E$, $M$, $F$, and $A$ are all variables. The quantity $c$ is a constant value.

Scientific laws determine how the values of variables within the law will co-vary. Whenever the variables are measured simultaneously, their values will display the relationship described by the law. This suggests a way to identify scientific laws: look for covariation between variables, then analyze the covariation to determine the form of a law.

Let's make this clear with an example. Imagine that you have a pair of dice that you roll repeatedly. On each roll, you record the value of the first die, $D_{1}$, and the value of the second die, $D_{2}$. Your friend, who is standing nearby, also gives you a number to write down, which we will call $S$. After several rolls, you have acquired the following measurements.

&nbsp;|$D_{1}$|$D_{2}$|$S$
:------|--:|--:|--:
Roll 1 | 2 | 6 | 8

&nbsp;|$D_{1}$|$D_{2}$|$S$
:------|--:|--:|--:
Roll 2 | 5 | 4 | 9

&nbsp;|$D_{1}$|$D_{2}$|$S$
:------|--:|--:|--:
Roll 3 | 2 | 1 | 3

&nbsp;|$D_{1}$|$D_{2}$|$S$
:------|--:|--:|--:
Roll 4 | 2 | 3 | 5

You have humored your friend by writing down his number, but now your curiousity is aroused. What is $S$? The measurements above provide an important clue. The values of $D_{1}$, $D_{2}$, and $S$ co-vary in a specific way: the value of $S$ is always equal to the sum of the values of $D_{1}$ and $D_{2}$. You can express this relationship as 

$$S = D_{1} + D_{2}$$

this provides strong evidence that your friend is summing the values of the dice to create $S$. On the next roll, you use this knowledge to predict the value of $S$. You roll a six and a five. Your friend starts to speak, but you cut him off and shout "eleven." He's very impressed! You use the moment to suggest that the two of you find better ways to spend your time.

Covariation will not always appear in your measurements. When it does, it will not always indicate a scientific law—values can co-vary for other reasons. However, covariation provides a straightforward way to discover scientific laws.

Data science relies heavily on data, a tool uniquely suited to reveal distributions and covariation. 

## The structure of data

Data scientists use data to study the structure of variation.

A data set is a collection of values obtained throught measurement.

Data sets contain an internal structure. Each value in the data set is associated with a variable and an observation. 

A variable is

It is important to understand the difference between a variable and a value. A variable is a general quantity or quality that you can measure, such as height, weight, or the outcome of an event. A value is a state that a variable can have when you measure it. For example, the variable height can have values like 60 inches and 61.3 inches. A variable that describes a coin flip (which is an event) can have the values "heads" and "tails." 

Throughout the book, I will use capital letters to denote variables and lower case letters to denote values. So for example, we can speak of the variable $H$. If we measure it, we might find that it is equal to the value $h$.

$$H = h$$

But if we measure $H$ a second time, we might expect it to be equal to a different value, $h_{2}$.

$$H = h_{2}$$


An observation is...

This structure parallels the structure of natural laws.

If a law exists between variables, it will appear in the values of the variables whenever the values are measured under the same observation.

As a result, natural laws appear as patterns of covariation in data sets.

You can find these patterns by visualizing the data, or by searching with function estimation techniques.

As a program, data science is very straightforward in theory. However, data science is much more difficult in practice. As a data scientist, you never have enough data, which creates predictable illusions.

## Modelling

If you do not study all of the variables that cause variation, the patterns revealed by your data will be contaminated with noise.

Consider this concrete example with a simple law.

Data scientists reason around this by dividing variation into what can be explained by covariation and what cannot.

You can describe unexplained variation with a distribution.

You can reason about unexplained variation with probability.

This technique creates a model, an estimate of a natural law that contains a probabilistic component.

### Measurement error

Noise can also come from variables that affect your measurement, but not necessarily the quantity that you are measuring.

Measurements are a type of observation, but also a type of event, influenced by its own set of causal conditions. Tiny errors occur each time you make a measurement. Your hand may shake slightly, the temperature may fluctuate, a glass lens may swell, and so on. As a result, it is very difficult to make two measurements under the exact same conditions. 

Consider how unexplained variables influence the measurements of the speed of light, a universal constant. You can see the effect of these measurement errors when you measure something that should be constant, like the speed of light. The table below shows the earliest reliable measurements of the speed of light. The speed of light is a universal constant that should never vary, but the measurements of the speed of light vary greatly due to measurement errors.

|------------|------------|------------|------------|------------|------------|------------|------------|------------|------------
| 299,850|    299,740|    299,900|    300,070|    299,930 |    299,800| 299,850|    299,880|    299,900|    299,840
|299,850| 299,950| 299,980| 299,980| 299,880 |299,830| 299,790| 299,810| 299,880| 299,880
|300,000| 299,980| 299,930| 299,650| 299,760 |299,830| 299,800| 299,790| 299,760| 299,800
|299,810| 300,000| 300,000| 299,960| 299,960 |299,880| 299,880| 299,880| 299,860| 299,720
|299,960| 299,940| 299,960| 299,940| 299,880 |299,720| 299,620| 299,860| 299,970| 299,950

_50 measurements of the speed of light (km/s) observed by Michelson in 1879._

Unfortunately, when measuring constants it is not clear which measurements should be trusted and which are affected by errors. 

Measurement error is a type of unexplained variation, whihc means that you can handle it with the probabilistic term of your model.

## Model Selection

If you do not collect enough observations, your data will underdetermine your model.

How many observations would it take to single out a model? An infinite amount.

Data scientists use inference to the best explanation to select a model from the many supported by the data.

Data scientists tend to choose the model that has the best predictive accuracy (even if they must guess what that model is).

## Statistical Inference

Too few observations creates a second problem as well. If you do not collect enough observations, you are vulnerable to sample bias.

Consider this concrete, visual example.

You can account for bias with statistical inference. To do so, collect data with random sampling.

Then construct confidence intervals for your estimates.

Finally, be very cautious about applying your results to dissimilar cases.


## Causality

Laws of cause and effect create non-causal associations between variables.

Models do not differentiate between causal relationships and associations.

This requires skepticism.

There are some tests that can help you infer causality.

Associative models can be very useful for predictive analytics.

## Roadmap

Part one focuses on the structure of data. You will learn to recognize and spot the relationships in your data and to use these relationships to reformat your data, derive new information, such as new variables and observations and to visualize your data. You will also learn how to explore your data visually to discover scientific relationships.

Part two will focus on variation, the uncertainty that arises from studying incomplete laws and systems. Variation is not chaotic, it has structure (so does chaos incidentally). you will learn to describe and reason about this structure with probability. You will also learn how to reduce the uncertainty of variation by modelling covariance. This lets you separate variation into explained variation and unexplained variation.

Part three will focus on modelling. It is impossible to identify the exact form of a scientific law with a finite set of observations. You'll need to select the best vailable model for the law, but which one is best? In this section you'll learn how to compare models based on their predictive accuracy. You'll also learn the standard techniques for deriving highly accurate predictions from data.

Part four focuses on inference, a type of reasoning that underlies many areas of data science. Inference introduces a new form of variation, sampling variation. You can account for this variation by estimating it with parametric and bootstrap methods. You'll learn to use sample variation to test hypotheses against data and als oto test for causal relationships.

Part five focuses on reporting. Science is a communal process, which means you will need to communicate your results to make them useful. Experimental scientists have one way of communicating results, the scientific report, and data scientists have another, literate programming.

## Summary and segue


