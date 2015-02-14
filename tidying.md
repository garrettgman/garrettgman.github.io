---
layout: page
title: Data Tidying
weight: 4
---

> "Tidy datasets are all alike but every messy dataset is messy in its own way." – Hadley Wickham

Data science, at its heart, is a computer programming exercise. Data scientists use computers to store, transform, visualize, and model their data. As a result, every data science project begins with the same first step: you must prepare your data to use it with a computer. In the wild, data sets come in many different formats, but each computer program expects your data to be organized in a predetermined way, which may vary from program to program.

In this book, we will use R to do data science. R is an excellent language for data science because with R you can do everything from collect your data (from the web or a database), to transform it, visualize it, explore it, model it, and run statistical tests on it. You can also use R to report your results when you are finished, and you can run R interactively, as if you were operating a calculator and not writing computer code. Best of all, R is free.

In this chapter, you will learn the best way to organize your data for R, a task that I call data tidying. The chapter explains how to change the format, or layout, of tabular data. To learn how to use different file formats with R, see Appendix B: Data Sources.

## Prerequisites

You will need to have R installed on your computer to run the code in this chapter, as well as the RStudio IDE, a free program that makes it easier to use R. You can learn how to install both in _Appendix A: Getting Started_.

You will also need to install the `tidyr`, `devtools`, and `DSR` packages, which contain the functions and data sets we will use. To install, `tidyr` and `devtools`, open RStudio and run the command
    
    install.packages(c("tidyr", "devtools"))

R will download the packages from CRAN, the online R package repository. 

`DSR` is a collection of data sets that I have assembled for this book and saved online as a github repository (http://github.com/garrettgman/DSR). To install `DSR`, run the command

    devtools::install_github("garrettgman/DSR")

## 2.1 Problem

The `who` data set in the `DSR` package contains cases of tuberculosis (TB) reported between 1995 and 2013 sorted by country, age, and gender. The data comes in the _2014 World Health Organization Global Tuberculosis Report_, available for download at http://www.who.int/tb/country/data/download/en/. The data provides a wealth of epidemiological information, but would be difficult to work with in R.

To see the data in its raw form, load `DSR` with `library(DSR)` then run

    View(who)

The `View()` function opens a data viewer in the RStudio IDE. Here you can examine the data set, search for values, and filter the display based on logical conditions. Notice that the `View()` function begins with a capital V.

![](/images/blank.png)
_A subset of the `who` data frame displayed with `View()`._

`who` provides a realistic example of tabular data in the wild. It contains redundant columns, odd variable codes, and many missing values. In short, `who` is messy. It will be difficult to work with the data in R, if we leave it in this format. How can you reorganize the data to make it easy to work with in R? 

## 2.2 Background

### 2.2.1 Tidy Data

Each computer language is organized around a set of conventions that make the language distinct from other languages. These conventions determine how the language:

* assembles information into data structures
* accesses information stored in data structures
* manipulates information once it is accessed 

The conventions also determine which types of data sets will be easiest to handle within the language.

R's conventions make it excellent for handling tabular data, but some types of tabular data are easier to manipulate in R than others. Your data will be easiest to handle if it has a _tidy_ layout. To be tidy, your data set must follow three rules:

1. Each variable in the data set is placed in its own column
2. Each observation in the data set is placed in its own row
3. Each table describes a single type of object

These rules imply a fourth rule that is not officially listed in the definition of tidy data, but will be helpful for spotting untidy data

4. Each value is placed in its own cell

The tidy arrangement builds on an unstated premise of data science that _data sets contain both values and relationships_. Tidy data displays the relationships in a data set as consistently as it displays the values in a data set. 

The four data sets below illustrate the benefit of tidy data in R. Each of the data sets below displays the same data in a different format (the third data set is a collection of two tables). The data sets are derived from `who`; they describe the number of cases of TB reported in several countries over several years.

[DATA TABLES]
![](/images/blank.png)


You might think that these data sets are interchangeable since they display the same information. Each data set shows the same values of four variables _country_, _year_, _population_, and _cases_. However, data set one has a tidy layout, but the other data sets do not. As a result, data set one will be much easier to manipulate in R than the others. 

If you calculate the rate of TB cases per country per year (i.e, the number of people per 10,000 diagnosed with TB), you will need to do four operations with the data. You will need to:

1. Extract the number of TB cases per country per year
2. Extract the population per country per year (in the same order as above)
3. Divide cases by population
4. Multiply by 10000

If you use basic R syntax to do this, your calculations will look like the code below. If you'd like to brush up on basic R syntax, see Appendix A: Getting Started.

#### Data set one

`table1` groups the values of each variable into their own column, which makes them easy to access. 

[DATA 1 VARS]
![](/images/blank.png)

You can calculate the rate like this.

    # Data set one
    table1$cases / table1$population * 10000

#### Data set two

Data set two intermingles the values of _population_ and _cases_ in the same columns. As a result, you will need to untangle the values whenever you wish to work with each variable separately.

[DATA 2 VARS]
![](/images/blank.png)

You'll need to perform an extra step to calculate the rate.

    # Data set two
    case_rows <- c(1, 3, 5, 7, 9, 11, 13, 15, 17)
    pop_rows <- c(2, 4, 6, 8, 10, 12, 14, 16, 18)
    table2$value[case_rows] / table2$value[pop_rows] * 10000

#### Data set three

Data set three separates the values of some variables across two separate tables. This is inconvenient because you will need to extract information from two different places whenever you want to work with the data. 

[DATA 3 VARS]
![](/images/blank.png)

After you collect your input, you can calculate the rate.

    # Data set three
    cases <- c(table3$1999, table3$2000, table3$2001) 
    population <- c(table4$1999, table4$2000, table4$2001)
    cases / population * 10000

The organization of data set three is inefficient in a second way as well. Each variable is stored in a different format: as a column, a set of column names, or a field of cells. As a result, you will need to work with each variable differently. This makes your code hard to generalize. Code that extracts the values of _year_, `names(table3)[-1]`, cannot be generalized to extract the values of population, `c(table4$1999, table4$2000, table4$2001)`. Compare this to data set one. With `table1`, you can use the same code to extract the values of year, `table1$year`, that you use to extract the values of population, `table1$population`. The only change you need to make is to change the name of the variable that you will access.

#### Data set four

Data set four combines the values of cases and population into the same cells. It may seem that this would help you calculate the rate, but that is not so. You will need to separate the population values from the cases values if you wish to do math with them. This can be done, but not with "basic" R syntax.

    # Data set four
    # No basic solution

Data set one is much easier to work with than with data sets two, three, or four. To work with data sets two, three, and four, you need to take extra steps, which makes your code harder to write, harder to understand, and harder to debug.

Keep in mind that this is a trivial calculation with a trivial data set. The energy you must expend to manage a poor layout will increase with the size of your data. Extra steps will accumulate over the course of an analysis and allow errors to creep into your work. You can avoid these difficulties by converting your data into a tidy format at the start of your analysis. This format takes advantages of R's conventions as a vectorized programming language.

#### Variables and data frames

R stores tabular data as a data frame, a list of column vectors. Each column in a data frame is an atomic vector, and the atomic vectors are themselves the element of the list.

[STRUCTURE OF A DATA FRAME]
![](/images/blank.png)

You can see this arrangement by unclassing a data frame.

    unclass(table1)

Since each column in a data frame is an element in a list, you can easily extract the columns one at a time with R's `$` syntax. R will return the values in the column as an atomic vector, which is the most used data structure in R. Many functions in R are written to take atomic vectors as input, as are R's mathematical operators.

    table1$cases

***
**Tip** - See Appendix A: Getting Started to learn more about atomic vectors, lists, and data frames.
***

As a result, you can easily access the values of each variable if your data places each variable in its own column. You can also immediately pass the values to a function or a mathematical expression because R will return the values as an atomic vector. 

This is very useful since many statistical (and mathematical) operations operate on all of the values of a variable at once. For example, you need all of the known values of a variable to calculate the variable's mean or variance. 

    mean(table1$cases)
    ##

    sd(table1$cases)
    ##

You can also easily access `table1`'s variables to do calculations like 

    table1$cases / table1$population * 10000

these calculations are aided by a second feature of tidy data.

### 2.1.2 Observations and execution

R executes operations between vectors in element-wise fashion. When you compute an operation between vectors, R will first perform the operation with the first elements of each vector involved. Then R will repeat the operation with the second elements of each vector involved, and so on until R reaches the end of the vectors. If one vector is shorter than the others, R will recycle its values as needed until execution is complete (according to a set of predetermined rules). 

As a result of element-wise execution, each operation between vectors returns a new vector of values. The _nth_ value of the results vector will depend on only the _nth_ elements of the input vectors.

[FIGURE ELEMENT-WISE OPERATIONS]
![](/images/blank.png)

Tidy data takes advantage of element-wise execution by organizing each observation in the data set into its own row. This arrangement ensures that the _nth_ value of each variable correspond with the _nth_ observation. As a result, operations between variables will preserve observations. Values from one observation will only be paired with other values in the same observation. 

This is exactly what you want. It makes sense to divide the number of cases of TB in Afghanistan in 1999 by the population of Afghanistan in 1999 to calculate a rate, but it does not make sense to divide across countries or years. The number of cases in Afghanistan in 1999 divided by the population of Brazil in 1999 does not return a meaningful result. 

Your data will be easy to manipulate in R if it has a tidy layout. The next sections will show you how to transform untidy data sets into tidy data sets.

***
Tidy data was popularized by Hadley Wickham, and it serves as the basis for many R packages and functions. You can learn more about tidy data by reading _Tidy Data_ a paper written by Hadley Wickham and published in the Journal of Statistical Software. _Tidy Data_ is available online at http://www.jstatsoft.org/v59/i10/paper.
***

### 2.2.2 `spread()` and `gather()`

1. The tidyr package provides tools that make it easy to change the layout of a tabular data set
2. The two most important tools are `gather()` and `spread()`. At first, what they do may seem abstract.
3. Each relies on the concept of a key:value pair. Explain.
4. Gather takes a field of cells and converts them to a key column and a value column. As a result the former column names are placed into their own column. So we can use gather to tidy table3 and table4
5. Spread takes a key and value column and spreads it into a field of cells. Each unique name in the key column becomes its own column. The values in the value column are dispersed in the field of cells in a way that preserves the orginal arrangements.
6. So you can use psread to make table two tidy.

The `tidyr` package by Hadley Wickham is designed to help you tidy your data. It contains four functions that alter the layout of tabular data sets. You can use these function to make your data sets tidy while preserving the values and relationships contained in the data sets. 

You can install `tidyr` from CRAN with `install.packages("tidyr")`.

#### key value pairs

Before you use `tidyr`, you should understand the concept of a _key value pair_. `tidyr` uses key value pairs to make data tidying concrete.

A key value pair is a simple way to express a value and explain what the value means at a same time. The pair contains two parts: a _key_ that explains what the value describes, and a _value_ that contains the actual value. So for example, each of these would be a key value pair

Name: Garrett
Date: 01/01/2000
Password: 0123456789 

Key value pairs are frequently used in computer science, and are sometimes called attribute value pairs, identifier value pairs, or field value pairs.

In data science, a key value pair would be a value of a variable paired with the name of a variable. The name of the variable forms the key, and the value forms the value. You could decompose `table1` into a group of key value pairs, but it would cease to be a useful data set because you no longer know which values belong to the same observation.

    Country: Afghanistan
    Country: Brazil
    Country: China
    Year: 1999
    Year: 2000
    Year: 2001
    Population:
    Population:
    Population:
    Cases: 
    Cases:
    Cases:

Every cell in a table of data contains one half of a key value pair, as does ever columns name. In tidy data, each cell will contain a value and each column will contain a key, but this doesn't need to be the case for untidy data. Consider `table2`. In `table2`, the `key` column contains only keys (and not just becuase the column is labelled `key`). Conveniently, the `value` column contains the values associated with those keys.

You can use the `spread()` function in `tidyr` to reshape data sets that have key value columns, like `tble2`, into a tidy format.

#### `spread()`

`spread()` turns a pair of key value columns into a set of tidy columns. To use `spread()`, pass it the name of a data frame and then the name of the key column in the data frame and the name of the value column. The column names should not be in quotes. To tidy `table2`, you would pass `spread()` the `key` column and then the `value` column.

    table2

    spread(table2, key, value)

It returns a copy of your data set that has had the key and value columns removed. In their place, `spread()` adds a new column for each unique value of the key column. These unique values will form the column names of the new columns. `spread()` distributes the cells of the former value column across the cells of the new columns and truncates any non-key, non-value columns in a way that prevents duplication.

You can see that `spread()` maintains each of the relationships expressed in the original data set. The output contains the four original variables, _country_, _year_, _population_, and _cases_.

[SPREAD VARS]
![](/images/blank.png)

And the values of these variables are grouped according to the orginal observations.

[SPREAD OBS]
![](/images/blank.png)

But now the layout of these relationships is tidy.

In addition to `data`, `key`, and `value`, `spread()` takes three optional arguments. 

* **`fill`** - If the tidy structure creates combinations of variables that do not exist in the original data set, `spread()` will place an `NA` in the resulting cells. `NA` is R's missing value symbol. You can change this behaviour by passing `fill` an alternative value to use.

* **`convert`** - If a value column contains multiple types of data, its elements will be saved as a single type, usually character strings. As a result, the new columns created by `spread()` will also contain character strings. If you set `convert = TRUE`, `spread()` will run `type.convert()` on each new column, which will convert strings to doubles (numerics), integers, logicals, complexes, or factors. 

* **`drop`** - The `drop` argument controls how `spread()` handles factors in the key column. If you set `drop = FALSE`, spread will keep factor levels that do not appear in the key column, filling in the missing combinations with the value of `fill`.	

You can think of `spread()` as taking a pair of key value columns and using them to create a rectangular field of cells. The key values become the column names of the cells, and the value values become the cells themselves. The `gather()` function in `tidyr` does just the inverse. It takes a field of cells and converts them into a pair of "key" value columns.

#### `gather()`

`gather()` collects a set of column names and places them into a single "key" column. It also collects the cells of those columns and places them into a single value column. We can use `gather()` to tidy `table3`.

    table3

To use `gather()`, pass it the name of a data frame to reshape. Then pass `gather()` a character string to use for the name of the "key" column that it will make, as well as a character string to use as the name of the value column that it will make. Finally, specify which columns `gather()` should collapse into the key value pair (here with integer notation).

    gather(table3, "year", "population", 2:4)

`gather()` returns a copy of the data frame with the specified columns removed. To this data frame, `gather()` has added two new columns: a "key" column that contains the former column names of the removed columns, and a value column that contains the former values of the removed columns. `gather()` repeats each of the former column names (as well as each of the original columns) to maintain each combination of values that appeared in the original data set. `gather()` uses the first string that you supplied as the name of the new "key" column, and it uses the second string as the name of the new value column.

I've placed "key" in quotation marks because you will usually use `gather()` to create tidy data. In this case, the "key" column will contain values, not keys. The values will only be keys in the sense that they were formally in the data sets column names, a place where keys belong.

Just like `spread()`, gather maintains each of the relationships in the original data set. This time `table3` only contained three variables, _country_, _year_ and _population_. Each of these appears in the output of `gather()` in a tidy fashion.

[GATHER VARS]
![](/images/blank.png)

`gather()` also maintains each of the observations in the original data set, organizing them in a tidy fashion.

[GATHER OBS]
![](/images/blank.png)

We can use `gather()` to tidy `table4` in a similar fashion.

    gather(table4, "year", "cases", 2:4)

In this code, I identified the columns to collapse with a series of integers. `2:4` describes the second, third, and fourth columns of the data frame. You can identify the same columns with each of the command below.

    gather(table4, "year", "cases", c(2, 3, 4))
    gather(table4, "year", "cases", -1)

You can also identify columns by name with the notation introduced by the `select` function in `dplyr`, see Section 3.1. 

In Section 3.6, you will learn how to combine two data frames, like the tidy versions of `table3` and `table4` into a single data frame.

`spread()` and `gather()` are the two most useful tools for reshaping the layout of your data (and making it tidy). `spread()` takes long data and makes it wider, and `gather()` takes wide data and makes it longer. In the next section, you will learn about two functions that complement `spread()` and `gather()`, `separate()` and `unite()`.

### 2.2.3 `separate()` and `unite()`

`table5` demonstrates a new way for a data set to be untidy. Each element of the `location` column combines the values of multiple variables into a single cell. Here, `location` is a combination of the _country_ and _year_ variables, an untidy arrangement because the variables do not appear in their own columns. 

    table5

If you want to use the values of _country_ or _year_, you will first need to separate `location` into its component parts, a task you can do with `separate()`. `separate()` turns a single character column into multiple columns by splitting the values of the column wherever a separator character appears. 

[SEPARATE DIAGRAM]
![](/images/blank.png)

To use `separate()` pass separate the name of a data frame to reshape and the name of a column to separate. Also give `separate()` and `into` argument, which should be a vector of character strings to use as new column names. `separate()` will return a copy of the data frame with the column removed. The previous values of the column will be split across several columns, one for each name in `into`.

    separate(table5, location, into = c("country", "year"))

By default, `separate()` will split values wherever a non-alphanumeric character appears. Non-alphanumeric characters are characters that are neither a number nor a letter. For example, in the code above, `separate()` split the values of `location` at the underscore character.

If you wish to use a specific character to separate a column, you can pass the character (as a regular expression) to the `sep` argument of `separate()`. For example, we could rewrite the code above as 

    separate(table5, location, into = c("country", "year"), sep = "\\_")

See Appendix E to learn more about regular expressions in R. 

You can also pass an integer or vector of integers to `sep`. `separate()` will interpret the integers as positions to split at. Positive values start at 1 at the far-left of the string; negative value start at -1 at the far-right of the string. The length of `sep` should be one less than the number of names in `into`. You can use this arrangement to separate the last two digits of each year.

    table5_2 <- separate(table5, location, into = c("country", "year"), sep = "\\_")
    separate(table5_2, year, into = c("century", "year"), sep = 2)

You can futher customize `separate()` with the `remove`, `convert`, and `extra` arguments:

* **`remove`** - Set `remove = FALSE` to retain the column of values to separate in the final data frame.
* **`convert`** - By default, `separate()` will return new columns as character columns. Set `convert = TRUE` to convert new columns to double (numeric), integer, logical, complex, and factor columns with `type.convert()`.
* **`extra`** - `extra` controls what happens when the number of new values in a cell does not match the number of new columns in `into`. If `extra = error` (the default), `separate()` to return an error. If `extra = drop`, `separate()` will drop new values and supply `NA`s as necessary to fill the new columns. If `extra = merge`, `separate()` will split at most `length(into)` times.

You may sometimes want to do the opposite of `separate()`: combine multiple columns into a sinse column. Many variables, like dates and blood pressures are meaningful variables built from a combination of separate values. For example, dates are a combination of _year_, _month_, and _day_ values, like 2015-01-01; and blood pressures are fractions made of _systolic pressure_ values (the numerator) and _diastolic pressure_ values (the denominator), like 110/80.

If the components of such a variable appear in separate columns, you can combine them into a character column with `unite()`. Give `unite()` the name of the data frame to reshape, the name of the new column to create (as a character string), and the names of the columns to unite. `unite()` will place an underscore (\_) between values from separate columns. If you would like to use a different separator, or no separator at all, pass the separator as a character string to `sep`.

[UNITE DESCRIPTION]
![](/images/blank.png)

We can use `unite()` to join together the _century_ and _year_ columns that we created in the last example.

    table5_3 <- separate(table5_2, year, into = c("century", "year"), sep = 2)
    table5_3

    unite(table5_3, "new", century, year, sep = "")

`unite()` returns a copy of the data frame that includes the new column, but not the columns used to build the new column. If you would like to retain these columns, add the argument `remove = FALSE`.

You can also use integers or the syntax of the `dplyr::select` to specify columns to unite in a more concise way. We'll learn about `select` in Section 3.1.

## 2.3 Solution
