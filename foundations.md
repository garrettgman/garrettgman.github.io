---
layout: page
title: Foundations of Data Science
weight: 3
---

O'Reilly publishes nine books on data science and one of them is named "What is Data Science?" When you open any of these books you should ask yourself, what am I getting into? As a term, data science has come to mean several things. 

At one level, data science is a _body of knowledge_, a collection of useful information related to a specific task. For example, library science and managerial science are bodies of knowledge. Library science collects the best ways to run a library, and managerial science collects the best ways to run a business. Data science collects the best ways to store, retrieve, and manage data. As a result, a data scientist might know how to set up a hadoop cluster or run the latest type of non-relational database. This is probably what most people think of when they think of "data science," but this is not the type of data science that I will teach you.

At another level, data science is a way of doing science. Data scientists use data, models, and visualizations to make scientific discoveries, just as other scientists use experiments. In fact, you can think of data science as a _method_ of science that complements experimental science. Experimental scientists use the experimental method to solve scientific problems, and data scientists use the data science method. Many scientists use both. 

This book will teach you the method of data science. You will learn how to use data to make scientific discoveries, and to justify those discoveries once they are made. Along the way, you will learn how to visualize data, build models, and make predictions.

This chapter will describe the problems that data scientists attempt to solve, as well as the method that they use to solve them. It introduces data science as a specific method of reasoning that matches the structure of data to the structure of natural laws. This method of reasoning guides the techniques that you will learn in later chapters—techniques like machine learning, statistical modelling, and visualization.

## The data science worldview

As a method of science, data science is based on two simple ideas. First, that the best way to learn about the word is to observe it. And second, that the universe operates according to _natural laws_. 

A natural law is a law-like relationship between variables, like $$E = Mc^{2}$$ and $$F = MA$$. Natural laws explain how the values of variables relate to each other, which can help scientists understand, control, and make predictions about natural processes.

For example, $$E = Mc^2$$ states that the energy content of a system ($$E$$) is always equal to the mass of the system ($$M$$) multiplied by the speed of light squared ($$c^{2}$$). $$F = MA$$ explains that the force exerted upon an object ($$F$$) is equal to the mass of the object ($$M$$) multiplied by its acceleration ($$A$$), an insight that has many applications in the field of physics. 

Natural laws deal with variables, values, and observations. We use these terms in everyday speech, but they have a technical meaning when associated with data science.

* A _variable_ is a quantity, quality, or property that can be measured. 

* A _value_ is the apparent state of a variable when you measure it. The value of a variable may change from measurement to measurement.

* An _observation_ is a set of measurements that are made on multiple variables under similar (ideally identical) conditions. 

    You can think of an observation as a snapshot of the world. An observation shows what a group of variables looked like together for a brief moment before they changed. 

Natural laws deal with variables, but they operate on values that are measured in the same observation. For example, the law $$F = MA$$ states that when you measure a particle's force, mass, and acceleration _at the same time_, you will observe trios of values such that

$$f_{1} = m_{1} * a_{1}$$  

$$f_{2} = m_{2} * a_{2}$$  

$$f_{3} = m_{3} * a_{3}$$  

and so on.

In the notation above, the lowercase letters denote specific values of the variables $$F$$, $$M$$, and $$A$$. Throughout the book, I will refer to variable names with a capital letter and individual values with a lower case letter. The subscripts denote when we measure each variable. $$f_{1}$$ is the value of $$F$$ that we measure on occasion one, and $$f_{2}$$ is the value of $$F$$ that we measure on occasion two. If two variables are measured on the same occasion, it implies that they are measured under identical conditions; or in other words, that they are measured as part of the same observation. 

A natural law implies that a relationship will exist between values _in the same observation_. However, natural laws do not imply that a relationship will exist between values in _different_ observations.


For example, the law $$F = MA$$ does not imply that if you measure the force of a particle today, it will equal the mass times the acceleration that you measured tomorrow. All three quantities may change between now and then. In other words, $$f_{1}$$ will be related to $$m_{1}$$ and $$a_{1}$$, but it may not be related to $$m_{3}$$ and $$a_{3}$$. 

Natural laws provide a goal for science. Scientists attempt to discover natural laws and thereby explain natural phenomena. You can think of science as a collection of methods that use observations to discover natural laws. Data science is one of those methods. It uses a specific tool to reveal natural laws, and that tool is data.

## Data

A data set is a collection of values that have been organized in a specific way: each value in a data set is associated with a variable and an observation. This organization gives data a structure that parallels the structure of natural laws. 

For example, the values $$f_{1}$$, $$f_{2}$$, $$f_{3}$$, $$m_{1}$$, $$m_{2}$$, $$m_{3}$$, $$a_{1}$$, $$a_{2}$$, and $$a_{3}$$ compose a data set.

obs | $$F$$     | $$M$$     | $$A$$    
--- | --------- | --------- | ---------
1   | $$f_{1}$$ | $$m_{1}$$ | $$a_{1}$$
2   | $$f_{2}$$ | $$m_{2}$$ | $$a_{2}$$
3   | $$f_{3}$$ | $$m_{3}$$ | $$a_{3}$$

Each value is associated with a variable, as well as an observation. Within each observation, the relationship described by the law $$F = MA$$ is present. As a result, the data set reveals what the natural law implies:

obs | $$F$$     | $$M$$     | $$A$$    
--- | --------- | --------- | ---------
1   | $$f_{1} =$$ | $$m_{1} \times $$ | $$a_{1}$$
2   | $$f_{2} =$$ | $$m_{2} \times $$ | $$a_{2}$$
3   | $$f_{3} =$$ | $$m_{3} \times $$ | $$a_{3}$$

Data sets provide insights about natural laws in two ways. First, they display variation, which reveals how variables within natural laws behave. And second, they display covariation, which reveals how natural laws connect variables.

## Variation and variables

_Variation_ is the natural tendency for a value to change from measurement to measurement. Quantities like the temperature of the air and the salinity of the sea change from moment to moment and from place to place. Properties of objects, like height, weight, or volume, change from object to object. If you look closely at the same quantity twice, you will notice these changes, even if the changes are small.

Variation creates uncertainty for scientists because it implies that you cannot know which value you will observe when you measure a variable—even if you have measured the variable before. However, variation also contains information. Each variable has a unique pattern of variation that contains clues about how the variable will behave.

Data sets provide a record of variation that you can use to study a variable. If you look at the recorded values of a variable, you will notice that some values occur quite often, some quite rarely, and others not at all. This pattern of values is known as the _distribution_ of the variable. To see how a distribution can help you reason about a variable, consider the speed of light.

Scientists believe that the speed of light is a universal constant that should never vary. In fact, Einsteinian relativity shows that the universe will distort space and time to preserve the speed of light. This is probably the most drastic effort to preserve the value of a constant that I can think of. However, if you were to measure the speed of light repeatedly, you would get different values each time—just as Albert Michelson did in 1879, (see the table below). Why should this be?


|------------|------------|------------|------------|------------|------------|------------|------------|------------|------------
| 299,850|    299,740|    299,900|    300,070|    299,930 |    299,800| 299,850|    299,880|    299,900|    299,840
|299,850| 299,950| 299,980| 299,980| 299,880 |299,830| 299,790| 299,810| 299,880| 299,880
|300,000| 299,980| 299,930| 299,650| 299,760 |299,830| 299,800| 299,790| 299,760| 299,800
|299,810| 300,000| 300,000| 299,960| 299,960 |299,880| 299,880| 299,880| 299,860| 299,720
|299,960| 299,940| 299,960| 299,940| 299,880 |299,720| 299,620| 299,860| 299,970| 299,950

_50 measurements of the speed of light (in air) (km/s) observed by Michelson in 1879._

Tiny measurement errors happen when you take measurements. For example, your hand might shake very slightly, or a lens might expand as temperatures change. As a result, even constants will appear to vary from observation to observation, so long as you measure them precisely enough. 

However, you can still reason about the true value of a constant by studying the distribution of values associated with the constant. For example we can plot the values above on a number line. I'll stack two measurements one on top of the other wherever the two mesurements have the same value. This will let me place each measurement at the correct spot on the number line without hiding any of the measurements. 

<img src="/images/light.png">

Each of these measurements attempts to record the same constant value, the speed of light; but each measurement is offset by tiny measurement errors. It seems likely that small errors will be more common than large errors—the experimenter is trying to avoid errors after all, and the distribution seems to support this. The points seem to cluster around a single value, something like 299,850 km/s. Many points fall within 50 units of 299,850 km/s, some points fall more than 50 units from 299,850 km/s, and very few points fall more than 150 units from 299,850 km/s. The further we go from 299,850 km/s, the less likely we are to find any measurments.

You can use the distribution to estimate the true speed of light. The distribution suggests that the true value of the speed of light is around 299,850 km/s. However, the distribution does not provide fullproof evidence. The variation in the data obscures the exact value that the points are clustering around. To express this uncertainty, Michelson estimated the speed of light in air to be 299,852±51 km/s. 

The ±51 km/s provides a margin of error. Michelson uses it to suggest that the true speed of light falls somewhere in the interval between 299,801 and 299,903. Any of these values would be reasonable based on the data. 

Estimates and margins of error demonstrate two types of information that are contained in a distribution. You can use a distribution to identify a "typical" value of a variable and to quantify the amount of uncertainty associated with a variable. You can also use a distribution to predict how a variable will behave in the future. For example, we could predict that Michelson's next measurement (if he had made one) would be less than 300,000 km/s and much less than 400,000 km/s. In Chapter 19, you will see that distributions also form a basis for probability, a toolkit for making exact predictions about the behavior of variables.

Although all variation is insightful, a specific type of variation provides more information than all others. That type of variation is known as covariation.

## Covariation and observations

_Covariation_ is the tendency for two or more variables to vary in a systematic way. When two variables covary, their values will seem to correspond to each other. To understand covariation, consider our familiar law, $$F = MA$$. The law states that the acceleration of a particle will vary as the forces acting on the particle vary. This law will leave fingerprints on the patterns of variation displayed by acceleration, force, and mass.

If you measure both the acceleration of a particle and the force acting on it, you may notice that the values of the acceleration and the force correspond in a systematic way. The value of $$A$$ will be high whenever the value of $$F$$ is high, and the value of $$A$$ will be low when the value of $$F$$ is low. You will observe an even more striking relationship if you also measure the particle's mass. Whenever you measure the acceleration, force, and mass simultaneously, you will observe values that display the relationship $$F = MA$$.

If you collect many different observations, this relationship will appear as a pattern of covariation in your data. As a result, data provides a way to discover natural laws. You can search for patterns in raw data, or visualize the data to make patterns more apparent. You can also search through your data with pattern recognition algorithms, like those of statistical modelling and machine learning. 

This is the basic method of data science: to spot patterns in data that reveal natural laws. It works because the structure of data parallels the structure of natural laws. Data reveals the effects of natural laws.

Let's make this clear with a concrete example. The example is simple, but it will help us tackle more complicated ideas in the next sections. 

### Case study

Suppose your friend teaches you a new game that involves dice. On each turn, you roll one die and receive a score based on your roll. However, your friend forgets to explain how your score is determined. Luckily, you've written down the value of your die ($$D$$) and your score ($$S$$) as you've played. In other words, you've collected some data.

obs | $$D$$ | $$S$$ 
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

Unless the game is random, the values of $$D$$ and $$S$$ must be connected by some type of relationship, even if you do not know what the relationship is. The relationship between $$D$$ and $$S$$ is akin to a natural law because the relationship will hold whenever we examine $$D$$ and $$S$$ at the same time. 

Your data gives you clues about the relationship between $$D$$ and $$S$$. When you rearrange the values, you can see strong covariation. For example, the score increases as the die value increases. Also, everytime you roll a 1, the score is 7 and everytime you roll a 5 the score is 23. 

obs | $$D$$ | $$S$$ 
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

Since the relationship is linear, you can model it with linear regression, which returns an exact formula for the relationship, $$S = 3 + 4D$$. You now know all you need to play the game. This formula acts as a law between $$S$$ and $$D$$; the score will always equal three plus four times the amount of the die, unless someone is cheating. 

### Distribution

What if you forgot to collect data about $$D$$? Then your data set would look like this. Could you still use your data to discover insights about $$S$$?

obs | $$S$$ 
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

You do not have enough data to look for covarition that might reveal a natural law. However, you can look for clues about the laws that control $$S$$ by looking at the distribution of values of $$S$$.



So the basic idea of data science is simple: to search for patterns of covariation in data that reveal natural laws. However, the practice of data science is more complicated than that. With enough data, the laws of the universe become clear; but data scientists rarely get to work with enough data. As a general rule, you will work with data sets that cover too few variables and too few observations to easily reveal natural laws.

Under these conditions, data creates several illusions that are well known to scientists and statisticians. To make the most of real world data, you will need to spot these illusions and work around them. 

The first illusion is caused by studying too few variables. You can handle it with a technique known as _modelling_.

# Modelling

Unfortunately, in practice, you will never get to work with enough data. As a rule, you must make inferences from too few variables or too few observations, which introduces the chance for error and illusion.

It is especially common to work with too few variables when studying a natural law. Natural laws explain natural behavior in terms of variables, but you cannot know which variables are in a law until _after_ you discover the law. This makes it difficult to collect relevant data.

Second, it takes time and money to collect data. Sometimes you do not even get to collect data, you inherit it. In both cases, you are unlikely to measure every variable that you want to.

Third, many physical systems are quite complicated and involve many variables. Consider flipping a coin.

As a result, we ususally look for natural laws in data that can only hope to reveal part of the law, a relationship between several variables that occur in a law alongside other variables. What effect will this have on your research?

To find out, consider our dice game from before. Suppose that we modify the game so that on each turn two dice are rolled. You roll one and your friend rolls one. In this version of the game, the final score is equal to three plus four times your dice ($$D_{1}$$) plus five times your friend's dice ($$D_{2}$$), i.e. $$S = 3 + 4D_{1} + 5D_{2}$$.

$$S$$ is no longer solely determined by $$D_{1}$$, but it is related to $$D_{1}$$. As $$D_{1}$$ gets bigger, $$S$$ should get bigger, all else being equal. This insight could be useful. Perhaps it could form the basis of a game of Liar's dice. 

If you collect data on each of $$S$$, $$D_{1}$$, and $$D_{2}$$, this relationship will appear as a pattern between the three variables in the data set, although you may not recognize the pattern with the naked eye.

You can visualize the data with a three dimensional graph. The pattern will appear as a plane, the three dimensional equivalent of a linear relationship.

Consider what happens however, if you only collect data on $$D_{1}$$. However, you are unlikely to notice, let alone accurately describe the partial relationship between $$S$$ and $$D_{1}$$ because the effect of $$D_{1}$$ on $$S$$ is swamped by the effect of $$D_{2}$$ on $$S$$, which you have no way of examining. The effect of $$D_{2}$$ acts as noise in the data.

In many scientific analysis, things are similar but better. Suppose we modify the dice game, so your dice has the numbers 101 to 200 on it and your friends dice still has the numbers 1 to 6 on it. Now the effect of $$D_{2}$$ is small compared to the effect of $$D_{1}$$. It still appears as noise in the data, but it doesn't overwhelm the partial relationship between $$S$$ and $$D_{1}$$. We can make pretty accurate guesses about the partial relationship.

Data scientists deal with unmeasured variables by modelling the relationships (or partial relationships) that are revealed in the data. A model is an estimate of a relationship that divides the variation in the y variable into variation that can be explained by the x variables and variation that cannot be explained by the x variables, which is known as _unexplained variation_. For example, we can model the dice data as

Data scientists use the greek letter epsilon, $$\epsilon$$, to symbolize the unexplained variation in a model. You can treat this unexplained variation as random noise. So the estimate that your model would give is y plus some random noise. But be aware that there's no reason to think that this noise is random. As you saw in the dice example, the unexplained variation can be caused by unmeasured variables that have a small influence on the outcome.

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