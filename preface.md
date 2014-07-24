---
layout: page
title: Preface
weight: 2
---

***
_Note: This book is a work in progress. Some of the book is unwritten, and other sections need editing. Please email me at [garrett@rstudio.com](mailto:garrett@rstudio.com) if you would like to make suggestions or point out errors._

***

This book will teach you how to do data science with R. You'll go from loading data to fitting models (which you will understand better than most researchers). But this is not a typical book on data science. I want to help you excel at science, not math, so this book will focus on practical skills and reasoning.

As a teacher, I've found that the usual methods of teaching data science omit two important things:

1. The practical skills that make data science possible, and
2. A set of foundations to guide data science practice

You'll master both of these components in the chapters that follow.

## A practicum for data science

Just as a chemist learns how to clean test tubes and stock a lab, you'll learn how to clean data and draw plots—and many other things besides. These are the skills that allow data science to happen. They include

* **Data Carpentry** - how to load, reformat, and save data with R
* **Data Wrangling** - how to reshape and combine data sets, as well as how to extract new variables, observations, and summary statistics
* **Data Visualization** - how to display your data in any type of graph that you can imagine
* **Exploratory Data Analysis (EDA)** - how to search your data for patterns and relationships
* **Reporting** - how to document your work in a way that can save time, vindicate your results, and be understood by non-data scientists

The book introduces "Best Practices" for each of these skills and incorporates well known patterns from cognitive and computer science into the practice of data science. You'll learn how to use the grammar of graphics, literate programming, and reproducible research to save time. You'll also learn how to manage cognitive resources to facilitate discoveries when wrangling, visualizing, and exploring data. 

## The foundations of data science

Practical skills are important, but there is something even more fundamental to data science (and even more neglected): the philosophical foundations that guide all of data science. 

From the very start of this book you will learn to see data science as a specific _method of reasoning_, a method that has been well described by Philosophy of Science and Epistemology, two fields closely related to data science. This method of reasoning unifies all of the tools that you should know as a data scientist, which frees your attention to master the principles that solve the problems of data science. 

Throughout the book, I use the foundations of data science to create a _top down_ approach to the field that will build your intuition and judgement. I think that this is an important and new way to teach data science.

As a graduate student, and then instructor, I've been dismayed to see data science taught from the bottom up. Students are presented with a sequence of modelling techniques that are reliable in different situations. The implicit message is that data science involves matching the right modelling technique to the right data set. If you do not yet know the right technique for your data, there is little you can do.

This method of instruction is limiting in three ways.

1. Students must study for an exceptionally long time before they know enough techniques to be competent in the wild. In the meantime, students face a great temptation to pretend that the techniques that they do know will be reliable in the situations that they encounter.
2. This method of instruction fetishizes modelling techniques. Students come to see models as black boxes that deliver answers. In reality, modelling techniques are a small tool in a much larger reasoning process. This reasoning process—and not the technique—determines whether the results are useful.
3. The traditional way of teaching data science also tends to overstate the role of math in scientific exploration. Math is a useful tool once you choose a set of assumptions, or discover a plausible hypothesis to test. But to use math, you must know how to spot set of assumptions that accurately describes reality. You must also know how to discover plausible hypotheses to test. These are scientific concerns, not mathematical ones.

<!---

## The role of math

One of the biggest surprises in this book is that I do not cover (deeply) the mathematical details of machine learning and statistical modelling methods. Instead, I focus on the universal reasoning that underlies each method.

Many excellent books exist that catalogue the techniques of data science and the mathematics that underpin them. _The Elements of Statistical Learning_ is one of my favorites. These books provide a valuable resource to data science, but I think their importance is overstated.

Data science is not an exercise in math, it is a method of reasoning. In fact, math is poorly suited for the work of data science. This sounds blasphemous at first, but it is easy to see. As a method of science, data science attempts to reason about _a posteriori_ knowledge. A posteriori knowledge is knowledge that can only be proven by observations. 

For example, the sentence "Jim has blue eyes" is a type of a posteriori knowledge. There is nothing about the statement "Jim has blue eyes" that indicates whether it is true or false. The matter can only be settled by observing a fact about the world: whether or not Jim indeed has blue eyes.

Math deals exclusively with _a priori_ knowledge, knowledge that can be known purely through logic—no observations required. In otherwords, math can tell you whether 2 + 2 equals 4, but it has little to say about Jim and the color of his eyes.

To apply math to a posteriori knowledge, you must make an assumption that turns a posteriori knowledge into a priori knowledge. For example, you can assume that "all people whose name begins with J have blue eyes." This premise will let you use logic to conclude that Jim has blue eyes. No observations are required; if the premise is true, his eyes are blue.  

Statisticians turn a posteriori knowledge into a priori knowledge when they assume that data is gaussian, a sample is random, and so on. These assumptions act as premises whose implications can be revealed by math.

Though convoluted, this approach can be very useful. However, it diverts attention 


If you assume that drug X cures type Z diseases _and_ you assume that disease Y is a type Z disease, then you can reason out that drug X will cure disease Y.

However, this reasoning requires an assumption that then becomes a weak link in your reasoning.

It is not difficult to reason about a posteriori knowledge. This is the business of science. Scientists search for a posteriori knowledge and mathematicians search for a priori knowledge (at least that is how I understand the difference between the two fields). Philosphers of science developed a method for reasoning about a posteriori knowledge. This method, and not math guides the practice of data analysis. Chapter 1 introduces this method as the foundation for data science. It also explains the important, but limited, role that math plays in data science.



What role then does math play in data science? It determines whether a method is reliable given a set of assumptions. For most data science methods, the math has already been worked out. You do not need to work through it again, unless you wish to do so as a learning exercise. 

You'll also make rapid progress by avoiding mathematical minutiae that is no longer as relevant as it used to be due to advances in machine learning techniques.




## We can do better

-->

## The role of programming

This is a book on data science, which means it is also a book on computer programming. You can do little as a data scientist without knowing how to program. As a data scientist, you will use computers to 

1. store information
2. manipulate large data sets, and
3. automate difficult, boring, and repetitive tasks

Unfortunately, computer programming is a field as broad and as deep as data science itself. It would be a folly to try to learn both how to program and how to do data science at the same time.

<!---
But learning to program is a large task. It does not make sense to distract your self with learning to program when you are trying to learn data science, an equally large task. You do not want to overload your self the way a typical Statistics 101 class overloads college freshmen. We try to teach them calculus, probability, and variation all at once. Each of these would be a tall order on its own, and as a result the students learn nothing.
-->

This book will teach you the bare minimum of programming that you will need to know to do data science. I've integrated the programming material into the book in a way that does not distract from the main goal: learning to do data science. You'll learn what you need to know about programming, when you need to know it. 

I've designed the book to be easy to read if you have never worked with a computer before. The book relies on a user-friendly computer language, R, and emphasizes easy to use R tools. These tools are specifically designed to make it easier and more intuitive to do good data science. The tools are designed by people I know and work closely with, people like Hadley Wickham, Winston Chang, Joe Cheng, Yihui Xie, and JJ Allaire. These developers are well known in the field of statistical computing for making useful, easy to use tools.

That said, you will do best if you already have some experience doing basic data manipulations with R, the computer language I use in this book. There are some wonderful, free online tutorials that can teach you the basics of R. I particularly recommend the tutorial at [tryr.codeschool.com](http://tryr.codeschool.com/). It guides you through the basic R syntax with a series of interactive lessons that provide instant feedback.

If you would like a deeper understanding of computer programming or R, read the companion volume to this book, [_Hands-On Programming with R_](http://shop.oreilly.com/product/0636920028574.do). _Hands-On Programming with R_ teaches you how to use all of R's programming capabilities. It is organized around a series of concrete projects that beginners will find easy to follow, and I wrote it with data science in mind.

### R

I recommend the R programming language for doing data science. R was designed specifically for data scientists and has evolved in a university setting to be very friendly to new programmers. Plus, R is completely free and open source. Don't be afraid if you've never used a computer language before; R is really quite simple. In the beginning, you can use R as if it were a fancy calculator. As you progress, you'll find that you can use R to do everything that you'll do as a data scientist.

As an R user, you can also take advantage of RStudio, a third party program that makes R even easier to use. RStudio amplifies many of R's abilities and provides a host of shortcuts that make R easier to use (and learn). I'll use RStudio throughout this book because it provides a uniform interface to R for Windows, Mac, and Linux users. This will help me match the book to your experience. Also, I work for RStudio as a trainer and a data scientist. This gives me a first hand knowledge of the program that I hope to pass on to you.

I wrote this book with both new and old R users in mind. If you've never used R, you'll be able to learn as you go. If you have used R, you'll learn how to use it to analyze data. 

### Why not Excel? Or Jmp? Or...

You may be wondering, "Can't I learn to analyze data with Excel? or Jmp? or some other pre-made software?" Of course you can. There are many applications that do impressive things with data, but learning R will put you a step ahead. Why? Because pre-made software limits you to a set of pre-made tools. Eventually, you'll want to ask your data a question that your software cannot answer. This is never a problem with R because you can create your own reusable tools as you go. 

Not only does R let you do what you like with data, there's an entire community of R developers who build free tools that make it easy for you to do cool things with data. Here are some examples of what will be at your fingertips once you learn R.

#### Interactive web graphics

The [Shiny](http://shiny.rstudio.com) R package, a brain child of Joe Cheng at RStudio, makes it easy to turn R code into interactive web applications. With a few lines of code (here less than 100), you can build a web page like the one below. The graphs automatically respond as you manipulate the side bar, or as new data comes in. The whole thing is meant to be interactive, so you'll have to visit [shiny.rstudio.com/gallery](shiny.rstudio.com/gallery) and view it in person to do it justice.

!["A Shiny web graphic"](/images/preface-shiny.png)

Shiny apps are new on the R scene, but they are changing how researchers explore data, present findings, and impress clients. Since Shiny apps are web documents, you can share them with anyone who has a web browser. The best part is you don't need to know any web programming. Shiny takes care of that for you. You'll learn how to build Shiny apps in Chapter 12.

#### Automated reporting

The [rmarkdown](http://rmarkdown.rstudio.com) R package created by JJ Allaire and Yihui Xie, also of RStudio, lets you embed R results inside of text documents, such as pdfs, web pages, and slideshows. You write R code in your document wherever you want results to appear. With the click of a button, rmarkdown will execute the R code and replace it with its results (which can be a number, a table, a graph, or anything). 

Why would you do this? It lets you write reports that can be automatically updated as new data comes in. You'll learn how to write rmarkdown reports in Chapter 11.

#### Reproducible Research

It may not have occurred to you, but you will also create a reproducible record of your research just by using R. The code you write to explore and analyze data becomes a precise account of your work that you can rerun at any time. You can share this code with your teammates, and you can cite it if you ever have to defend your findings. Most importantly, you can use this code to quickly recreate your work on a new or updated data set. 

#### Resumé Material

As a final note, R also helps you shine on the job market. Industrial statistics programs, like SAS, costs tens of thousands of dollars a year to use, but R does the same things for free -- and companies are starting to realize it. Trend setters like Google, Facebook, and Pfizer have already adopted R, and many smaller companies switch over every day. 

Learning to program in R is not hard, and I will make it as easy as I can for you with this book. Against this small investment, you will gain a marketable skill and the freedom to solve whatever data-related challenges you encounter. 

## Acknowledgements

Although this book is not yet written, I have many people to thank. _Data Science with R_ is part of a larger project that has already led to [_Hands-On Programming with R_](http://shop.oreilly.com/product/0636920028574.do), a book that teaches how to program with R. My two editors Courtney Nash and Julie Steele have been indispensible to the project, as has Ann Spencer, my de facto liason at O'Reilly over the past few months.

I would also like to thank Hadley Wickham, Winston Chang, Stephanie Hicks, and Jaime Ramos, who I regularly discuss data science with; as well as O'Reilly Media and RStudio, who have helped make this book and this website possible.

A more personal thanks goes to my supportive wife, Kristin, and to the many readers who have provided early comments on the book. Thank you.