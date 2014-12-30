---
layout: page
title: Foundations of Data Science - draft
weight: 3
---

O'Reilly publishes nine books on data science and one of them is named "What is Data Science?" When you open any of these books you should ask yourself, "What am I getting into?" As a term, data science has come to mean several things. 

At one level, data science is a _body of knowledge_, a collection of useful information related to a specific task. For example, library science and managerial science are bodies of knowledge. Library science collects the best ways to run a library, and managerial science collects the best ways to run a business. Data science collects the best ways to store, retrieve, and manage data. As a result, a data scientist might know how to set up a hadoop cluster or run the latest type of non-relational database. This is probably what most people think of when they think of "data science," but this is not the type of data science that I will teach you.

At another level, data science is a way of doing science. Data scientists use data, models, and visualizations to make scientific discoveries, just as other scientists use experiments. In fact, you can think of data science as a _method_ of science that complements experimental science. Experimental scientists use the experimental method to solve scientific problems, and data scientists use the data science method. Many scientists use both. 

This book will teach you the method of data science. You will learn how to use data to make scientific discoveries, and to justify those discoveries once they are made. Along the way, you will learn how to visualize data, build models, and make predictions.

This chapter introduces the strategy behind data science: _data scientists search for evidence of natural laws in the structure of data_. This strategy guides the techniques that you will learn in later chapters—techniques like data wrangling, data modelling, and data visualization.

## The scientific worldview

As a method of science, data science is based on two simple ideas. First, that the best way to learn about the word is to observe it. And second, that the universe operates according to _natural laws_. 

A natural law is a rule that describes how the values of variables relate to each other, which can help scientists understand, control, and make predictions about natural processes. 

You can write down a natural law as a relationship between variables, like $$E = Mc^{2}$$ and $$F = MA$$. The natural law $$E = Mc^2$$ states that the energy content of a system ($$E$$) is always equal to the mass of the system ($$M$$) multiplied by the speed of light squared ($$c^{2}$$). The natural law $$F = MA$$ explains that the force exerted upon an object ($$F$$) will cause the object to accelerate ($$A$$) at a rate proportional to the mass of the object ($$M$$), an insight that has many applications in the field of physics. 

Natural laws deal with variables, values, and observations. We use these terms in everyday speech, but they have a technical meaning when associated with science.

* A _variable_ is a quantity, quality, or property that can be measured. 

* A _value_ is the apparent state of a variable when you measure it. The value of a variable may change from measurement to measurement.

* An _observation_ is a set of measurements that are made on multiple variables under similar (ideally identical) conditions. 

    You can think of an observation as a snapshot of the world. An observation shows what a group of variables looked like together for a brief moment before they changed. 

Natural laws deal with variables, but they operate on values that appear in the same observation. For example, the law $$F = MA$$ states that when you measure the force, mass, and acceleration associated with a particle _at the same time_, you will observe a trio of values such that

$$f_{1} = m_{1} * a_{1}$$  

$$f_{2} = m_{2} * a_{2}$$  

$$f_{3} = m_{3} * a_{3}$$  

and so on.

In the notation above, the lowercase letters denote specific values of the variables $$F$$, $$M$$, and $$A$$. Throughout the book, I will refer to variable names with a capital letter and individual values with a lower case letter. 

The subscripts denote which observation each of the measurements belongs to. If a set of measurements belongs to the same observation, it implies that the measurements were made under similar conditions.

To see how this works, consider what the three observations above represent. The observations may have been taken at three different times. $$f_{1}$$, $$m_{1}$$, and $$a_{1}$$ may have been taken at time one, $$f_{2}$$, $$m_{2}$$, and $$a_{2}$$ taken at time two, and so on.  Alternatively, the observations may describe three different particles. $$f_{1}$$, $$m_{1}$$, and $$a_{1}$$ may describe one particle, $$f_{2}$$, $$m_{2}$$, and $$a_{2}$$ may describe a second particle, and $$f_{3}$$, $$m_{3}$$, and $$a_{3}$$ may describe a third particle. 

Observations play a very important role in science. A natural law implies that a relationship will exist between values _in the same observation_. However, a natural law _does not_ imply that a relationship will exist between values in _different_ observations. You wouldn't think that the force you exert on one particle, would equal the mass times the acceleration that you measure on a different particle. Or, in the notation above, you wouldn't expect $$f_{1}$$ to equal $$m_{2}$$ times $$a_{2}$$. You would expect $$f_{1}$$ to equal $$m_{1}$$ times $$a_{1}$$. 

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

Each value is associated with a variable, as well as an observation. This organization makes data sets particularly useful for discovering natural laws. Data sets display _values of variables that appear in the same observations_, and natural laws describe the relationship between _values of variables that appear in the same observations_. As a result, natural laws appear as patterns in data.

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

This method of discovering natural laws forms the basis of data science. Data scientists search for evidence of natural laws in the structure of data. This process may sound simple, but success is not guaranteed. It takes expertise and judgement to search for patterns in a productive way.

Data science also requires expertise and judgement in a second, more important way.

## Uncertainty

John Tukey, one of the first data scientists, often compared data science to detective work. I like this metaphor because detective work is risky business, and so is data science. You may be surprised at how risky data science can be.

We are starting to learn that most published data science findings may be wrong. In 2012, Amgen determined that _only_ 6 of  53 "landmark" medical studies had results that could be reproduced. From a scientific point of view, this means that these studies should be considered unreliable, if not wrong. In 2011, the Bayer company found it could only reproduce 25% of published findings in cardiovascular disease, cancer, and women's health studies. Bayer shelved development of  two thirds of its new drug projects as a result. 

Data science goes wrong in other fields too. The 2008 Financial Crisis was enabled by a misapplication of the Gaussian copula, a data science technique. In another case, NASA analyzed global ozone data for seven years without noticing the hole in the ozone layer. The most famous data analysis failure probably happened in 1983. Engineers at Morton Thiokol, the builder of space shuttle booster rockets, predicted that the _Challenger_ would explode on launch. They had a chance to prevent the launch, but changed their minds after misreading data that proved them right.

Even famous statisticians can get data wrong. Sir Ronald Fisher invented much of modern statistics, but he spent the end of his career using data to show that cigarettes do not cause cancer. 

What went wrong in each of these cases? In some scenarios, the researchers failed to find a pattern that was there in the data. In others, scientists were mislead by complicated techniques that masked the simple core of data science.

However, a third reason for failure lurks whenever you analyze data: data sets often display patterns that do not exist in real life.

If you think of yourself as a detective, you should think of data as the mysterious blonde who walks into your office: sexy on the surface, murky and treacherous beneath. 

This doesn't mean you should avoid data. Looking at data will always create better understanding than ignoring it, but remember that data is not a cure-all. Good science also requires good reasoning and skepticism. 

Data provides a useful way to discover natural laws, but the system is not foolproof. Natural laws are not the only things that create patterns in data. A pattern can also be the result of coincidence.

For example, consider the data points below. The points fall in an unstructured cloud, which suggests that there is no systematic relationship, or law, between $$X$$ and $$Y$$.

[graph]

But what would happen if you collected only ten of these mesurements? More than likely, the ten measurements would not display a pattern, but by coincidence you might collect ten measurements that do display a pattern. For example, the ten points on the right display a pattern between $$X$$ and $$Y$$. The pattern suggests that a natural law exists between $$X$$ and $$Y$$ of the form $$Y = X$$.

[graph]

In practice, there is no way to use a data set to determine with absolute certainty whether the patterns contained in the data set result from laws or coincidences. However, you can use the tools of probability to estimate how likely or unlikely a pattern is to result from coincidence.

Data scientists use these tools to augment the simple system of discovery presented by data. This arrangement creates the method of data science, which can be described with this basic outline:

Together these concerns provide a basic outline of data science. Data scientists search for evidence of natural laws in the structure of data, and then judge the strength of the evidence that they find. To do this, they:

1. **Collect data** in a way that minimizes the chance of coincidence.
2. **Search for patterns** that provide evidence of natural laws. Often this search involves:
    + **Wrangling data** - making patterns more apparent by reshaping the data, subsetting the data, transforming variables, and calculating summary statistics.
    + **Visualizing data** - displaying data in a graph, which exposes patterns to the human visual system.
    + **Modelling data** - searching for patterns with computer algorithms that can be automated, calibrated, and optimized.

3. **Judge patterns** - calculate the probability that a pattern is due to coincidence, and not a natural law. You can view this step as measuring the strength of the evidence provided by an analysis.

Because the evidence prvided by a data set may be unreliable, data science requires a different way of thinking than other types of science. Most data science findings are uncertain. They may suggest one conclusion or another, but they often cannot prove that a conclusion is true beyond the shadow of a doubt. As a result, data scientists must always remain skeptical and search for counter explanations.

Given this ambiguity, you may wonder why anyone would practice data science. There are some very good reasons.

## Why do Data Science?

When most people think of science they think of experimental science, a very popular method for discovering natural laws. 

Like data scientists, experimental scientists use a simple strategy to discover natural laws with observations. To conduct experimental science, you employ a method that follows these general steps:

1. *Formulate a hypothesis* about a natural law. Experimental science does not suggest how to formulate a hypothesis. An idea may occur to you as you familiarize yourself with the subject.

2. *Make a testable prediction* deduced from your hypothesis your hypothesis. Identify an implication of your hypothesis that you can test with an experiment. The prediction should be such that it can only be false if the hypothesis itself were false.

3. *Conduct an experiment* to test the prediction.

4. *Reject the hypothesis if the prediction is disproven.* 

Experimental science has a track record of success, and delivers results that are foolproof. As a result, you may wonder why anyone should bother with data science.

Data science complements experimental science and is an essential tool in a scientist's tool kit. Data science is good at doing the things experimental science is poor at (and poor at doing the things that experimental science is good at). 

Data science is logistically easier. It is easier to build an experiment that manipulates physical objects, than one that manipulates national economies, or human lives. In fact, much of what we know about astronomy comes from analyzing data -- not experiments.

Experimental science: hypothesis -> observation  
Data science: observation -> hypothesis  

Experimental science revolves around hypotheses. An experimental scientist attempts to disprove hypotheses. However, experimental scientists does not have much to say about how to develop hypotheses to test. Philosophers of Scientists have wrestled with this problem since the beginning of science. How do scientists discover hypotheses to test. Karl Popper, one of the most influential philosophers, decided that discovery is a matter of inspiration.

Data science cannot prove that a relationship is causal, it can only show that the value of two or more variables are correlated. You've probably heard the phrase "correlation does not necessitate causation." This applies here. Many reasons can exist for correlation between two variables. (By the way, if you've heard "correlation does not _imply_ causation," you've heard wrong. Correlation _should_ make you more suspicious that a causal relationship may exist between your variables.)

Experimental science is better suited for discovering and proving causation. An experiment allows you to manipulate one variable and to observe the effects that the manipulation causes. However, experimental science is less useful for observing non-causal associations between variables.

Non-causal relationships provide useful information and data science provides a way to spot such relationships.

So much data!
Other benefits as we will see. Data science makes it more simple to reason about a complex universe.


I will highlight differences between experimental science and data science throughout the book. Experimental science provides a very useful way to understand data science because the experimental method is so widely known. The experimental method is well known, easy to understand, and a revealing counter-example to data science.

## Recap

Data scientists search for evidence of natural laws in the structure of data. If a natural law exists between a collection of variables, it will appear as a pattern in the data. 

However, there is no way to show beyond a doubt that a pattern is true. There will always be a chance that the results of data science are due to random coincidence—even if this chance is a small one. As a result, data science requires a different way of thinking than other methods of math and science. Data scientists must be curious enough to explore data thoroughly which will reveal patterns, but skeptical enough to allow for the possibility of coincidence.

