
<!-- rnb-text-begin -->

---
title: "R: Basic Operations"
output: html_notebook
---

# R: Basic Operations

## Comments

Comments in R are denoted by `#`


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIyBUaGlzIGlzIGEgY29tbWVudFxuIyBIZXJlIGlzIGFub3RoZXIuXG5gYGAifQ== -->

```r
# This is a comment
# Here is another.
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


There is no built-in way to do multi-line comments.

## Mathematical Operations

Mathematical operations in R are handled using the standard 4 symbols `+, -, /, and *` . Operations are calculated using PEMDAS.

### Addition


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIyBBZGRpdGlvblxuMTAgKyA1MTJcbmBgYCJ9 -->

```r
# Addition
10 + 512
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDUyMlxuIn0= -->

```
[1] 522
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Subtraction


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIyBTdWJ0cmFjdGlvblxuOTIxIC0gMTRcblxuYGBgIn0= -->

```r
# Subtraction
921 - 14

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDkwN1xuIn0= -->

```
[1] 907
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Multiplication


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIyBNdWx0aXBsaWNhdGlvblxuMTIgKiA0MlxuXG5gYGAifQ== -->

```r
# Multiplication
12 * 42

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDUwNFxuIn0= -->

```
[1] 504
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Division


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIyBEaXZpc2lvblxuOTI1IC8gNVxuXG5gYGAifQ== -->

```r
# Division
925 / 5

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDE4NVxuIn0= -->

```
[1] 185
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## Variable Assignment

Variables in R are traditionally assigned using an arrow sign `<-` , made using a less than carat and a dash. It is valid to use `=` , but not recommended.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIyBvcHRpb24gYW5kIC0gd2lsbCBjcmVhdGUgdGhlIGFycm93IHNpZ25cbnggPC0gMTBcbnhcbmBgYCJ9 -->

```r
# option and - will create the arrow sign
x <- 10
x
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDEwXG4ifQ== -->

```
[1] 10
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Variable names can not include and spaces or symbols other than the underscore `_` . They cannot begin with numbers, but can include numbers after the first character.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxud29tcF9hX2RvbXBcblxuYGBgIn0= -->

```r
womp_a_domp

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFwiUmljayBhbmQgTW9ydHlcIlxuIn0= -->

```
[1] "Rick and Morty"
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## Data Types

R has the following data types: numeric, integer, character, logical, and complex.

### Numeric

Decimal values in R are numerics. Numerics are the default data type for numbers.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuY2xhc3MoYSlcblxuYGBgIn0= -->

```r
class(a)

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFwibnVtZXJpY1wiXG4ifQ== -->

```
[1] "numeric"
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuY2xhc3MoYilcblxuYGBgIn0= -->

```r
class(b)

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFwibnVtZXJpY1wiXG4ifQ== -->

```
[1] "numeric"
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Note: Numerics are not integers. You can confirm this with both a and b above using the `is.integer()` function.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuaXMuaW50ZWdlcihhKVxuXG5gYGAifQ== -->

```r
is.integer(a)

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIEZBTFNFXG4ifQ== -->

```
[1] FALSE
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuaXMuaW50ZWdlcihiKVxuXG5gYGAifQ== -->

```r
is.integer(b)

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIEZBTFNFXG4ifQ== -->

```
[1] FALSE
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Integer

To create an integer in R we can use the `as.integer()` function.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuY1xuXG5gYGAifQ== -->

```r
c

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDFcbiJ9 -->

```
[1] 1
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuaXMuaW50ZWdlcihjKVxuXG5gYGAifQ== -->

```r
is.integer(c)

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFRSVUVcbiJ9 -->

```
[1] TRUE
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


For shorthand, we can also define an integer by writing the desired integer value, followed by a capital L.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuY2xhc3MoZClcblxuYGBgIn0= -->

```r
class(d)

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFwiaW50ZWdlclwiXG4ifQ== -->

```
[1] "integer"
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuZFxuXG5gYGAifQ== -->

```r
d

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDFcbiJ9 -->

```
[1] 1
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Integers must be whole numbers, if passed a floating value, the number will be rounded to an integer.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuZFxuXG5gYGAifQ== -->

```r
d

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDNcbiJ9 -->

```
[1] 3
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


This also works with a string.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuZVxuXG5gYGAifQ== -->

```r
e

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDNcbiJ9 -->

```
[1] 3
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


We would use an integer data-type when we want to represent a whole integer, and don't want to accept any other variations of numbers. The numeric data-type is less strict, it allows us to switch between different number types like integers and floats dynamically.

### Character

A **character** type is used to represent strings in R. Characters can be denoted by writing within quotes.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxubmFtZVxuXG5gYGAifQ== -->

```r
name

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFwiSm9lXCJcbiJ9 -->

```
[1] "Joe"
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


#### Concatenating character objects

Character objects can be concatenated into a single variable using the `paste` function


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuZnVsbF9uYW1lXG5cbmBgYCJ9 -->

```r
full_name

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFwiSm9lIFNtaXRoXCJcbiJ9 -->

```
[1] "Joe Smith"
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


#### Converting into character objects

We can convert other objects into character objects using the `as.character()` function


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIyBOb3RlIHRoYXQgY2xhc3MgcmV0dXJucyB0aGUgZGF0YSB0eXBlIG9mIG91ciBvYmplY3RcblxuYGBgIn0= -->

```r
# Note that class returns the data type of our object

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


#### Printing character types

You can print out hardcoded character objects with the `print` function


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


You can print out formatted character objects with the `sprintf` function. You can use the following symbols to represent formatted parts of the code, each should be preceded by a `%` symbol:

-   d and i - Integer values

-   s - Character string

-   o - Octal

-   x and X - Hexadecimal

-   f - Double precision value (For fixed point representation, for example: 21.234)

-   e and E - Double precision value (For exponential representation, for example: 2.1234e+01)


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


#### Return a substring

You can get a substring from a character object using the `substr` function


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


#### Replacing characters in a string

You can replace characters in a string using the `sub` function


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Logical

A logical value is commonly referred to as a boolean value. It is the result of a comparison between two variables. It is represented as `TRUE` or `FALSE.`


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


#### Logical Operators

The standard logical operations are:

-   `&` - And

-   `|` - Or

-   `!` - Not


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Complex

A complex object in R is created using the symbol `i` . The use of the i symbol is in reference to imaginary numbers.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## Comparison Operators

You can use the following operators to compare two variables and return a logical object:

-   `<` Less than

-   `>` Greater than

-   `<=` Less than or equal to

-   `>=` Greater than or equal to

-   `==` Is equal to

-   `!=` Is NOT equal to


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## Homework

1.  Create two strings with your first and last name, respectively. Then concatenate them, and print the new value as "My name is \<your newly created concatenated variable will go here\>"


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->

    

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


2.  What values can a BOOLEAN contain?

<!-- rnb-text-end -->

