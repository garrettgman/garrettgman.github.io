---
layout: page
title: Foundations of Data Science
weight: 3
---

Data science is a _method_ of science. This sets it apart from other fields that are _branches_ of science. A branch of science uses scientific techniques to study a single subject. For example, physicists study physical systems, chemists study chemical systems, and biologists study living systems. But data science is different.  

Data scientists study a method that anyone can use to solve scientific problems. You can think of data science as a complement to experimental science. Experimental scientists use the experimental method to solve scientific problems, and data scientists use the data science method. Many scientists use both.

The data science method relies on data, a tool that makes it easy to discover scientific relationships. However, as a tool, data can be misleading. Data creates specific illusions that you must be able to recognize and work with to make progress.

This chapter will describe the problems that data scientists attempt to solve, as well as the methods that they use to solve them. It introduces data science as a specific method of reasoning that matches the structure of data to the structure of scientific laws. This method of reasoning guides the techniques that you will learn in later chapters—techniques like machine learning, statistical modelling, and visualization.

## The data science worldview

Science is based on a simple idea, that the best way to learn about the world is to observe it. Data scientists extend this idea by studying measurements, a specifc type of observation. A _measurement_ is an observation that is 

1. made with a reproducible method 
2. recorded in a precise way 

Every measurement creates a _value_, a piece of information that describes a specific part of the world at a specific time. 

The rigor of measurement reveals a surprising phenomenon: if you measure the same quantity twice, you will observe two different values, so long as you measure precisely enough. This is true of any quantity that you choose to measure. Data scientists call this phenomenon _variation_, and it shapes how data scientists reason about the world. 

Variation occurs for two reasons. First, the universe changes constantly. For example, the temperature of the air changes from time to time, and the salinity of the sea changes from place to place. Any pair of precise measurements will reflect these changes, even if the changes are minute.

Second, tiny errors occur each time you make a measurement. Your hand may shake slightly, the temperature may fluctuate, a glass lens may swell, and so on. As a result, it is very difficult to make two measurements under the exact same conditions. You can see the effect of these measurement errors when you measure something that should be constant, like the speed of light. The table below shows the earliest reliable measurements of the speed of light. The speed of light is a universal constant that should never vary, but the measurements of the speed of light vary greatly due to measurement errors.

|------------|------------|------------|------------|------------|------------|------------|------------|------------|------------
| 299,850|    299,740|    299,900|    300,070|    299,930 |    299,800| 299,850|    299,880|    299,900|    299,840
|299,850| 299,950| 299,980| 299,980| 299,880 |299,830| 299,790| 299,810| 299,880| 299,880
|300,000| 299,980| 299,930| 299,650| 299,760 |299,830| 299,800| 299,790| 299,760| 299,800
|299,810| 300,000| 300,000| 299,960| 299,960 |299,880| 299,880| 299,880| 299,860| 299,720
|299,960| 299,940| 299,960| 299,940| 299,880 |299,720| 299,620| 299,860| 299,970| 299,950

_50 measurements of the speed of light (km/s) observed by Michelson in 1879._

Unfortunately, when measuring constants it is not clear which measurements should be trusted and which are affected by errors. 

Variation shapes the worldview of data scientists. Data scientists treat everything that can be measured as a _variable_, a quantity or quality whose value can vary from measurement to measurement.

It is important to understand the difference between a variable and a value. A variable is a general quantity or quality that you can measure, such as height, weight, or the outcome of an event. A value is a state that a variable can have when you measure it. For example, the variable height can have values like 60 inches and 61.3 inches. A variable that describes a coin flip (which is an event) can have the values "heads" and "tails." 

Throughout the book, I will use capital letters to denote variables and lower case letters to denote values. So for example, we can speak of the variable $H$. If we measure it, we might find that it is equal to the value $h$.

$$H = h$$

But if we measure $H$ a second time, we might expect it to be equal to a different value, $h_{2}$.

$$H = h_{2}$$

To summarize, variation is an omnipresent phenomenon that creates uncertainty. It is difficult to know what value you will observe when you measure a quantity—even if you have measured the quantity before.

### The goal of data science

Variation creates a goal for data scientists. Data scientists try to understand the variation that is associated with a variable. This helps data scientists

1. Explain why the values of a variable vary
2. Predict which values a variable will take under different sets of conditions
3. Control the value of a variable by manipulating the conditions that affect it

"Variable" is an abstract, mathematical term. So these goals may seem abstract and mathematical, but they are not. You can use data science to explain, predict, and perhaps control anything that you can measure.

For example, you can use data science to identify an effective treatment for bone cancer, to explain why annual rainfall in the midwest varies from year to year, and to determine whether the housing market has entered another economic bubble.

Data scientists build insights about variation by looking for structure within variation.

### Distribution and Covariation

Measurement reveals two types of structure associated with variation: distribution and covariation. 

If you examine multiple measurements of the same variable, you will notice that some values appear more often than others. For example, if you measure the heights of adult men, you will notice that many men are roughly 5' 9&rdquo; (~175 cm). A much smaller number of men are a foot taller (6' 9&rdquo;) or a foot shorter (4' 9&rdquo;), and almost nobody is two feet taller (7' 9&rdquo;) or two feet shorter (3' 9&rdquo;).

For every variable, some values will seem typical; some values will seem rare but plausible; and other values will seem downright impossible. In other words, the possible values of each variable are distributed in a structured way. You can improve your predictions about a variable if you identify the distribution of values associated with the variable.

If you examine multiple measurements of _several_ variables, you may notice a second type of structure. The values of one variable may correspond to the values of another variable in a systematic way. For example, if you measured the heights and weights of children, you may notice that children with large heights also tend to have large weights, and vice versa. 

This correspondence between variables is known as _covariation_, and it provides a second way to improve predictions about a variable. If you spot a relationship between two variables, you can use the value of one variable to make informed predictions about the value of a second variable. 

Let's continue our example above. Suppose you wish to know the weight of John, a boy whose height you have measured. John is three feet tall. Looking at your previous measurements, you see that every child that you've weighed so far that was three feet tall had a weight between 50 and 55 pounds. As a result, you can make an informed guess about John's weight, that John is also between 50 and 55 pounds. 

Covariation can do much more than improve your predictions. It may provide evidence about universal laws. 

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

Data science is a method for analyzing the structure of variation to reveal scientific laws. It relies heavily on data, a tool uniquely suited to reveal distributions and covariation. Data provides the ideal tool to find laws because it is a record of distribution and covariation.

## The structure of data




