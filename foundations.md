---
layout: page
title: Foundations of Data Science
weight: 3
---

Data science is a _method_ of science. This sets it apart from other fields that are _branches_ of science. A branch of science uses scientific techniques to study a single subject. For example, physicists study physical systems, chemists study chemical systems, and biologists study living systems. But data science is different.  

Data scientists study a method that anyone can use to solve scientific problems. You can think of data science as a complement to experimental science. Experimental scientists use the experimental method to solve scientific problems, and data scientists use the data science method. Many scientists use both.

This chapter will describe the problems that data scientists attempt to solve, as well as the methods that they use to solve them. It introduces data science as a way to acquire knowledge in the face of uncertainty: data scientists acquire knowledge by matching the structure of data to the structure of scientific laws. 

Uncertainty will be your constant companion as a data scientist. The principles laid out in this chapter explain where uncertainty comes from and how you can mitigate it. These principles guide the techniques that you will learn in later chapters—techniques like machine learning, statistical modelling, and visualization.

## Proof

Data science may be the boldest of scientific pursuits. Its mission is both simple and impossible: to discover true knowledge that cannot be proven true. This creates a condition of uncertainty that follows the results of data science. To excel at data science you must become an expert at spotting and managing uncertainty.

Why take on such a task? Different types of knowledge must be proven in different ways. Some of the most useful types of knowledge cannot be proven at all. 

Logic is the study of arguments, and its goal is to identify arguments that prove their conclusions. Logic comes in handy because everything you know is based on an argument. If you can't prove a piece of knowledge with an argument, then it is not a piece of knowledge. It is a guess.

Logic used to be one of the three R's (the `rhithmetic in reading, writing, and arithmetic) and the lynchpin of a liberal arts education. But we also used to think that the world was flat and TV screens were round. Those days are long behind us, so you may not be familiar with the basic principles of logic.

The principles are very simple and you should be acquainted with them. They explain what is, and is not, proof. Don't worry about becoming bored; we'll soon encounter the paradox that motivates all of data science.

You can divide every argument into two parts: a set of premises, which are given, and a conclusion, which you want to prove. Logicians tend to write out arguments like this

Premise 1  
Premise 2  
Therefore, conclusion  

Or, a real argument

Hal Varian thinks statisticians are sexy.  
I'm a statistician.  
Therefore, Hal Varian thinks I'm sexy.  

The premises should provide evidence that the conclusion is true, but they do not have to. An argument can be plain wrong. In fact, there are two ways for an argument to go wrong. First, the premises may not prove that the conclusion is true, in that case the argument is _invalid_. Second, the premises may themselves be false. In that case, even a valid argument could lead to an incorrect conclusion.

What do you need to know about all of this? Just one thing. An argument proves its conclusion if

1. The premises imply the conclusion (e.g. if the premises are true the conclusion must be true).
2. The premises are true

When an argument meets the firat requirement, it is said to be a _valid_ argument. It is not always easy to see if an argument is valid. The fields of logic and mathematics are devoted to spotting and using valid arguments. Each lays out a system of rules that can be used to determine what is, and what is not implied by a set of premises. Logic tends to deal with general premises that involve classes, properties, and relationships. Math deals with premises that involve quantitative information. EXAMPLE.

Math and logic can guarantee that the conclusion of an argument is true if the premises are true. But how do you determine if the premises are true? You must establish the truth of different types of premises in different ways.

Many premises can be proven by arguments that treat the premise as the conclusion and prove that it is implied by more simple premises. However, two types of foundational premises cannot be proven by arguments.

First, definitions cannot be proven or disproven (because they are neither true nor false). A definition is simply a convention that is either accepted or not accepted. Statements about ideas can be proven or disproven by analyzing the definitions of the concepts referred to in the statements. Each definition defines a class of objects that have common properties and are related to other classes of objects. EXAMPLE.

Philosophers call statements about ideas _a priori_ knowledge (because you can figure it out prior to getting up from your arm chair to see what universe you live in). As long as you are familiar with the definitions involved, you can reason about a priori statements. Moreover, the statement will presumably be true in any universe that shares the definition. This means the statement is true if you live in a universe that has a yellow sun, and it is true if you live in a universe that has a red sun. 

As a general rule, a priori statements can be proven or disproven with logical certainty. For example, 

\(\sum mx = mx_{1} + mx_{2} + mx_{3} ...\)  
\(mx_{1} + mx_{2} + mx_{3} ... = m (x_{1} + x_{2} + x_{3} ...)\)  
\(m (x_{1} + x_{2} + x_{3} ...) = m \sum x\)  
Therefore, \(\sum mx = m \sum x\)


***
#### Tip

Data science, or at least a major branch of it—statistics—is often thought of as a type of math, but that is incorrect. Data science picks up where math leaves off. Math proves knowledge that can be known with certainty. Data science reveals information that is beyond the horizon of what you can and cannot know.
***

Philosphers and mathematicians specialize in reasoning about a priori facts, but not scientists. Scientists specialize in a more daring type of premise, premises that describe concrete things.

Statement 2 describes something concrete, the color of the sun. As a result, the statement will be true in some universes (universes that have a yellow sun) and false in other universes (universes that have a red sun, sorry Kryptonians). To see whether the statement is true in _this universe_, you need to check to see what color the sun is in this universe.

Philosophers describe this type of fact as a posteriori (because to prove it you need to get up off your posterior and examine the universe). Proving a posteriori facts is a plain affair. Only one premise can prove the fact and that premise must be an observation of the concrete thing described.

The sun is yellow (observation)  
Therefore, the sun is yellow (fact)  

All of this means that if a statement describes something in the real world, you _must_ observe that thing if you want to prove or disprove the statement with logical certainty. Science is a toolkit for demonstrating and reasoning with a poseriori premises.

***
#### Tip

If the difference between a priori and a posteriori knowledge confuses you, focus on the meaning of _prior_ (before) and _posterior_ (after). You can prove a priori knowledge before you look at empirical evidence, but you cannot prove a posteriori knowledge until after you look at empirical evidence.
***

## Science

A posteriori premises create a problem. Many a posteriori statements describe parts of the world that cannot be observed. These premises _cannot_ be proven. Arguments that rely on them _cannot_ be proven.

Some a posteriori statements can be confirmed by making an observation, but many a posteriori statments describe things that cannot be easily observed. For example, what observations can you make (today) to prove the statements below are true beyond the shadow of a doubt?

* A meteor impact killed the dinosaurs.
* The universe is expanding.
* All of the ice in Greenland will melt by 2080.

In short, many a posteriori statements cannot be proved at all. Here is a list of features that make an a posteriori statement unprovable. An a posteriori statement cannot be proved if it describes:

1. A future event
2. A past event (that you did not observe)
3. A present event (that you are not currently observing)

An a posteriori statement is also unprovable if it asserts a general rule. Such statements describe _every_ instance of the rule. To prove that the rule is universal, you must observe every instance, but some instances will fall into one of the unobservable groups above.

Scientists use a general pattern of reasoning to reason about a posteriori statements that describe unobservable things. Scientists act as if the outcome of every measurable event can be predicted by a set of input conditions. In other words, scientists treat the universe as if it behaves according to deterministic cause and effect laws. The relationship between input conditions and outcomes can be stated precisely as a law, like $f = ma$, or generally as an explanation, such as smoking causes lung cancer.

Deterministic laws are a type of general rule. They apply both to events that have been observed, as well as events that have not yet been observed. This creates an opprotunity for scientists. Scientists use observed events to identify laws, and then they use the laws to predict the outcome of similar, unobserved events.

Notice that deterministic laws are themselves a posteriori statments that describe unobservable events because they are a type of general rule. As a result, such laws and explanations cannot be proven correct. A law may accurately describe every observed event, but cease to describe any further unobserved events. The only way to prove that it does not is to observe every instance of the law, which would be impossible. As a result, scientists treat such laws and explanations as _hypotheses_, conjectures that may not be true.

Hypotheses make reasoning about the unknown straightforward. Scientists can _abduce_ a hypothesis from existing observations and then use the hypothesis to _deduce_ predictions about unobserved events. 

DIAGRAM.

Abduction is a simple method of reasoning that is also known as _inference to the best explanation_. It involves three steps

1. Collect evidence about a phenomenon
2. Identify hypotheses that could explain the evidence
3. Select the hypothesis that "best" explains the evidence

Abduction is not foolproof. It presents some serious problems that scientists attempt to rectify.

The first problem can be called the "problem of discovery." When you abduce, you select the "best" explanation from all of the available hypotheses, but in reality you must select from all of the explanations _that you have thought of_. There will always be hypotheses that you do not think of. If the true hypothesis is one of them, abduction will not select it. How do you seek out explanations to choose from?

The second problem can be called a "problem of selection." There are many ways to rank hypotheses. How do you determine whether one hypothesis is better than another? How do you determine which is best?

The third problem can be called a "problem of justification." Nothing guarantees that the "best" explanation is correct. An unlikely, or unthought of explanation could instead be true. We cannot prove that our selection is true, so how can we justify our choice?

Data science provides one way to solve these problems. It is primarily a method of scienctific discovery. In other words, it identifies and selects useful hypotheses for scientists to use. Data science also provides several ways to justify hypotheses that have been selected.

## Data Science






## Summary

Data science is a method of science that complements Experimenal science. Data scientists discover possible hypotheses, which can be further explored and tested with experimental methods. Specifically, data science matches the structure of data sets to the structure of scientific laws. If a law exists between two variables, it will appear as a pattern in the data. These patterns can be described, modelled, and used to make predictions.

Like much of science, data science deals with uncertain information. Data science findings are never logically proven. At best, they are the most reasonable and the most pragmatic beliefs to hold. In short, data science methods _do not_ prove their results. This is the most important distinction between data science and math, which data science methods are sometimes mistaken for.

Although you cannot be certain about your results, you can be certain about your methods. The chapters that follow will show you how to make your results more certain by using methods that are reliable, reproducible, and have high predictive accuracy. You will also learn to quantify some types of uncertainty with probability.

While each of these tactics makes data science findings more useful, they do not overcome the central paradox of data science: data science attempts to unveil unobservable a posteriori knowledge, knowledge that can only be proven by empirical observation. Always respect this paradox by maintaining an attitude of skepticism and curiosity.

To do data science, you'll need to know a little about computers and programming. [Data Carpentry](/data-carpentry.md) will get you started loading and manipulating data with the R programming language.

## Test yourself