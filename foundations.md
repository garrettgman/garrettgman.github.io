---
layout: page
title: Foundations of Data Science
weight: 3
---

Data science is a _method_ of science. This sets it apart from other fields that are _branches_ of science. A branch of science uses scientific techniques to study a single subject. For example, physicists study physical systems, chemists study chemical systems, and computer scientists study computation. But data science is different.  

Data scientists study a method that anyone can use to solve scientific problems. You can think of data science as a complement to experimental science. Experimental scientists use the experimental method to solve scientific problems, and data scientists use the data science method. Many scientists use both.

This chapter will describe the problems that data scientists attempt to solve, as well as the methods that they use to solve them. It introduces data science as a specific method of reasoning that addresses the questions "What can you know?" and "How can you know it?" This method of reasoning guides the techniques that you will learn in later chapters—techniques like machine learning, statistical modelling, and visualization.

### The goal of data science

Although data scientists study many different subjects, they all have the same goal.

Data science reasons about unobserved a posteriori knowledge.

### Variation

Everything varies, which makes data science difficult: you cannot assume that unobserved events will resemble observed events (although they might).

### Laws

Scientists act as if variation can be explained by laws. Events with similar conditions will have similar outcomes. Events with differenct conditions will have outcomes that differ in predictable ways.

### The structure of data

The structure of data matches the structure of scientific laws. Laws appear as patterns in the data.

### Unexplained variation

If you do not account for all of the variables at play, your data will be noisy (this is usually the case). Hence, you will need to estimate the pattern.

### Models

Models provide an a priori reasonable way to estimate patterns. Here are several examples.

### Inference to the best explanation

The same data can support multiple models. Choose the one that seems to offer the highest predictiv accuracy because this is the most pragmatic thing to do. 

### Conjecture and refutation

Discovering a hypothesis is different than justifying it. Conjecture and refutation provides a way to justify, but it has trouble dealing with probability.

### Summary

Data science is a method of reasoning about unobserved a priori knowledge. It matches the structure of data to the structure of scientific laws. To do data science, you'll need to know a little about computers and programming.

### Test Yourself

These exercises are more open-ended than the exercises in the following chapters. Some of the questions below do not have answers, but they are still very important. You should have an opinion that you can defend for each of the topics.

1. **Explain data science**

    Your boss walks in and he's furious. You gave him a prediction that turned out wrong, and the company lost millions. He's suddenly very interested in cutting costs. He has mathematicians to crunch numbers, and computer scientists to write programs. In a menacing voice, he leans in and asks, "Why do I need a data scientist?"

    a. Explain how data science is different than math.  
    b. Explain how data science is different than computer science.

2. **Infinite regress** 
    
    Philosophers define knowledge as _justified true beliefs_. To know something, you must have a reason (i.e., justification) for beliving that it is true. Otherwise, your belief is just a guess.

    This creates a problem of infinite regression. To justify one belief, you must know something that gives you reason to believe that it is true. However, this supporting piece of knowledge must itself be justified, which will require a third piece of knowledge, and so on. 

    It seems that to know anything, you must know an infinite number of things. Or, you must know something that itself does not need to be justified. Philosophers call knowledge that does not need to be justified _foundational knowledge_. How does science solve the infinite regress problem? (Hint: Do scientists treat one type of knowledge as foundational?).

3. **Truth**

    The _correspondence theory of truth_ provides the most widely accepted and influential definition of truth: a statement is true if it corresponds to the way things really are. In other words, a statement is true if it accurately describes how things are in the real world. 

    Explain why a hypothesis that describes observations is likely to be true according to the correspondence theory of truth. Why might such a hypothesis not be true?

4. **The problem of induction**

    Data science relies a common form of reasoning known as _induction_. An inductive argument draws a conclusion that states more than what is implied by the premises. For example, the following inductive argument draws a conclusion that goes beyond what is described in the first two statements.

    The high temperature was ninety degrees yesterday.  
    The high temperature was ninety degrees today.  
    Therefore, the high temperature will be ninety degrees tomorrow.

    In essence, an inductive argument assumes an unstated premise, that unobserved outcomes will resemble observed outcomes.

    Inductive reasoning has led to many scientific discoveries, but it suffers a serious problem. It is difficult to prove that induction is a reasonable thing to do. Consider an obvious approach. You may argue

    Induction has worked on occasion A.  
    Induction has worked on occasion B.  
    Induction has worked on occasion C.   
    ...  
    Therefore, induction will work in the future.

    This argument only holds if you assume that future cases of induction (unobserved events) will resemble previous cases of induction, which were successful (observed events). This assumption is itself a form of induction. In other words, this line of reasoning is circular: it relies on induction to justify induction.

    David Hume described this as the _problem of induction_. He asserted that induction cannot be logically justified. Since then, philosophers have largely confirmed his assertion.

    Is induction a reasonable way to learn about the world? How do you justify using inductive methods in data science? 

4. **The problem of deduction** 

    Given the problem of induction, many people prefer deductive reasoning. A deductive argument draws a conclusion that is implied by its premises. If the premises are true, then the conclusion must also be true. For example, the deductive argument below draws a conclusion that _must_ be true if its premises are true.

    All men are mortal.  
    Socrates is a man.  
    Therefore, Socrates is mortal.

    Deductive arguments are logically valid, but do they create new knowledge? Does the conclusion reveal something that you did not already know based on your premises?

5. **The role of math** 

    As commonly used, mathematics is a type of deductive reasoning. Mathematical proofs begin with a set of premises and return a conclusion that must be true if the premises are true. 

    Data scientists attempt to discover _a posteriori_ knowledge, knowledge 





