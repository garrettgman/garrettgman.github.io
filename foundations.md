---
layout: page
title: Foundations of Data Science
weight: 3
---

We all know what _Science_ is: the scholarly way of learning that depends on reasoning and observation. A scientist conducts experiments, makes measurements and thereby learns about the world. But what is _Data Science_?

Data science begins with the second measurement. Whenever you measure the same thing twice—provided you measure it precisely enough—you will get two results. This phenomenon creates uncertainy, and it creates opportunity.

This chapter will describe the causes of uncertainty and the principles that data scientists use to overcome it. Data science is a method for reasoning about uncertain information. This reasoning guides the techniques that you will learn in later chapters—techniques like machine learning, statistical modelling, and visualization.

## Uncertainty

Uncertainty is an unpleasant fact of life. We do not know for certain many of the most interesting things to know.  For example, the structure of quarks, the origins of life, or the phone number of your attractive classmate.

This uncertainty is more than a matter of bad luck. The nature of knowledge dictates that some things _cannot_ be known. At all. To see why this is consider some basic principles of logic.

Logic is the study of arguments, and its goal is to identify arguments that prove their conclusions. Logic comes in handy because everything you know is based on an argument. If you cannot prove a piece of knowledge with an argument, then it is not a piece of knowledge. It is a guess, and you do not know it for certain.

Logic used to be one of the three R's (the `rhithmetic in reading, writing, and arithmetic) and the lynchpin of a liberal arts education. But we also used to think that the world was flat and TV screens were round. Those days are long behind us, so you may not be familiar with the basic principles of logic.

The principles are very simple and you should be acquainted with them. They explain what is, and is not, proof. They also reveal the fundamental source of uncertainty that motivates all of data science.

You can divide every argument into two parts: a set of premises, which are given, and a conclusion, which you want to prove. Logicians tend to write out arguments like this

Premise 1  
Premise 2  
Therefore, conclusion  

Or, a real argument

Hal Varian thinks statisticians are sexy.  
I'm a statistician.  
Therefore, Hal Varian thinks I'm sexy.  

The premises should provide evidence that the conclusion is true, but they do not have to. An argument can be plain wrong. In fact, there are two ways for an argument to go wrong. First, the premises may not prove that the conclusion is true, in that case the argument is _invalid_. Second, the premises may themselves be false. In that case, even a valid argument could lead to an incorrect conclusion.

On the other hand, if an argument is organized in such a way that the conclusion must be true if the premises are true _and_ the premises are actually true, then the argument proves its conclusion. This first condition is a mouthful, so logicians defined a word to describe it: an argument is _valid_ if its premises imply its conclusion.

These two conditions are important so I'll list them clearly. An argument proves its conclusion if

1. The argument is valid
2. The premises are true

Arguments provide a way to know information for certain. A piece of information is certain if you can prove it with a valid argument that uses true premises. Otherwise, a piece of information is uncertain.

It is not always easy to show that an argument is valid (or that its premises are true). However, there are many tools that can help you. The fields of logic and mathematics are devoted to spotting and using valid arguments. Each lays out a system of rules that can be used to determine what is, and what is not implied by a set of premises. Logic tends to deal with general premises that involve classes, properties, and relationships. Math deals with premises that involve quantitative information. 

EXAMPLE.

Math and logic can guarantee that the conclusion of an argument is true if the premises are true. But how do you determine if the premises are true? 

You must establish the truth of different types of premises in different ways.

Many premises can be proven by arguments of their own. A supporting argument will treat the premise as a conclusion and prove that it is implied by more simple (and true) premises. 

At some point, however, supporting premises will become so simple that they cannot be proven by arguments. You cna divide these "foundational" premises into two types: definitions and descriptions.

A definition defines a concept or abstract idea. You cannot prove or disprove a definition (because definitions are neither true nor false). They are merely agreed upon. Definitions usually define a class of objects that have common properties and are related to other classes of objects in specific ways. 

Any statement that deals only with abstract ideas relies entirely upon definitions. You can prove that the statement is true or false by analyzing the definitions and relationships reffered to in the statement.

For example, you can prove most mathematical statements (which describe abstract ideas like numbers, sets, and operations) by analyzing the definitions of the numbers, sets, and operations that they mention.

\(\sum mx = mx_{1} + mx_{2} + mx_{3} ...\)  
\(mx_{1} + mx_{2} + mx_{3} ... = m (x_{1} + x_{2} + x_{3} ...)\)  
\(m (x_{1} + x_{2} + x_{3} ...) = m \sum x\)  
Therefore, \(\sum mx = m \sum x\)

Philosophers call statements about abstract ideas _a priori_ knowledge, because you can prove or disprove the statements _prior_ to getting up from your arm chair (to do something like collect data). A priori statements are a rich source of certain knowledge, but they do not actually tell you anything about the physical world. They only ensure that your beliefs are coherent with the definitions you have adopted. To ensure that your beliefs correspond to reality, you need a more daring type of premise, premises that describe concrete things.

A description describes an arrangement that exists in the physical world. Descriptions are not a matter of custom or convention. A description is true if it corresponds with the way the world really is. A description is false if it does not. To see which is the case, you must observe the part of the world that the description describes.

For example, consider the statement, "There is a hole in the ozone layer." 

There is nothing in the statement that suggests whether it is true or false. The ozone layer _could_ have a hole in it, but it also _could not_. The definition of the ozone layer does not mention holes. 

Since the statement describes an aspect of the real world, its truth will depend on the real world. If the real ozone layer has a hole, the statement will be true. If the real ozone layer does not have a hole, the statement will be false. You must observe the real world to prove whether or not the statement is true.

Statements like _"There is a hole in the ozone layer"_ are not a priori. Philosophers call this type of statement _a posteriori_ because to prove it you need to get up off your _posterior_ and examine the universe. In other words, a posteriori knowledge is knowledge that can only be proven by observing the part of the world that the knowledge describes.

***
#### Tip

If a statement describes something in the real world, you _must_ observe that thing if you want to prove or disprove the statement (and any conclusion based on it) with logical certainty. 
***

Philosophers and mathematicians specialize in reasoning about a priori facts, but not scientists. Scientists specialize in reasoning about a posteriori facts. And data scientists specialize in reasoning about a specific subset of a posteriori facts.

***
#### Tip

If the difference between a priori and a posteriori knowledge confuses you, focus on the meaning of _prior_ (before) and _posterior_ (after). You can prove a priori knowledge before you look at empirical evidence, but you cannot prove a posteriori knowledge until after you look at empirical evidence.
***

Here's where things get weird.

Some a posteriori statements can be confirmed by making an observation, but many a posteriori statments describe things that cannot be easily observed. For example, what observations can you make (today) to prove that the statements below are true beyond the shadow of a doubt?

* A meteor impact killed the dinosaurs.
* The universe is expanding.
* All of the ice in Greenland will melt by 2080.

These descriptions each describe something that you cannot observe, which means that you _cannot_ prove that the statements are true. Nor can you prove that any conclusions that rely on them are true.

In short, many a posteriori statements cannot be proved at all. Here is a short list of features that make an a posteriori statement unprovable. An a posteriori statement cannot be proved if it describes:

1. A future event
2. A past event (that you did not observe)
3. A present event (that you are not currently observing)

An a posteriori statement also cannot be proved if it describes

1. A general rule (because general rules describe an infinite number of instances, some of which fall into the categories above), or
2. Causation (because causation cannot be directly observed, just inferred from associations)

In other words, almost every description of the world describes something that cannot be proven. At all. Almost everything we believe about the world is uncertain.

Data scientists attempt to reduce this insurmountable source of uncertainty. Like the Norse gods at Ragnarok, data scientists are fated to fail—this uncertainty cannot be completely reasoned away. However, data scientists can mitigate the uncertainty enough to create very useful results.

To recap, information cannot be known for certain if it deals with unobservable parts of the real world. This means that most of our beliefs, including ideas about the past, the future, uniformities, and causation will always be uncertain conjectures.

This is an uncomfortable position to be in. Let's start fighting back. Science provides a general strategy for reasoning about uncertain a posteriori knowledge. Data science provides a specific tactic.

***
#### Tip

Data science, or at least a major branch of it—statistics—is often thought of as a type of math, but that is incorrect. Data science picks up where math leaves off. Math proves a priori knowledge that can be known with certainty. Data science reveals a posteriori information that is beyond the horizon of what you can and cannot know.
***

## Science

Although we cannot know what the future holds in store, we can notice that the universe is pretty well behaved. Cause and effect seems to occur. Unobserved events seem to be similar to similar observed events. Scientists act as if we can take these things for granted.

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