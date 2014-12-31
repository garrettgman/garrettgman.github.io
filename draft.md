---
layout: page
title: Foundations of Data Science - draft
weight: 3
---

O'Reilly publishes nine books on data science and one of them is named "What is Data Science?" When you open any of these books you should ask yourself, "What am I getting into?" As a term, data science has come to mean several things. 

At one level, data science is a _body of knowledge_, a collection of useful information related to a specific task. For example, library science and managerial science are bodies of knowledge. Library science collects the best ways to run a library, and managerial science collects the best ways to run a business. Data science collects the best ways to store, retrieve, and manage data. As a result, a data scientist might know how to set up a hadoop cluster or run the latest type of non-relational database. This is probably what most people think of when they think of "data science," but this is not the type of data science that I will teach you.

At another level, data science is a way of doing science. Data scientists use data, models, and visualizations to make scientific discoveries, just as other scientists use experiments. In fact, you can think of data science as a _method_ of science that complements experimental science. Experimental scientists use the experimental method to solve scientific problems, and data scientists use the data science method. Many scientists use both. 

This book will teach you the method of data science. You will learn how to use data to make scientific discoveries, and to justify those discoveries once they are made. Along the way, you will learn how to visualize data, build models, and make predictions.

This chapter introduces the strategy behind data science: data scientists search for evidence of natural laws in the structure of data, and then judge the strength of the evidence that they find. This strategy guides the techniques that you will learn in later chapters—techniques like data wrangling, data modelling, and data visualization.

## The scientific worldview

As a method of science, data science is based on two simple ideas. First, that the best way to learn about the word is to observe it. And second, that the universe operates according to _natural laws_. 

A natural law is a rule that describes a part of the natural world, like $$E = Mc^{2}$$ and $$F = MA$$. These laws help scientists understand, control, and make predictions about natural processes. 

You can write down a natural law as a relationship between variables. For example, $$E = Mc^2$$ is a natural law that states that the energy content of a system ($$E$$) is always equal to the mass of the system ($$M$$) multiplied by the speed of light squared ($$c^{2}$$). $$F = MA$$ is a natural law that explains that a force exerted upon an object ($$F$$) will cause the object to accelerate ($$A$$) at a rate proportional to the mass of the object ($$M$$), an insight that has many applications in the field of physics. 

Natural laws deal with variables, values, and observations. We use these terms in everyday speech, but they have a technical meaning when associated with science.

* A _variable_ is a quantity, quality, or property that can be measured. 

* A _value_ is the apparent state of a variable when you measure it. The value of a variable may change from measurement to measurement.

* An _observation_ is a set of measurements that are made on multiple variables under similar (ideally identical) conditions. 

    You can think of an observation as a snapshot of the world. An observation shows what a group of variables looked like together for a brief moment before they changed. 

Natural laws deal with variables, but they operate on values that appear in the same observation. For example, the law $$F = MA$$ states that when you measure the force, mass, and acceleration associated with _the same_ particle _at the same time_, you will observe a trio of values such that

$$f_{1} = m_{1} * a_{1}$$  

or

$$f_{2} = m_{2} * a_{2}$$  

$$f_{3} = m_{3} * a_{3}$$  

and so on.

In the notation above, the lowercase letters denote specific values of the variables $$F$$, $$M$$, and $$A$$. Throughout the book, I will refer to variable names with a capital letter and individual values with a lower case letter. 

The subscripts denote which observation each of the values belongs to. If a set of values belongs to the same observation, it implies that the values were measured under similar conditions.

To see how this works, consider what the three observations above may represent. The observations may have been taken at three different times: $$f_{1}$$, $$m_{1}$$, and $$a_{1}$$ may have been measured at time one, $$f_{2}$$, $$m_{2}$$, and $$a_{2}$$ measured at time two, and so on.  Alternatively, the observations may describe three different particles: $$f_{1}$$, $$m_{1}$$, and $$a_{1}$$ may have been measured on one particle, $$f_{2}$$, $$m_{2}$$, and $$a_{2}$$ may may have been measured on a second particle, and $$f_{3}$$, $$m_{3}$$, and $$a_{3}$$ may have been measured on a third particle. 

Observations play a very important role in science. A natural law implies that a relationship will exist between values of variables that appear _in the same observation_. However, a natural law _does not_ imply that a relationship will exist between values in _different_ observations. You wouldn't think that the force you exert on one object would equal the mass times the acceleration that you measure on a second object. Or, in the notation above, you wouldn't think that $$f_{1}$$ should equal $$m_{2}$$ times $$a_{2}$$. You would expect $$f_{1}$$ to equal $$m_{1}$$ times $$a_{1}$$. 

Natural laws provide a goal for science. Scientists attempt to discover natural laws and thereby explain natural phenomena. You can think of science as a collection of methods that use observations to discover natural laws. 

Data science is one of those methods. It uses a specific tool to reveal natural laws, and that tool is data.

## Data

A data set is a collection of values that have been organized in a specific way: each value in a data set is associated with a variable and an observation. 

For example, you can use the values $$f_{1}$$, $$f_{2}$$, $$f_{3}$$, $$m_{1}$$, $$m_{2}$$, $$m_{3}$$, $$a_{1}$$, $$a_{2}$$, and $$a_{3}$$ to compose a data set, like the one below.

obs | $$F$$     | $$M$$     | $$A$$    
--- | --------- | --------- | ---------
1   | $$f_{1}$$ | $$m_{1}$$ | $$a_{1}$$
2   | $$f_{2}$$ | $$m_{2}$$ | $$a_{2}$$
3   | $$f_{3}$$ | $$m_{3}$$ | $$a_{3}$$

Each value is associated with a variable as well as an observation. This organization makes data sets particularly useful for discovering natural laws. If a natural law exists between the variables in a data set, the law will appear as a pattern that reoccurs in each observation. Or to put it more simply, natural laws appear as patterns in data.

In our example data set, the relationship described by the law $$F = MA$$ will be present in each observation. As a result, the data set will reveal what the natural law implies:

obs | $$F$$     | $$M$$     | $$A$$    
--- | --------- | --------- | ---------
1   | $$f_{1}$$ | $$= m_{1}$$ | $$\times \; a_{1}$$
2   | $$f_{2}$$ | $$= m_{2}$$ | $$\times \; a_{2}$$
3   | $$f_{3}$$ | $$= m_{3}$$ | $$\times \; a_{3}$$

This is easy to verify if you measure the real forces, masses, and accelerations of several dozen particles, like in the data set below. Each row of values displays the relationship $$F = MA$$.

[data]

Data sets provide a system of discovery for scientists. You can discover a natural law by collecting data and exploring the data for patterns.

Patterns can be difficult to notice in raw data, but you can optimize how you search for patterns. First, you can visualize raw data to make patterns easier to spot. For example, the pattern between $$F$$, $$M$$, and $$A$$ becomes easy to spot when you visualize the data with a three dimensional, or even a two dimensional, graph.

[graphs]

Second, you can use a computer algorithm to search for patterns within data, which is exactly what data scientists do when they use statistical modeling or machine learning techniques.

Moreover, this system is extremely robust. If your values are contaminated by measurement errors, like the values below, the law will emerge as a noisy, but often still discernable pattern.

[data next to graph f ~ m * a]

The same thing will happen if you do not collect data on every variable in the law. The missing variables will contribute noise to the pattern that exists between the variables that are in the data set. You can see this happen in the two dimensional graph between $$F$$ and $$A$$ (here using our original, clean data).

[graph]

As long as you capture the most influential variables in a law, and do not let measurement errors get so big that they swamp your data, you are likely to find a pattern in the data that points to the law.

This method of discovering natural laws forms the basis of data science. Data scientists search for evidence of natural laws in the structure of data. This may sound simple, but in practice it is slightly more complicated. Sometimes data displays patterns that do not exist in real life.

## Uncertainty

Let's do a simple thought experiment. Imagine that you observe several hundred people and record:

1. their birthdays, and 
2. their heights

There's is no natural law that connects these variables. A person's height will not be related to their birthday, unless perhaps the person is an infant. As a result, if you were to plot the data, the data points would fall in an unstructured cloud, like this:

[graph]

The graph shows that different people have different heights and that different people have different birthdays, but there is no systematic relationship—or law—between $$height$$ and $$birthday$$.

Now imagine that you had conducted your study differently. Instead of observing several hundred people, you had only observed ten. What would your data look like?

More than likely, the ten data points would display a less dense, but still unstructured clloud. However, by coincidence you might collect ten measurements that do display a pattern. For example, any of the collections below would suggest that a natural law exists between $$height$$ and $$birthday$$.

[graph]

The thought experiment reveals something important. Natural laws are not the only things that can create patterns in data. A pattern can also be the result of coincidence. As a result, data sets often display patterns that do not exist in real life, which creates a challenge for data scientists. 

In theory, there is no way to use a data set to determine whether the patterns contained in the data exist in real life. Or, more precisely, there is no way to determine _with absolute certainty_ whether the patterns exist in real life.

In practice, there _is_ a way forward. You can calculate the probability that a pattern is the result of random chance. If you assume (or ensure) that the data has been collected in a random, unbiased way, then random chance will be the only mechanism that could cause an illusory pattern to appear in the data. 

Data scientists use probability to guard against _false discovery_, finding patterns that do not exist in real life. This system reduces patterns in data from _proofs_ of natural laws to _evidence_ of natural laws. Each pattern that you find is evidence of a natural law. If the pattern is likely to be caused by random chance, then the evidence is weak. If the pattern is not likely to be caused by random chance, then the evidence is strong. 

A probability calculation will tell you exactly how weak or how strong your evidence is. As a data scientist, you will need to decide for yourself how strong the evidence must be before you are willing to believe it.

It is important to realize that probability does not eliminate the uncertainty associated with your findings. There will always be a small possibility that even the most striking patterns are caused by random chance. Probability calculations do not eliminate this possibility; they quantify it, which makes it easier for you to reason about your evidence.

Data scientists use probability calculations to augment the simple system of discovery presented by data. This arrangement creates the method of data science, which can be described with a basic outline.

## Data Science

Data scientists search for evidence of natural laws in the structure of data, and then judge the strength of the evidence that they find. To do this, they:

1. **Collect data** in a way that minimizes the chance that patterns will appear by coincidence. Often this involves some type of random selection.

2. **Search for patterns** that provide evidence of natural laws. During this search a data scientist will often:
    + **Wrangle data** - make patterns more apparent by reshaping, subsetting, or transforming the data.
    + **Visualize data** - display data in a graph, which exposes patterns to the human visual system.
    + **Model data** - search for patterns with computer algorithms that can be automated, calibrated, and optimized.

3. **Judge patterns** - calculate the probability that a pattern is due to coincidence, and not a natural law. You can view this step as measuring the strength of the evidence provided by an analysis.

Because the evidence provided by a data set may be unreliable, data science requires a different way of thinking than other types of science. A data scientist must be curious enough to explore their data thoroughly, exposing any patterns that are there. But a data scientist must also be skeptical enough to question every pattern that they find and to search for alternative explanations.

Above all, a data scientist must have a high tolerance for uncertainty. In many ways, data scientists are specialists in uncertainty. They do not work with proofs, like a mathematician, but with evidence that may or may not be reliable.

Given this ambiguity, you may wonder why anyone would practice data science. There are some very good reasons.

## Why do Data Science?

When most people think of science they think of experimental science, a very popular way to do research. Like data scientists, experimental scientists use observations to find natural laws. However, they use a different method to do this. They generally:

1. *Formulate a hypothesis* about a natural law. 

2. *Make a testable prediction* deduced from the hypothesis.

3. *Conduct an experiment* to test the prediction.

4. *Reject the hypothesis if the prediction is incorrect.* 

The experimental method provides a very useful way to understand data science because the experimental method is so widely known. You can think of data science as a complement to experimental science. Data science is good at doing the things experimental science is poor at (and poor at doing the things that experimental science is good at). 

### Discovery and confirmation

You may have noticed that the experimental method focuses on _confirmation_. An experimental scientist begins with a hypothesis and then focuses on disproving the hypothesis with observations. In theory, an experiment cannot prove that a hypothesis is true due to a philosophical problem known as the _Problem of Induction_, but in practice experiments provide strong support to hypotheses that are not rejected. Experimental scientists quickly winnow out false hypotheses from very plausible hypotheses.

On the other hand, the experimental method does not explain how scientists should find hypotheses to test. This leads to a philosophical problem of its own, the _Problem of Discovery_: researchers are left to their own devices to think up new and better hypotheses.

Data science solves the Problem of Discovery by providing an easy way to generate hypotheses. A researcher can begin with observations and search them for patterns that would suggest natural laws. On the other hand, data usually cannot prove or disprove a hypothesis as conclusively as a well designed experiment would.

### Causation vs. association

Experiments are designed to prove cause and effect relationships. In a typical experiment, a scientist will manipulate an _explanatory variable_ and observe a _response variable_ to see if and how it changes in response. While this occurs, the scientist will hold other variables (like temperature, humidty, etc.) constant to ensure that the observed effect can only have been caused by the response variable. This requires an amazing level of control, which can usually only be had in a laboratory setting. But it also provides very good proof that the explanatory variable actually caused the changes in the response variable.

Data science does not involve this level of control. As a result, data scientists can show that the values of two variables are associated, but data scientists cannot prove that one variable causes the other. If you've ever heard the phrase, "correlation does not imply causation," it applies here.

Since data science does not rely on a controlled environemnt, data scientists can discover non-causal associations that exist between variables in the real world. These associations provide useful information that you can use to make predictions about the real world. For example, x is associated with y even though x does not cause y. You would have a difficult time finding this relationship by manipulating x and watching y (or vice versa), but it is useful to know.

### Flexibility and control

(begin with an example to illustrate the competing strategies. Then explain the implications)

Experimental scientists often go to extremes to conduct experiments in a highly controlled environment. For example, an experimental scientist might artficially lower the temperature of a labratory to near absolute zero, the temperature at which molecular movement stops. Or he might travel into orbit, to conduct an experiment where the effect of gravity is weaker. 

This level of control is on purpose. Experimental scientists control the conditions of an experiment to eliminate the possibility that an alternative hypothesis affects the results.


Experiments are designed to test a hypothesis in a highly controlled environment. 

Experiment are designed to eliminate any alternative hypotheses.

### Association and causation

Data science is logistically easier. It is easier to build an experiment that manipulates physical objects, than one that manipulates national economies, or human lives. In fact, much of what we know about astronomy comes from analyzing data -- not experiments.


Data science cannot prove that a relationship is causal, it can only show that the value of two or more variables are correlated. You've probably heard the phrase "correlation does not necessitate causation." This applies here. Many reasons can exist for correlation between two variables. (By the way, if you've heard "correlation does not _imply_ causation," you've heard wrong. Correlation _should_ make you more suspicious that a causal relationship may exist between your variables.)

Experimental science is better suited for discovering and proving causation. An experiment allows you to manipulate one variable and to observe the effects that the manipulation causes. However, experimental science is less useful for observing non-causal associations between variables.

Non-causal relationships provide useful information and data science provides a way to spot such relationships.

So much data!

Other benefits as we will see. Data science makes it more simple to reason about a complex universe.


## Recap

Data scientists search for evidence of natural laws in the structure of data. If a natural law exists between a collection of variables, it will appear as a pattern in the data. 

However, there is no way to show beyond a doubt that a pattern is true. There will always be a chance that the results of data science are due to random coincidence—even if this chance is a small one. As a result, data science requires a different way of thinking than other methods of math and science. Data scientists must be curious enough to explore data thoroughly which will reveal patterns, but skeptical enough to allow for the possibility of coincidence.


John Tukey, one of the first data scientists, often compared data science to detective work. I like this metaphor because detective work is risky business, and so is data science. You may be surprised at how risky data science can be.

We are starting to learn that most published data science findings may be wrong. In 2012, Amgen determined that _only_ 6 of  53 "landmark" medical studies had results that could be reproduced. From a scientific point of view, this means that these studies should be considered unreliable, if not wrong. In 2011, the Bayer company found it could only reproduce 25% of published findings in cardiovascular disease, cancer, and women's health studies. Bayer shelved development of  two thirds of its new drug projects as a result. 

Data science goes wrong in other fields too. The 2008 Financial Crisis was enabled by a misapplication of the Gaussian copula, a data science technique. In another case, NASA analyzed global ozone data for seven years without noticing the hole in the ozone layer. The most famous data analysis failure probably happened in 1983. Engineers at Morton Thiokol, the builder of space shuttle booster rockets, predicted that the _Challenger_ would explode on launch. They had a chance to prevent the launch, but changed their minds after misreading data that proved them right.

Even famous statisticians can get data wrong. Sir Ronald Fisher invented much of modern statistics, but he spent the end of his career using data to show that cigarettes do not cause cancer. 

This doesn't mean you should avoid data. Looking at data will always create better understanding than ignoring it, but remember that data is not a cure-all. Good science also requires good reasoning and a knowledge of what you are up against. In other words, if you think of yourself as a detective, you should think of data as the mysterious blonde who walks into your office: sexy on the surface, murky and treacherous beneath. 
