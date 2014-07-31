---
layout: page
title: Foundations of Data Science
weight: 3
---

Data science is a _method_ of science. This sets it apart from other fields that are _branches_ of science. A branch of science uses scientific techniques to study a single subject. For example, physicists study physical systems, chemists study chemical systems, and computer scientists study computation. But data science is different.  

Data scientists study a method that anyone can use to solve scientific problems. You can think of data science as a complement to experimental science. Experimental scientists use the experimental method to solve scientific problems, and data scientists use the data science method. Many scientists use both.

This chapter will describe the problems that data scientists attempt to solve, as well as the methods that they use to solve them. It introduces data science as a specific method of reasoning that addresses the questions "What can you know?" and "How can you know it?" This method of reasoning guides the techniques that you will learn in later chapters—techniques like machine learning, statistical modelling, and visualization.

### Science

Data science is a method of reasoning that is guided by the general features of science. Scientists study and answer questions about the natural world, which makes them experts in a specific type of problem.

Consider a statement like, "All bachelors are unmarried." Is the statement true? How can you tell? 

You can reason about some statements by analyzing the concepts and relationships that they deal with. Bachelors are unmarried by definition, which means that the statement must be true.

The same type of reasoning applies to the mathematical statement, $\sum mx = m \sum x$. You can determine the truth of the statement by analyzing the terms and relationships within the statement. 

This type of reasoning is known as _a priori_ reasoning, reasoning that does not rely on observation or experience. The statements are examples of _a priori_ knowledge, knowledge that can be proven without looking at evidence from observation or experience. Philosphers and mathematicians specialize in a priori reasoning, but it is not what scientists do. Scientists may use a priori reasoning from time to time, but they specialize in a more daring type of reasoning.

Consider a statement like, "There is a hole in the ozone layer." Is there anything about the statement that implies that it is true or false? No. The ozone layer _could_ have a hole in it, but it also _could not_. The definition of the ozone layer does not mention holes. 

Since the statement describes an aspect of the real world, its truth will depend on the real world. If the statement accurately describes the world, it is true. If it does not accurately describe the world it is false. You will need to examine the real world to know which is the case.

Statements like _"There is a hole in the ozone layer"_ are not a priori. They are _a posteriori_. A posteriori knowledge is knowledge that can only be proven by observing the real world. 

***
If the difference between a priori and a posteriori knowledge confuses you, focus on the meaning of _prior_ (before) and _posterior_ (after). You can prove a priori knowledge before you look at empirical evidence, but you cannot prove a posteriori knowledge until after you look at empirical evidence.
***

A posteriori knowledge poses several challenges. 

#### Discovery 

Consider a question, "What has caused the recent increase in global temperatures?" The answer is an a posteriori statement. But which one? Media experts have offered several explanations. Let's consider two of them. 

1. The change was caused by humans burning carbon based fuels. 
2. The change was caused by an increase in the sun's output.

You can prove or disprove the first statement by observing whether or not humans have burned larger than usual amounts of carbon fuels in recent years, whether or not burning carbon fuels causes temperatures to rise, and so on. 

You can prove or disprove the second statement by observing whether or not the sun's output has increased in recent years, whether or not global temperatures fluctuate in response to changes in solar output, and so on.

Each answer suggests a different part of the world to observe to explain the phenomena. But what if you had no answers? Does the question itself suggest that you should examine human fuel use? Or the progress of solar cycles? It is possible that temperature change is moderated by the ocean's capacity to absorb and release carbon. Does the question suggest that fact?

In general, questions about a posteriori facts do not suggest potential answers. Nor do they suggest which parts of the world you should observe to discover an answer. Instead, potential answers determine which parts of the world are relevant to a question. Once you hypothesize an answer, you can make observations that prove or disprove your hypothesis. 

This creates a problem of discovery: how can you identify potential answers to a question about the natural world.

***

Science is a method of acquiring a posteriori knowledge, knowledge that cannot be known without empirical observation.

<!--
. Like all scientists, data scientists try to learn about the natural world. To do this they study a specific type of knowledge, a posteriori knowledge. 

A statement is a posteriori if it describes an aspect of the real world. Such a statement is true if it accurate describes the real world and false if it does not accurately describe the real world. To prove that an a posteriori statement is true, you must observe the world and see if the statement aligns with the way the world is.

Not all knowledge is a posteriori. Some statements are a priori. To prove that an a priori statement is true you must analyze the concepts and relationships involved in the statement, but you do not need to observe the world.

Different types of reasoning are suited to each type of knowledge. Loosely speaking, math and logic are methods of reasoning that reveal a priori knowledge, and science is a method that reveals a posteriori knowledge. Mathematicians use analysis to both discover new a priori facts and to prove that a priori statements are true (or false). Scientists use observations to both discover a posteriori knowledge and to prove that a posteriori statements are true (or false).

***
if you are confused...
***

Data science is a method for reasoning about a _specific_ type of a posteriori knowledge.

Consider for a moment, these statements

* The universe is expanding.

How can you prove that this statement is true? The statements are a posteriori, which means that you must observe the part of the world that the describe. However, you cannot observe such things. As a result, these statements are essentially unprovable. You can argue that these statements are likely to be true (or false), but you cannot prove that they are true (or false).

Many a posteriori statements are unprovable. Here is a short list of features that make an a posteriori statement unprovable. It describes:

. the future
. the past
. the present
. a general law

Such statements are a posteriori statements that describe unobservable things. Let's call them unprovable a posteriori hypotheses. Now consider these questions

.
.
.

The answer to each question will be an a posteriori statement, a description about a part of the world. Scientists traditionally discover the answers to such questions by designing an experiment that let's them observe the part of the world in question. However, each of these questions asks about a part of the world that cannot be observed. How then should you discover the answers to these questions? Notice also that the correct answers -- whatever they may be -- will also be unobservable a posteriori statements.

Questions add another case of (temporarily) unprovable a posteriori statements.

. statements that describe an observable part of the world that no one has thought to look at

Data science is a method for discovering and then reasoning about unprovable a posteriori statements. It cannot prove that such a statement is true, but as you will see data science can justify such statements in several ways. 

Note that data science is not the only method of reasoning about unprovable a posteriori statements. You can think of science itself as a toolkit for reasoning about a posteriori statements -- both provable and unprovable. Data science is just one tool in the tool kit, and it overlaps with many of the other tools. 

Also, do not be mislead by the name unprovable a posteriori statements. As you will see, you can prove some things about these statements. For example, you can prove that they are true. Also an unprovable statement becomes provable once you find a way to observe it. This can involve an advance in technology, but it can also be as simple as waiting for a future event to occur, or thinking to observe something that you were previously unaware of.

## The methods of science

Once again, the methods that data scientists use are guided by the general features of scientists. Scientists act as if events are caused by deterministic processes. So they look for explanations. You can use a correct explanation to predict and control the outcome of a process. Explanations that involve measurable variables can be expressed as laws.

But how should you look for an explanation?

## The methods of data science

Measurement reveals one opportunity. Whenever you measure something precisely enough, you will get two different responses. This can be due to measurement error, or due to changes in the conditions of the system that determines the event. These changes can reveal the relationships in a system. This is the approach that data scientists take.

## The structure of data

A data set is a set of measurements, but it is more than just a collection of values. A data set contains structure. Every value in a data set is associated with a variable and an observation.

A variable is a thing that can be measured. An observation is a set of measurments that are made under similar (ideally identical observations). An observation reveals a snap shot of a system. If a law exists between the variables measured in an observation, it will be apparent in the values of the observation. As a result, laws appear as patterns of values in a data set.

By itself, this makes data a useful, but limited tool. It is difficult to spot patterns in tables of data. However, the structure of data also parallels the structure of graphs, which makes data sets a formidable tool of scientific discovery. Every graph is composed of marks (which parallel observations) and visual properties (which parallel variables). Each mark has its own values for each visual property. You can visualize a data set by mapping each observation to a mark and each variable to a visual property. When you do this, laws appear as spatial patterns in graphs, something humans are very good -- perhaps too good -- at perceiving.

You can also discover patterns in data with a pattern recognition algorithm, which machine learning and statistical modelling algorithms are (in essence).

This is the basic idea of data science, to discover scientific laws by matching the structure of data to the structure of scientific laws. However, this method encounters two challenges that shape how data scientists reason.

## Unexplained variation

If you do not account for all of the variables at play, your data will be noisy (this is usually the case). Hence, you will need to estimate the pattern.

First, most events are determined by very complicated systems. Consider the gravitational pull of a molecule for example. Often you do not care about every part of the system (nor can you measure every part of the system). You can focus on a subset of relationships within the system, but your data will be noisy. If you do not account for the most important influences in a system, the noise may overwhelm any patterns that you may find. In other cases, it is possible to discern patterns within the noise.

Data scientists procede by creating a model of the system. Like a real model

### Inference to the best explanation

The same data can support multiple models. Choose the one that seems to offer the highest predictiv accuracy because this is the most pragmatic thing to do. Inference to the best explanation provides a pragmatic justification for predictions.

### Models

Models provide an a priori reasonable way to estimate patterns. Here are several examples. Models provide a reliabilist justification for predictions.

### Conjecture and refutation

A hypothesis id just a guess unless you can justify it.

Discovering a hypothesis is different than justifying it. Conjecture and refutation provides a way to justify, but it has trouble dealing with probability. Conjecture and refutation provides a falsificationist justification for a model.

## What can you take for granted?

### Summary

Data science is a method of reasoning about unobserved a posteriori knowledge. It matches the structure of data to the structure of scientific laws. To do data science, you'll need to know a little about computers and programming.

### Test Yourself

These exercises are more open-ended than the exercises in the following chapters. Some of the questions below do not have answers, but they are still very important. You should have an opinion that you can defend for each of the topics.

1. **Explain data science**

    Your boss walks in and he's furious. You gave him a prediction that turned out wrong, and the company lost millions. He's suddenly very interested in cutting costs. He has mathematicians to crunch numbers, and computer scientists to write programs. In a menacing voice, he leans in and asks, "Why do I need a data scientist?"

    a. Explain how data science is different than math.  
    b. Explain how data science is different than computer science.

2. **Infinite regress** 
    
    Philosophers define knowledge as _justified true beliefs_. To know something, you must have a good reason to believe that it is true (i.e., justification). Otherwise, your belief is just a guess.

    But what makes a reason "good"? The reason must be true, and you must be justified n believing that it is true. In other words, the reason must itself be a type of knowledge.

    This creates a problem of infinite regression. To justify one piece of knowledge, you need a second piece of knowledge, which must be justified by a third piece, and so on. It seems that to know anything, you must know an infinite number of things, which is impossible. 

    Or, you may know some things that do not need to be justified. Philosophers call knowledge that does not need to be justified _foundational knowledge_ because you can use it to justify other types of knowledge. 

    How does science solve the problem of infinite regress? (Hint: Do scientists treat one type of knowledge as foundational?).

3. **Truth**

    The _correspondence theory of truth_ provides the most widely accepted and influential definition of truth: a statement is true if it corresponds to the way things really are. In other words, a statement is true if it accurately describes how things are in the real world. 

    Explain why a hypothesis that describes observations is likely to be true according to the correspondence theory of truth. Why might such a hypothesis not be true?

4. **The problem of induction**

    Data science relies a common form of reasoning known as _induction_. An inductive argument draws a conclusion that states more than what is implied by the premises. For example, the following inductive argument draws a conclusion that goes beyond what is described in the first two statements.

    The high temperature was ninety degrees yesterday.  
    The high temperature was ninety degrees today.  
    Therefore, the high temperature will be ninety degrees tomorrow.

    In essence, an inductive argument assumes an unstated premise: that _unobserved outcomes will resemble observed outcomes_.

    Inductive reasoning has led to many scientific discoveries, but it suffers a serious problem. It is difficult to prove that induction is a reasonable thing to do. Consider an obvious approach. You may argue

    Induction has worked on occasion A.  
    Induction has worked on occasion B.  
    And so on.
    Therefore, induction will work in the future.

    This argument only holds if you assume that future cases of induction (unobserved events) will resemble previous cases of induction, which were successful (observed events). This assumption is itself a form of induction. In other words, this line of reasoning is circular: it relies on induction to justify induction.

    David Hume described this as the _problem of induction_. He asserted that inductive reasoning cannot be logically justified. Since then, philosophers have largely confirmed his assertion.

    Is inductive reasoning a reasonable way to learn about the world? How do you justify using inductive methods in data science? 

4. **The problem of deduction** 

    Given the problem of induction, some people prefer deductive reasoning. A deductive argument draws a conclusion that is implied by its premises. If the premises are true, then the conclusion must also be true. For example, the deductive argument below draws a conclusion that _must_ be true if its premises are true.

    All men are mortal.  
    Socrates is a man.  
    Therefore, Socrates is mortal.

    Deductive arguments are logically valid, but do they create new knowledge? Can a deductiv argument reveal something that you did not already know based on your premises? (Assume that you know something if you could realize that it is true based on your information (even if you have not yet realized it.)

5. **The role of math** 

    As commonly used, mathematics is a type of deductive reasoning. Mathematical proofs begin with a set of premises and return a conclusion that must be true if the premises are true. 

    Data scientists attempt to discover _a posteriori_ knowledge, knowledge 

-->
6. Classify these statements as a priori or a posteriori


