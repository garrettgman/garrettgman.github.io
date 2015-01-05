---
layout: page
title: Foundations of Data Science - draft
weight: 3
---

O'Reilly publishes nine books on data science and one of them is named "What is Data Science?" When you open any of these books you should ask yourself what you are getting into. As a term, data science has come to mean several things. 

At one level, data science is a _body of knowledge_, a collection of useful information related to a specific task. For example, library science and managerial science are bodies of knowledge. Library science collects the best ways to run a library, and managerial science collects the best ways to run a business. Data science collects the best ways to store, retrieve, and manage data. As a result, a data scientist might know how to set up a hadoop cluster or run the latest type of non-relational database. This is probably what most people think of when they think of "data science," but this is not the type of data science that I will teach you.

At another level, data science is a way of doing science. Data scientists use data, models, and visualizations to make scientific discoveries, just as other scientists use experiments. In fact, you can think of data science as a _method_ of science that complements experimental science. Experimental scientists use the experimental method to solve scientific problems, and data scientists use the data science method. Many scientists use both. 

This book will teach you the method of data science. You will learn how to use data to make scientific discoveries, and to justify those discoveries once they are made. Along the way, you will learn how to visualize data, build models, and make predictions.

In this chapter, you will learn the strategy behind data science: data scientists search for evidence of natural laws in the structure of data. They then judge the strength of the evidence that they find. This strategy guides the techniques that you will learn in later chapters—techniques like data wrangling, exploratory data analysis (EDA), bootstrap sampling, and cross-validation.

## The scientific worldview

As a method of science, data science is based on two simple ideas. First, that the best way to learn about the word is to observe it. And second, that the universe operates according to natural laws. These ideas summarize the worldview shared by all scientists, and they provide a bit of vocabulary that will help us talk about data science.

A _natural law_ is a rule that describes a part of the natural world, like $$E = Mc^{2}$$ or $$F = MA$$. Natural laws help scientists understand, control, and make predictions about natural processes. 

You can write down a natural law as a relationship between variables. For example, $$E = Mc^2$$ is a natural law that states that the energy content of a system ($$E$$) is always equal to the mass of the system ($$M$$) multiplied by the speed of light squared ($$c^{2}$$). $$F = MA$$ is a natural law that explains that a force ($$F$$) exerted upon an object will cause the object to accelerate ($$A$$) at a rate proportional to the mass of the object ($$M$$), an insight that has many applications in the field of physics. 

Natural laws deal with variables, values, and observations. We use these terms in everyday speech, but they have a technical meaning when associated with science.

* A _variable_ is a quantity, quality, or property that can be measured. 

* A _value_ is the apparent state of a variable when you measure it. The value of a variable may change from measurement to measurement.

* An _observation_ is a set of values that are measured on multiple variables under similar (ideally identical) conditions. 

    You can think of an observation as a snapshot of the world. An observation shows what a group of variables looked like together for a brief moment before they changed. 

Natural laws deal with variables, but they operate on values that appear in the same observation. For example, the law $$F = MA$$ states that when you measure the force, mass, and acceleration associated with _the same_ particle _at the same time_, you will observe a trio of values such that

$$f_{1} = m_{1} * a_{1}$$  

or

$$f_{2} = m_{2} * a_{2}$$  

$$f_{3} = m_{3} * a_{3}$$  

and so on.

In the notation above, the lowercase letters denote specific values of the variables $$F$$, $$M$$, and $$A$$. Throughout the book, I will refer to variable names with a capital letter and individual values with a lower case letter. 

The subscripts denote which observation each of the values belongs to. If a set of values belongs to the same observation, it implies that the values were measured under similar conditions.

To see how this works, consider what the three observations above may represent. The observations may have been taken at three different times. For example, $$f_{1}$$, $$m_{1}$$, and $$a_{1}$$ may have been measured at time one, $$f_{2}$$, $$m_{2}$$, and $$a_{2}$$ measured at time two, and so on.  Alternatively, the observations may describe three different particles. For example, $$f_{1}$$, $$m_{1}$$, and $$a_{1}$$ may have been measured on one particle, $$f_{2}$$, $$m_{2}$$, and $$a_{2}$$ may may have been measured on a second particle, and $$f_{3}$$, $$m_{3}$$, and $$a_{3}$$ may have been measured on a third particle. 

Observations play a very important role in science. A natural law implies that a relationship will exist between values of variables that appear _in the same observation_. However, a natural law does not imply that a relationship will exist between values in _different_ observations. You wouldn't think that the force you exert on one object would equal the mass times the acceleration that you measure on a different object. Or, in the notation above, you wouldn't think that $$f_{1}$$ should equal $$m_{2}$$ times $$a_{2}$$. You would expect $$f_{1}$$ to equal $$m_{1}$$ times $$a_{1}$$. 

Natural laws provide a goal for science. Scientists attempt to discover natural laws and thereby explain natural phenomena. You can think of science as a collection of methods that use observations to discover natural laws. 

Data science is one of those methods. It uses a specific tool to reveal natural laws, and that tool is data.

## Data

A _data set_ is a collection of values that have been organized in a specific way: each value in a data set is associated with a variable and an observation. 

For example, you can use the values $$f_{1}$$, $$f_{2}$$, $$f_{3}$$, $$m_{1}$$, $$m_{2}$$, $$m_{3}$$, $$a_{1}$$, $$a_{2}$$, and $$a_{3}$$ to compose a data set, like the one below. 

obs | $$F$$     | $$M$$     | $$A$$    
--- | --------- | --------- | ---------
1   | $$f_{1}$$ | $$m_{1}$$ | $$a_{1}$$
2   | $$f_{2}$$ | $$m_{2}$$ | $$a_{2}$$
3   | $$f_{3}$$ | $$m_{3}$$ | $$a_{3}$$

Each value is associated with a variable as well as an observation. 

Now that you know the vocabulary of data science, let's learn the method. 

## Data Science

Data science begins with the structure of data. Recall that data sets contain values that are associated with variables and observations. This organization makes data sets particularly useful for discovering natural laws. If a natural law exists between the variables in a data set, the law will appear as a pattern that reoccurs in each observation. Or to put it more simply, natural laws appear as patterns in data.

In our example data set, the relationship described by the law $$F = MA$$ will be present in each observation. As a result, the data set will reveal what the natural law implies:

obs | $$F$$     | $$M$$     | $$A$$    
--- | --------- | --------- | ---------
1   | $$f_{1}$$ | $$= m_{1}$$ | $$\times \; a_{1}$$
2   | $$f_{2}$$ | $$= m_{2}$$ | $$\times \; a_{2}$$
3   | $$f_{3}$$ | $$= m_{3}$$ | $$\times \; a_{3}$$

This is easy to verify if you measure the real forces, masses, and accelerations associated with several dozen particles, like in the data set below. Each row of values displays the relationship $$F = MA$$.

obs | $$F$$     | $$M$$     | $$A$$    
--- | --------- | --------- | ---------
1   | $$3.01$$ | $$0.98$$ | $$3.08$$
2   | $$2.35$$ | $$0.91$$ | $$2.58$$
3   | $$5.57$$ | $$1.01$$ | $$5.52$$
4   | $$0.62$$ | $$1.09$$ | $$0.56$$
5   | $$4.15$$ | $$0.89$$ | $$4.69$$
6   | $$5.07$$ | $$1.05$$ | $$4.84$$
7   | $$7.56$$ | $$0.93$$ | $$8.12$$
8   | $$4.04$$ | $$1.09$$ | $$3.70$$
...   | $$...$$ | $$...$$ | $$...$$

This phenomenon is the heart of data science. You can discover a natural law by collecting data and exploring the data for patterns. Patterns can be difficult to notice in raw data, but you can optimize how you search for patterns. 

First, you can visualize raw data to make patterns easier to spot. For example, the pattern between $$F$$, $$M$$, and $$A$$ becomes easy to spot when you visualize the data with a three dimensional, or even a two dimensional, graph.

![](/images/fma.png)

Second, you can use a computer algorithm to search for patterns within data, which is exactly what data scientists do when they use statistical modeling or machine learning techniques.

Searching for patterns in data is a fairly robust way to find laws between variables. There are only a couple of things that can prevent you from finding a law when it exists, but neither needs to be a cause for defeat.

First, your values may be contaminated by measurement errors, (in other words, your data may be inaccurate). In this case, the errors will add noise to your data. As long as the errors are relatively small, a law will emerge as a discernable, but noisy pattern.

You can see measurement errors at work in the graph below. The graph on the left displays values such that $$Y = X$$, but the measurements were made in a sloppy fashion that resulted in inaccurate values. The graph on the left displays the same data after the measurement errors have been corrected. Notice that you can still perceive the underlying pattern even when it has been contaminated by measurement errors.

![](/images/xy.png)

Second, your data may not contain every variable in a law (in other words, your data may be incomplete). In this case, a pattern will still exist between the variables that you have measured. The influence of the missing variables will appear as noise in the pattern. You can see this happen in the two dimensional graph between $$F$$ and $$A$$. The $$M$$ variable adds noise to the pattern between $$F$$ and $$A$$, but the pattern is still discernable.

![](/images/fa.png)

As long as you capture the most influential variables in a law, and do not let measurement errors get so big that they swamp your data, you are likely to find a pattern in your data that will point to the law.

You now know the basis of data science. Data scientists search for evidence of natural laws by looking for patterns in data. This may sound simple, but in practice it is slightly more complicated. You will face two challenges when you search for evidence of natural laws.

First, patterns can be difficult to discover. Some patterns are subtle (or complicated), and others come filtered through the noise of measurement errors and missing variables. As a data scientist, you can use the techniques of exploratory data analysis (EDA) to discover hard to spot patterns. You can transform or visualize your data to make patterns more apparent, or you can use statistical modeling to help spot a pattern admidst noise.

The second challenge is a little more difficult. Sometimes data sets display patterns that do not exist in real life. These patterns are illusions and lead to false results. How can you tell whether the patterns that you do find are real and not an illusion? Before we answer that question, let's examine why a data set might contain patterns that do not exist in real life.

## Sampling

Most data sets are much smaller than they could be. For example, if you wanted to research a question like, "How is an adult's height related to their age?," you could collect a very big data set: the measurements of every single adult on the planet. But that wouldn't be necessary. A pattern between height and age would become clear well before you finish measuring every adult on the planet (and if it doesn't, a pattern between your data collection efforts and your quality of life certainly would).

Data scientists refer to the universe of possible observations that could be collected as a _population_, and the set of observations that are actually collected as a _sample_. The process of collecting a sample of data is known as _sampling_, and it has important consequences for data science. Sampling opens the door for illusions to creep into a data set. 

Consider the two data sets visualized below. 

![](/images/heights-all.png)

The graph on the left shows the relationship between the $$age$$ and $$height$$ of 1000 adults. In adults, these two variables are not closely related. As a result, the points appear as an unstructured cloud, with no patterns.

The graph on the right displays the relationship between $$height$$ and $$weight$$ for the same adults. An adult's height is related to their weight, and the data points display a pattern as a result. The pattern is noisy because other variables (such as diet and exercise) also play a role in a person's weight, and their effect appears here as noise in the pattern.

Let's do a simple thought experiment. Imagine that these 1000 adults are the only adults on the planet. In other words, imagine that these data sets display the entire population of adults. Now suppose that you only observed 50 of these adults. What would your data look like?

We can randomly select 50 of the data points above to see. More than likely, the 50 points would display a less dense, but still unstructured cloud on the left and a less dense, but still noticeable pattern on the right. For example, here are 50 points randomly selected from the original data sets.

![](/images/heights-random.png)

However, by coincidence you might collect 50 observations that display an illusion. For example, any of the collections below would suggest that a natural law exists between $$height$$ and $$age$$. 

![](/images/heights-age.png)

And any of the collections below would suggest that a natural law does not exist between $$height$$ and $$weight$$—or worse, the last pattern suggests that an inverse relationship exists between $$height$$ and $$weight$$. 

![](/images/heights-weight.png)

These patterns are illusions. They are not caused by natural laws, they are caused by omission and coincidence. We did not collect all of the possible observations (which would've shown the true pattern). The observations that we did collect happened to make an unusual set. 

Notice how diabolical this situation can be. The individual measurements in each of these samples are correct, and yet the patterns displayed by the measurements do not exist in real life.

Due to sampling effects, data sets often display patterns that do not exist in real life, which creates a challenge for data scientists. As a data science, your main source of evidence for natural laws will be patterns (or descriptions of patterns) that you find in data. Will you be able to tell when your patterns are caused by natural laws and when they are caused by sampling effects?

In theory, there is no way to use a data set to determine whether the patterns contained in the data exist in real life. Or, more precisely, there is no way to determine _with absolute certainty_ whether the patterns exist in real life.

In practice, there _is_ a way forward. You can calculate the probability that a pattern is the result of random chance. 

## Probability

_Probability_ is the branch of mathematics that describes random behavior. We will take a look at probability later in the book, but for now let's consider how you can use probability to spot real patterns.

Recall that sampling is the source of illusions when illusions appear in your data. In other words, which observations you decide to collect will determine which patterns you see (if any).

If you use a random method to select observations, then random chance will be the only mechanism that could cause sampling effects to appear in the data. You could then calculate the probability that a pattern in the data is a result of random chance, and not a natural law.

This system reduces patterns in data from _proofs_ of natural laws to _evidence_ of natural laws. Each pattern that you find is evidence of a natural law. If the pattern is likely to be caused by random chance, then the evidence is weak. If the pattern is not likely to be caused by random chance, then the evidence is strong. 

A probability calculation will tell you exactly how weak or how strong your evidence is. As a data scientist, you will need to decide for yourself how strong the evidence must be before you are willing to believe it.

It is important to realize that probability does not eliminate the uncertainty associated with patterns. There will always be a small possibility that even the most striking patterns are caused by random chance. Probability calculations do not eliminate this possibility; they quantify it, which makes it easier for you to reason about your evidence.

Data scientists use probability calculations to augment the simple system of discovery presented by data. This arrangement creates the method of data science, which can be described with a basic outline.

## The Method of Data Science

Data scientists search for evidence of natural laws in the structure of data. They then judge the strength of the evidence that they find. To do this, they:

1. **Collect data** in a way that minimizes the chance that patterns will appear by coincidence. Often this involves some type of random selection.

2. **Search for patterns** that provide evidence of natural laws. During this search a data scientist will often:
    + **Wrangle data** - make patterns more apparent by reshaping, subsetting, or transforming the data.
    + **Visualize data** - display data in a graph, which exposes patterns to the human visual system.
    + **Model data** - search for patterns with computer algorithms that can be automated, calibrated, and optimized.

3. **Judge patterns** - calculate the probability that a pattern is due to coincidence, and not a natural law. You can view this step as measuring the strength of the evidence provided by an analysis.

Data science requires a different way of thinking than other types of science because the evidence provided by a data set may be unreliable. A data scientist must be curious enough to explore their data thoroughly, exposing any patterns that are there, but a data scientist must also be skeptical enough to question every pattern that they find and to search for alternative explanations.

Above all, a data scientist must have a high tolerance for uncertainty. In many ways, data scientists are specialists in uncertainty. They do not work with proofs, like a mathematician, but with evidence that may or may not be reliable.

Given this ambiguity, you may wonder why anyone would practice data science. There are some very good reasons.

## Why do Data Science?

Data science complements other methods of scientific inquiry. To see the strengths of data science, let's compare it to experimental science, a well known way to do science. To summarize loosely, experimental scientists use the following method to learn about natural laws:

1. *Formulate a hypothesis* about a natural law. 

2. *Make a testable prediction* deduced from the hypothesis.

3. *Conduct an experiment* to test the prediction.

4. *Reject the hypothesis* if the prediction is incorrect. 

### Discovery and confirmation

You may notice that the experimental method begins with a hypothesis and then uses observations to test the hypothesis. This approach makes the experimental method very good for _confirming_ hypotheses. Experimental scientists can quickly winnow false hypotheses from very plausible hypotheses.

However, the experimental method does not answer a very important question: how should scientists think up useful hypotheses to test? Data science provides the answer. A scientist can begin with observations and then search them for patterns that suggest hypotheses about natural laws. In short, data science provides a system of discovery for scientists to use. 

### Causation and prediction

Experiments are designed to show causation, a specific type of relationship between variables. An experimenter manipulates an _explanatory variable_ to observe the effect that the manipulation causes in a _response variable_. This design makes experiments less effective at discovering non-causal relationships.

Why would you want to discover a non-causal relationship? Whenever a relationship exists between variables, you can use the relationship to make better predictions. You can use the value of one variable to predict the value of another variable that it is related to. This works even if the relationship is a non-causal correlation.

Consider, for example, how Netflix knows which movies you will like. By studying data, Netflix has learned that people who like _The Matrix_ also tend to like _The Terminator_ and vice versa. This relationship is very useful, but it is not causal: your opinion of _The Matrix_ does not cause your opinion of the _The Terminator_.

In contrast to experimental science, data science makes it easy to spot any type of relationship between variables. Data science will expose both non-causal and causal relationships as patterns in the data. Data science will not tell you which relationships are causal and which are not, but if you are only interested in making accurate predictions, you may not mind.

### Flexibility and control

Consider for a moment why experiments prove causation. An experimenter does more than manipulate an explanatory variable to see the effect on a response variable. An experimenter also holds constant any other variable that could influence the response during the experiment. For example, an experimenter will ensure that the temperature, humidity, local magnetic fields, etc. do not fluctuate during an experiment.

As a result, the experimenter can rule out the posibility that something other than the explanatory variable caused the effect in the response variable. This method is almost foolproof, but it requires a tremendous amount of control over the process being studied. 

In many research settings, this amount of control is impossible or unethical. For example, you could not control each of the variables that influences something like the stock market, or a nation's economy. Nor should you control things like how much alcohol a pregnant woman ingests or how much pollution an asthmatic inhales if doing so would cause unnecessary harm to a person.

Data science requires much less control than experimental science, which makes data science adaptable to a broader range of research questions.

## Summary and Parting Advice

The method of data science is very simple and very effective. Data scientists search for evidence of natural laws in the structure of data. If a natural law exists between the variables in a data set, it will appear as a pattern in the data.

This method is very useful for discovering laws and for collecting information that can lead to better predictions. Moreover, you can apply data science to any situation in which you can collect data.

But data can be very deceptive. Coincidences—or biases—that occur when you collect your data can introduce patterns into your data that do not occur in real life. We are starting to learn just how unprepared previous data scientists have been to deal with this.

In 2012, Amgen determined that _only_ 6 of  53 "landmark" medical studies had results that could be reproduced. From a scientific point of view, this means that these studies should be considered unreliable, if not wrong. In 2011, the Bayer company found it could only reproduce 25% of published findings in cardiovascular disease, cancer, and women's health studies. Bayer shelved development of  two thirds of its new drug projects as a result. 

Even famous statisticians can get data wrong. Sir Ronald Fisher invented much of modern statistics, but he spent the end of his career using data to show that cigarettes do not cause cancer. 

This doesn't mean you should avoid data. Looking at data will always create better understanding than ignoring it, but remember that data is not a cure-all. Good science also requires good reasoning and a knowledge of what you are up against. 

John Tukey, one of the first data scientists, often compared data science to detective work. I like this metaphor because detective work is risky business, and so is data science. But I would extend the metaphor further: if you think of yourself as a detective, you should think of data as the mysterious blonde who walks into your office: sexy on the surface, murky and treacherous beneath. 
