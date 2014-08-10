---
layout: page
title: Foundations of Data Science
weight: 3
---

We all know what _Science_ is: the scholarly way of learning that depends on reasoning and observation. A scientist conducts experiments, makes measurements and thereby learns about the world. But what is _Data Science_?

Data science begins with the second measurement. Whenever you measure the same thing twice—provided you measure it precisely enough—you will get two results. This phenomenon creates uncertainy, and it creates opportunity.

This chapter will describe the causes of uncertainty and the principles that data scientists use to overcome it. The chapter introduces data science as a method for reasoning about uncertain information. This method of reasoning guides the techniques that you will learn in later chapters—techniques like machine learning, statistical modelling, and visualization.

Data science deals with two different types of uncertainty... One shapes the techniques you use. One guides how you apply them.

## Epistemological Uncertainty

Uncertainty is an unpleasant fact of life. We do not know for certain many of the most interesting things to know.  For example, we do not know for sure the structure of quarks, the origins of life, or the phone number of your attractive classmate.

This uncertainty is more than a matter of bad luck. The nature of knowledge dictates that some things _cannot_ be known. At all. To see why this is, consider some basic principles of logic.

Logic is the study of arguments, and its goal is to identify arguments that prove their conclusions. Logic comes in handy because everything you know is based on an argument. If you cannot prove a piece of knowledge with an argument, then it is not a piece of knowledge. With few exceptions, it is a guess, and you do not know it for certain.

Logic used to be one of the three R's (the `rithmetic in reading, writing, and arithmetic) and the lynchpin of a liberal arts education. But we also used to think that the world was flat and TV screens were round. Those days are long behind us, so you may not be familiar with the basic principles of logic.

The principles are very simple and you should be acquainted with them. They explain what is, and is not, proof. They also reveal the fundamental source of uncertainty, which you should understand as a data scientist. The method of data science is a response to this uncertainty.

Logic begins with arguments. You can divide every argument into two parts: a set of premises, which are given, and a conclusion, which you want to prove. Logicians tend to write out arguments like this

Premise 1  
Premise 2, etc.  
Therefore, conclusion  

Or, a real argument

McKinsey is hiring statisticians. 
I'm a statistician.  
Therefore, McKinsey will hire me.  

The premises should provide evidence that the conclusion is true, but they do not have to. An argument can be plain wrong. In fact, there are two ways for an argument to go wrong. First, the premises may not prove that the conclusion is true, in that case the argument is _invalid_. Second, the premises may themselves be false. In that case, even a valid argument could lead to an incorrect conclusion.

In contrast, an argument proves its conclusion if the premises are true _and_ the argument is organized in such a way that the conclusion must be true if the premises are true. This is a mouthful, but a very important principle. So let's state it more clearly. 

First, we will define a new word: an argument is _valid_ if its premises imply its conclusion (e.g., the conclusion must be true if the premises are true).

Now we can say that an argument proves its conclusion if

1. The argument is valid, and
2. The premises are true

Arguments provide a way to know information for certain. A piece of information is certain if you can prove it with a valid argument that uses true premises. Otherwise, a piece of information is uncertain.

It is not always easy to show that an argument is valid (or that its premises are true). However, there are several tools that can help you. 

The fields of logic and mathematics are devoted to spotting and using valid arguments. Each lays out a system of rules that can be used to determine what is, and what is not implied by a set of premises. Logic tends to deal with general premises that involve classes, properties, and relationships. Math deals with premises that involve quantitative information. 

So, for example, logic can tell you that the statement "All statisticians are sexy" implies the statement "some statisticians are sexy;" and math can tell you that $2a = b^{2} - 6b + 9$ implies that $a = \frac{(b - 3)^{2}}{2}$.

Math and logic can guarantee that the conclusion of an argument is true if the premises are true. But how do you determine that the premises are true? You must establish the truth of different types of premises in different ways.

Many premises can be proven by supporting arguments. A supporting argument will treat the premise as a conclusion and prove that it is implied by more simple (and true) premises. For example, we can verify one of our premises above with this supporting argument:

A person is a statistician if they have a degree in statistics.
I have a degree in statistics.
Therefore, I am a statistician.

The premises of supporting arguments may themselves have supporting arguments, and so on. At some point, however, supporting premises will become so simple that they cannot be proven by arguments. You can divide these simple "foundational" premises into two types: definitions and descriptions.

A definition defines a concept or abstract idea. You cannot prove or disprove a definition (because definitions are neither true nor false; they are merely agreed upon).  You can use a definition as a premise if you agree with the definition. Your audience should accept your argument if they also agree.

For example, the statement below defines uncertainty.

"A statement is uncertain if there is any chance that the statement is false."

You may not like this definition. You may think that it would be better to use a slightly different one: "A statement is uncertain if there is _a high_ chance that it is false." But neither of our definitions would be true or false. They are both propositions that we can accept or not. If we cannot agree on our definitions, we will have trouble interpreting each others conclusions. As a result, it is pragmatic to accept the definitions used by society at large.

Any statement that deals with only abstract ideas relies entirely upon definitions. You can prove that a statement about abstract ideas is true or false by analyzing the definitions and relationships referred to in the statement. Definitions usually imply that a class of objects has common properties and is related to other classes of objects in specific ways.

For example, you can prove most mathematical statements (which describe abstract ideas like numbers, sets, and operations) by analyzing the definitions of the numbers, sets, and operations that they mention. The argument below proves that the sum of a sequence of products is equal to the product of the sum.

\(\sum mx_{i} = mx_{1} + mx_{2} + mx_{3} ...\)  
\(mx_{1} + mx_{2} + mx_{3} ... = m (x_{1} + x_{2} + x_{3} ...)\)  
\(m (x_{1} + x_{2} + x_{3} ...) = m \sum x_{i}\)  
Therefore, \(\sum mx_{i} = m \sum x_{i}\)

Philosophers call statements about abstract ideas _a priori_ knowledge, because you can prove or disprove the statements _prior_ to getting up from your arm chair (to do something like collect data). 

A priori statements are a rich source of certain knowledge, but they do not actually tell you anything about the physical world. When you evaluate a priori statements with math or logic, you only ensure that your beliefs are coherent with the definitions you have adopted. To ensure that your beliefs correspond to reality, you need a more daring type of premise, premises that _describe_ real things.

A description describes an arrangement that exists in the real world. Descriptions are not a matter of custom or convention. A description is true if it accurately describes the way the world really is. A description is false if it does not. To see which is the case, you must observe the part of the world that the description describes.

For example, consider the statement, 

"There is a hole in the ozone layer." 

There is nothing in the statement that suggests whether it is true or false. The ozone layer _could_ have a hole in it, but it also _could not_. The definition of the ozone layer does not mention holes. 

Since the statement describes an aspect of the real world, its truth will depend on the real world. If the real ozone layer has a hole, the statement will be true. If the real ozone layer does not have a hole, the statement will be false. You must observe the real world to prove whether or not the statement is true.

Statements like _"There is a hole in the ozone layer"_ are not a priori. Philosophers call this type of statement _a posteriori_ because to prove it you need to get up off your _posterior_ and examine the universe. In other words, a posteriori knowledge is knowledge that can only be proven by observing the part of the world that the knowledge describes.

***
#### Tip

If a statement describes something in the real world, you _must_ observe that thing if you want to prove or disprove the statement (and any conclusion based on it) with logical certainty. 
***

Philosophers and mathematicians specialize in reasoning about a priori facts, but not scientists. Scientists specialize in reasoning about a posteriori facts. And data scientists? They specialize in reasoning about a specific subset of a posteriori facts.

Here's where things get weird.

***
#### Tip

If the difference between a priori and a posteriori knowledge confuses you, focus on the meaning of _prior_ (before) and _posterior_ (after). You can prove a priori knowledge before you look at empirical evidence, but you cannot prove a posteriori knowledge until after you look at empirical evidence.
***

Some a posteriori statements can be confirmed by making an observation, but many a posteriori statments describe things that cannot be easily observed. For example, what observations can you make (today) to prove that the statements below are true beyond the shadow of a doubt?

* A meteor impact killed the dinosaurs.
* The universe is expanding.
* All of the ice in Greenland will melt by 2080.

These descriptions each describe something that you cannot observe, which means that you _cannot_ prove that the statements are true. Nor can you prove that any conclusions that rely on the statements are true.

In short, many a posteriori statements cannot be proved at all. Here is a short list of features that make an a posteriori statement unprovable. An a posteriori statement cannot be proved if it describes:

1. A future event
2. A past event (that you did not observe)
3. A present event (that you are not currently observing)

An a posteriori statement also cannot be proved if it describes

1. A general rule (because general rules describe an infinite number of instances, some of which fall into the categories above)
2. Causation (because causation cannot be directly observed, just inferred from associations)

In other words, almost every description of the world describes something that cannot be proven. At all. Almost everything we believe about the world is uncertain.

Data science is a method for reasoning about unprovable a posteriori statements. Data scientists attempt to reduce the uncertainty associated with such statements. Like the Norse gods at Ragnarok, data scientists are doomed to fail—you cannot completely reason away the uncertainty associated with unprovable a posteriori statements. However, you can mitigate the uncertainty enough to create very useful results.

To recap, information cannot be known for certain if it deals with unobservable parts of the real world. This means that most of our beliefs, including ideas about the past, the future, universal rules, and causation will always be uncertain conjectures.

This is an uncomfortable position to be in. Let's start fighting back. Science provides a general strategy for reasoning about uncertain a posteriori knowledge. Data science provides a specific tactic.

***
#### Tip

Data science, or at least a major branch of it—statistics—is often thought of as a type of math, but that is incorrect. Data science picks up where math leaves off. Math proves a priori knowledge that can be known with certainty. Data science reveals a posteriori information that is beyond the horizon of what you can and cannot know.
***

## Variation

You may be tempted to believe that unobserved events will be identical to observed events, but this is bad thinking...

## Scientific Reasoning

Although the universe is non-uniform it is pretty well behaved...

You may have noticed that the universe seems pretty well behaved despite all of this uncertainty. Similar things tend to share similar properties, and unobserved events tend to resemble observed events once you have the chance to examine them. Overall, reality appears to unfold according to reliable patterns. Scientists use this insight when they need to reason about unobservable events. 

Scientists act as if the universe behaves according to laws of cause and effect, a belief known as _determinism_. According to determinism, a set of causes determines the outcome of every measurable event. If you can identify and measure the causes of an event, you can predict its outcome—even if that outcome is not observable. 

Determinism explainss variation by...

Determinism suggests a program for learning about unobservable events: first formulate a hypothesis that describes the causes of existing events. Then use the hypothesis to make predictions about similar, unobserved events.

DIAGRAM

To "prove" an a posteriori statement about the unobserved event, compare it to your predictions. If the statement aligns with your predictions, treat it as true. Otherwise, treat it as false.

This process is straightforward, but does it convey proof? Or in other words, does it lead to certain knowledge about unobservable events? No need to hold your breath: it does not. The process itself depends on an unprovable a posteriori statement: that the universe is deterministic. It then introduces a second unprovable a posteriori statement: the hypothesis, which must describe at least one unobserved event to be useful.

But scientific reasoning does accomplish a lot. Scientific reasoning partially justifies a posteriori statements about unobservable events. To see how it does this, you need to examine each link of logic in the scientific reasoning process. 

In practice, scientific reasoning involves several types of thinking. Let's examine each in turn.

Your first task as a scientist is to understand the observed events. Until you do so...
There are two ways observation and abduction

To understand how uncertainty affects the process, let's precisely define two words. A _fact_ is a piece of information that can be proven (and is therefore certainly true). A _hypothesis_ is a piece of information that cannot be proven (and is therefore uncertain). In essence, a hypothesis is a type of guess.

Let's also define the difference between "thing" and "event." The universe is composed of _things_, tangible objects that take up space and persist through time. In this universe, occur _events_, temporal objects that have a beginning and end and occur in a given location. You can observe both things and events. To simplify the prose that follows, I will speak only of observing events. I do not mean to imply that you cannot observe things. The act of observing a thing is itself an event that has an outcome, the observation made.

In the example that follows we will examine how science formulates hypotheses about causal mechanisms. Afterwards, we will examine whether or not this process needs to be modified when we study properties.

First, you need to identify the causal mechanism that determines the events that you have observed. Occaisionally you can directly perceive the mechanism through observation. In that case, you know the mechanism for a fact.

On other occaisions, the mechanism cannot be directly observed. In those cases, you must abduce the explanation from the evidence provided by your observations. In this case, your explanation is itself a hypothesis.

Next, you must generalize the explanation to apply to unobserved events. This is a method of inference known as _enumerative_ induction. Whether you knew the original explanation for a fact, or abduced a guess, you generalized explanation will be a hypothesis. It cannot be a fact because it now describes unobserved events.

Scientists often try to test their hypotheses after formulating them. To do this they compare the predictions of the hypothesis to observable data. if the predictions do not align with the observations, then the hypothesis _must_ be wrong. This is known as _modus tollens_ or _denying the antecedent_ and it is a valid form of deductive reasoning. 

A negative test, saves scientists from relying on a false hypothesis. If a test disproves a hypothesis, scientists must seek out a new hypothesis to test. Hypothesis testing can be useful for deciding between two plausible hypotheses. You can often devise an experimental test that will clearly reveal one hypothesis as true and the other as false.

Testing can prove that a hypothesis is false, but can it prove that it is true? No. At best a series of successful tests provides premises that you can use to conduct enumerative induction (you induce that all future tests will be true too). however, enumerative induction does not prove its results as we have seen.

Hence, testing leaves the explanation as a hypothesis (i.e. uncertain).

Finally, scientists use deduction to make a prediction about unobserved events. Deduction is a valid form of reasoning. If a set of premises is true, deduction will reveal a conclusion that must also be true. However, in this case, we cannot prove that our premises are true. Our premise is our hypothesis which is an unprovable a posteriori statement.

Scientific reasoning ultimately fails to overcome epistemological uncertainty, but is it useless? I do not think so. You may have noticed that scientists have racked up some very impressive achievements over the past few centuries. Why should this be?

Several mechanisms within scientific reasoning provide "partial justification" for scientific results. These mechanisms do not remove uncertainty, but reveal a path forward nonetheless. As a method of science, data science does the same. It applies these mechanisms to a specific tool: data.

What are the mechanisms and how do they help scientists reason in the face of uncertainty?

First, it is pragmatic to act as if the universe is deterministic. To see why this may be, consider two scenarios. In each scenario, you wish to learn about event A, which is similar to events B, C, and D.

In Scenario 1, the universe _is_ deterministic. By selecting the explanation that best explains events like A, B, C, and D, you maximize your chances of making correct predictions about A.

In Scenario 2, the universe _is not_ deterministic, which means the outcome of event A cannot be predicted. Scientific reasoning will do no better than any other method of reasoning—including random guesses. But scientific reasoning will also do no worse.

So if you act as if the universe is deterministic, you have something to gain and nothing to lose.

Second, under certain conditions, inference to the best explanation ensures that you have the most to gain by acting as if the universe is deterministic. What are those conditions? When you select the explanation that has the best predictive accuracy. In other words, if you wish to select an explanation that describes new events, the most pragmatic thing to do is to select the explanation that makes the most accurate predictions about new events. You can test predictive accuracy by observing new events, but there are other ways to test predictive accuracy as well.

Third, enumerative induction provides a method of reasoning that is a priori reasonable.

Third, testing ensures that the results are at least not obviously wrong. And scientific testing goes beyond hypothesis testing. Scientific research is distributed in a way that makes it reproducible.


### Observation

Some philosophers of science have claimed that scientists rely on creativity or inspiration to formulate useful hypotheses, but this does not seem correct. Scientists examine many sources of evidence about the world to help them formulate hypotheses. Scientists explore, describe, classify and systematize all sorts of facts in an attempt to find useful hypotheses. How do scientists use this information? 

In some situations, observation can reveal a clear causal mechanism that exaplains a set of observable events. For example... 

Observation proves the fact. The fact is certain knowledge when applied to observed events, and you can use it as the basis for a general hypotheses. Even though the fact provides certain knowledge about the observed events, it may not provide certain knowledge about the unobserved events. We will see why in a moment, but first let's consider situations where observations do not reveal a clear causal mechanism.

In these cases, observations provide evidence that scientists can use to _abduce_ an explanation.

But what if you wish to understand something cannot be directly observed?

### Abduction

Abduction is a form of inference that reasons from effects to causes. To abduce a conclusion, you begin with a set of evidence. You consider all of the possible explanations that could explain the evidence. Then you select the "best" possible explanation and conclude that it is the cause. Since you select the best explanation, abduction is also known as _inference to the best explanation_.

EXAMPLE

Abduction is not foolproof. It presents some serious problems that scientists attempt to rectify. First, how do you identify possible explanations to abduce from? Next, how do you decide which explanation is the "best" explanation? Finally, how do you know whether your choice is correct or not?

This last question is the most important for evaluating the effectiveness of scientific reasoning. Abduction does not guarantee that the hypothesis that you select will be true. The true explanation may be one of the explanations that does not seem to be the best. Or it may be an explanation that you did not think to consider. 

CONTINUED EXAMPLE

As a result, you cannot be certain that the hypotheses you select will correctly explain the observed events, let alone unobserved events. If the hypothesis is to be proved, proof will have to come from elsewhere.


Scientists try to compensate for this uncertainty by testing the hypotheses that they select.

### Testing


TESTING

PREDICTION

DIAGRAM 

Consider for example, our a posteriori statement "There is a hole in the ozone layer." In 1977, before anyone had the means to observe the ozone layer, X and X identified a causal relationship between choroflorocarbons (CFCs), temperature, and ozone. If CFCs come in contact with ozone when the temperature exceeds X, the CFCs destroy the ozone. Based on their observation that large amounts of CFCs were released into the atmosphere each year and that the atmosphere occaisionally reaches temperatures of X, the scientists predicted that the statement "There is a hole in the ozone layer" was true.

Several years later, researchers were able to observe the ozone layer both with a satellite and by travelling to antarctica, where they confirmed the prediction.

DOES IT WORK?

Notice that scientists do not attempt to prove that the universe behaves according to deterministic laws. That would be impossible. The premise itself is a type of unprovable a posteriori statement. Nor can scientists prove that the explanations they identify are true. An explanation is a general (and causal) rule, which is another type of unprovable a posteriori statement. 

You may wonder then, does this method of reasoning work? There is some evidence that it does and much evidence that it does not. To evaluate it fairly, you need to  

Notice that deterministic laws are themselves a posteriori statments that describe unobservable events because they are a type of general rule. As a result, such laws and explanations cannot be proven correct. A law may accurately describe every observed event, but cease to describe any further unobserved events. The only way to prove that it does not is to observe every instance of the law, which would be impossible. As a result, scientists treat such laws and explanations as _hypotheses_, conjectures that may not be true.

Hypotheses make reasoning about the unknown straightforward. Scientists can _abduce_ a hypothesis from existing observations and then use the hypothesis to _deduce_ predictions about unobserved events. 

DIAGRAM.


The first problem can be called the "problem of discovery." When you abduce, you select the "best" explanation from all of the available hypotheses, but in reality you must select from all of the explanations _that you have thought of_. There will always be hypotheses that you do not think of. If the true hypothesis is one of them, abduction will not select it. How do you seek out explanations to choose from?

The second problem can be called a "problem of selection." There are many ways to rank hypotheses. How do you determine whether one hypothesis is better than another? How do you determine which is best?

The third problem can be called a "problem of justification." Nothing guarantees that the "best" explanation is correct. An unlikely, or unthought of explanation could instead be true. We cannot prove that our selection is true, so how can we justify our choice?

Data science provides one way to solve these problems. It is primarily a method of scienctific discovery. In other words, it identifies and selects useful hypotheses for scientists to use. Data science also provides several ways to justify hypotheses that have been selected.

Abduce an explanation. Test the explanation. Predict with the explanation.


Sometimes you do not even need to speculate abotu a causal mechanism. You can just assume that one exists. If you understand the causal process, then you understand the properties involved.

## Data Science

A data set is a collection of measurements. A measurement is.
When you measure obsevations, causal processes can be described as relationships between mathematical variables.

When you measure something twice, the measurement changes. Why should this be? Because the intitial conditions changed. This provides a clue to the relationship. If you measure enough points, the relationship will appear as a pattern in your data. 




## Summary

Data science is a method of science that matches the structure of scientific laws to the structure of data sets. Laws appear as patterns in data that can be used to understand, model, and make predictions about events.

Data science is a toolkit for discovering a specific type of information, information that describes parts of the real world that cannot be observed. This type of information is particulary hard to reason about because the only way to prove a description is to observe the part of the world it describes. To make head way, data scientists must mitigate two separate sources of uncertainty.

First, information that describes an unobservable part of the real world an never be verified with certainty. This is an epistemological uncertainty. Data science cannot dispel this uncertainty, but they can identify beliefs that are both useful and reasonable to believe in (and also not obviously wrong). In short, data science identifies the best information to believe in in the face of epistemological uncertainty.

Second, the methods of data science are vulnerable to noise caused by unexplained variation. This creates probabilistic uncertainty. Data scientists usually cannot dispel this type of uncertainty, but they can quantify it. They describe the effects of unexplained variation with a probability distribution and treat each estimate as if it has a random component.

As a toolkit, data science delivers impressive results where none should be had, but do not be confused: data science cannot remove uncertainty altogether. Even the probability estimates that people associate with data science are conditional on a condition that cannot be proved, the condition that your model is true. 

You can boost your success as a data scientist by adopting an attitude of skepticism and curiousity. View each estimate, model, and probability as the best estimate, model, and probability to believe in _given the information at hand_, and always search for ways to acquire more information.

This chapter focused on the theoretical issues that motivate and guide data science. The rest of the book will focus on the practical skills that make data science possible. To do data science, you'll need to know a little about computers and programming. [Data Carpentry](/data-carpentry.md) will get you started loading and manipulating data with the R programming language.

## Test yourself