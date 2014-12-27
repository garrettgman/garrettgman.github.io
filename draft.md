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

Science is based on two simple ideas. First, that the best way to learn about the word is to observe it. And second, that the universe operates according to _natural laws_. 

A natural law is a law-like relationship between variables, like $$E = Mc^{2}$$ and $$F = MA$$. Natural laws explain how the values of variables relate to each other, which can help scientists understand, control, and make predictions about natural processes.

For example, the natural law $$E = Mc^2$$ states that the energy content of a system ($$E$$) is always equal to the mass of the system ($$M$$) multiplied by the speed of light squared ($$c^{2}$$). $$F = MA$$ explains that the force exerted upon an object ($$F$$) is equal to the mass of the object ($$M$$) multiplied by its acceleration ($$A$$), an insight that has many applications in the field of physics. 

Natural laws deal with variables, values, and observations. We use these terms in everyday speech, but they have a technical meaning when associated with science.

* A _variable_ is a quantity, quality, or property that can be measured. 

* A _value_ is the apparent state of a variable when you measure it. The value of a variable may change from measurement to measurement.

* An _observation_ is a set of measurements that are made on multiple variables under similar (ideally identical) conditions. 

    You can think of an observation as a snapshot of the world. An observation shows what a group of variables looked like together for a brief moment before they changed. 

Natural laws deal with variables, but they operate on values that appear in the same observation. For example, the law $$F = MA$$ states that when you measure a particle's force, mass, and acceleration _at the same time_, you will observe a trio of values such that

$$f_{1} = m_{1} * a_{1}$$  

$$f_{2} = m_{2} * a_{2}$$  

$$f_{3} = m_{3} * a_{3}$$  

and so on.

In the notation above, the lowercase letters denote specific values of the variables $$F$$, $$M$$, and $$A$$. Throughout the book, I will refer to variable names with a capital letter and individual values with a lower case letter. 

The subscripts denote the conditions associated with each measurement. For example, the subscript could denote the occaision on which each measurement was made. The measurements $$f_{1}$$, $$m_{1}$$, and $$a_{1}$$ could have been measured at time one, and measurements $$f_{2}$$, $$m_{2}$$, and $$a_{2}$$ could have been measured at time two. Or the subscripts could denote which particle each of the measurments were made on. The measurements $$f_{1}$$, $$m_{1}$$, and $$a_{1}$$ could describe a particle of gold, while the measurements $$f_{2}$$, $$m_{2}$$, and $$a_{2}$$ could describe a different particle, perhaps an atom of Oxygen. If two variables have the same subscript, it implies that they are measured under identical conditions; or in other words, that they are measured as part of the same observation. 

A natural law implies that a relationship will exist between values _in the same observation_. This is a very important point. A natural law _does not_ imply that a relationship will exist between values in _different_ observations. You wouldn't think that the force you exert on particle one, would equal the mass times the acceleration that you measure on particle two. In other words, $$f_{1}$$ will be related to $$m_{1}$$ and $$a_{1}$$, but it may not be related to $$m_{2}$$ and $$a_{2}$$. 

Natural laws provide a goal for science. Scientists attempt to discover natural laws and thereby explain natural phenomena. You can think of science as a collection of methods that use observations to discover natural laws. Data science is one of those methods. It uses a specific tool to reveal natural laws, and that tool is data.

_note: explain data first. Then introduce experimental science as a way to motivate "Why do data science?"_

***
## Newton's Second Law

I'll use this second law as an example throughout the rest of the chapter, so let's make sure we understand it. $$F = MA$$ is the second of Newton's three laws of motion. These three rules explain how the physical universe behaves, and you've probably heard of them before. 

The first law of motion states that an object at rest (or in motion) will stay at rest (or in motion) until a force acts upon it. 

The second law explains how the motion of an object will change when a force is applied. A force will cause an object to speed up or slow down according to the relationship $$F = MA$$. Here is how that plays out in real life. If you were to compete in an olympic shotput event, you would begin by holding a shotput ball at rest next to your chin. Next you would launch the ball forward with your arm. This applies a force ($$F$$) to the ball which causes the ball to accelerate ($$A$$). Since shotput balls are massive ($$M$$), you won't be able to make it accelerate very fast ($$A = \frac{F}{M}$$). As a result, the shotput travels at a fairly slow speed and does not go very far before gravity causes it to fall to the ground.

You could repeat this event with a softball. A softball is about the same size as a shotput, but has much less mass ($$M$$). As a result, you can accelerate it to a much greater speed than a shotput even if you use the same amount of force to throw it. This will cause the softball to travel farther before gravity brings it to the ground.

It would take very little engineering to measure the force, acceleration, and mass involved in each of these throws. As a result, we could collect data about Newton's Second Law. 

***

## Experimental science

When most people think of science they think of experimental science, a very popular method for discovering natural laws. To conduct experimental science, you employ a method that follows these general steps:

1. *Formulate a hypothesis* about a natural law. Experimental science does not suggest how to formulate a hypothesis. An idea may occur to you as you familiarize yourself with the subject.

2. *Make a testable prediction* deduced from your hypothesis your hypothesis. Identify an implication of your hypothesis that you can test with an experiment. The prediction should be such that it can only be false if the hypothesis itself were false.

3. *Conduct an experiment* to test the prediction.

4. *Reject the hypothesis if the prediction is disproven.* 

If the experiment 

Like data scientists, experimental scientists use a simple strategy to discover natural laws with observations. 

The experimental method is well known, easy to understand, and a revealing counter-example to data science. Throughout this book, I will 

Experimental science is helpful for a data scientist to know.
This is experimental science
Experimental science is so popular that it is sometimes called the scientific method.
But data science is also a scientific method. 
It relies on a different tool, data.

You may know the experimental method by a different name, _the scientific method_, but this name is a misnomer. Experimental science is not the only method of scientific investigation. Data science is another method that complements and augments experimental science. 

Un


The experimental method is the oldest and most widely practiced method of science, but it is just _a_ scientific method. Data science is another. However, the experimental method makes it easy to understand 

Data science complements and augments experimental science.  It is much easier to understand data science if you first understand this older method.

The experimental method is called _the_ scientific method, but it is not the only scientific method. Data science is another. However, the experimental method provides a useful way to understand the data science method. 


Data science is one of those methods. It uses a specific tool to reveal natural laws, and that tool is data.


We will examine this type of data in a moment.

![figure]()

Natural laws provide a goal for science. Scientists attempt to discover natural laws and thereby explain natural phenomena. You can think of science as a collection of methods that use observations to discover natural laws. The most well known of these methods is the experimental method.

The experimental method provides a way for scientists to test hypotheses about natural laws. A scientists begins by conjecturing a hypothesis. He or she then deduces testable predictions that are implied by the hypothesis. These predictions should be connected to the hypothesis in a specific way: the hypothesis cannot be true unless the prediction is also true. Next, the scientist devises an experiment that will test the prediction. If the experiment disproves the prediction, then the scientist rejects the hypothesis. If the experiment, corroborates the prediction, the scientist retains the hypothesis and looks for other ways to test it.

If a scientist cannot prove their hypotheses after many trials, they begin to treat it as a law and conduct more experiments to see under which conditions the law holds true (and under which it does not).

![figure]()

Experimental science is a very successful and widely practiced method of science. It is also very easy to understand. In fact, western schools teach experimental science to elementary students, where it is called "the scientific method." But experimentals science is not the only method of doing science. 

I will highlight differences between experimental science and data science throughout the book. Experimental science provides a very useful way to understand data science because the experimental method is so widely known.

Data science is another method. When scientists do experimental science they begin with a hypothesis about a law and then test the hypothesis against observations. When scientists do data science, they begin by collecting observations. They then search the observations for evidence of natural laws. Data scientists rely on a a specific tool to reveal natural laws, and that tool is data. Data sets are collections of measurements that share a structure similar to the structure of natural laws.

# Natural laws

Recall that laws describe relationships between variables. Natural laws deal with variables, values, and observations. We use these terms in everyday speech, but they have a technical meaning when associated with data science.

* A _variable_ is a quantity, quality, or property that can be measured. 

* A _value_ is the apparent state of a variable when you measure it. The value of a variable may change from measurement to measurement.

Laws explain how the values of different variables will relate to each other when you measure them.

But laws do not mandate that every pairing of values will relate to each other. Imagine that you throw a shotput ball, a softball, and a baseball. On each throw you measure the force, mass, and acceleration involved and observe the following relationships.

$$f_{1} = m_{1} * a_{1}$$  

$$f_{2} = m_{2} * a_{2}$$  

$$f_{3} = m_{3} * a_{3}$$  

In the notation above, the lowercase letters denote specific values of the variables $$F$$, $$M$$, and $$A$$. Throughout the book, I will refer to variable names with a capital letter and individual values with a lower case letter. The subscripts denote when we measure each variable. $$f_{1}$$ is the value of $$F$$ that we measure on occasion one, and $$f_{2}$$ is the value of $$F$$ that we measure on occasion two.

A natural law implies that a relationship will exist between values under certain conditions. However, natural laws do not imply that a relationship will exist between every set of values. You wouldn't think that if you measure the force that you apply to a shotput ball, it will equal the mass times the acceleration that you measured on the softball. In other words, $$f_{1}$$ will be related to $$m_{1}$$ and $$a_{1}$$, but it may not be related to $$m_{3}$$ and $$a_{3}$$. 

Laws only describe values that are measured under the same conditions. For example, the values may all be measured on the same object, or all measured at the same time. A collection of values measured under similar conditions are called an _observation_. Observations are the units that laws describe.


* An _observation_ is a set of measurements that are made on multiple variables under similar (ideally identical) conditions. 

    You can think of an observation as a snapshot of the world. An observation shows what a group of variables looked like together for a brief moment before they changed. 

These three concepts, values, variables, and observations, provide a structured way to think about laws and their effects. Natural laws describe values of variables that are measured in the same observation. 

# Data

Data sets share this structure. Data sets are organized around values, variables, and observations. They contain values that are associated with variables and arranged into observations. As a result, natural laws appear as patterns in a data set. You can discover laws by discovering patterns, which is the heart of data science. Data science searches for evidence of natural laws in the structure of data.

Data science provides a system for discovery. Search for patterns in data. Moreover, the system that data science provides can be optimized. You can make patterns easier to spot by visualizing your data. Or you can search for them with computer guided algorithms.

# Uncertainty

Data science complements experimental science and is an essential tool in a scientist's tool kit. Data science is good at doing the things experimental science is poor at (and poor at doing the things that experimental science is good at). However, data science requires a different way of thinking than experimental science. If you are familiar with experimental science, but not data science, there is one large difference you should be aware of. Proof.