
<!-- rnb-text-begin -->

---
title: "R Notebook"
output: html_notebook
---

# R: Data Structures

## Vectors

Vectors are a list-like data structure that can contain any number of items of the same data type. Vector elements are separated by commas, and the entire vector must be wrapped in `c()`


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxubmFtZXNcblxuYGBgIn0= -->

```r
names

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFwiSm9oblwiICBcIkppbVwiICAgXCJKZW5ueVwiIFwiSmFrZVwiICBcIkphblwiICBcbiJ9 -->

```
[1] "John"  "Jim"   "Jenny" "Jake"  "Jan"  
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Getting a Vector's Type

You can get the type of the elements inside of a vector using the `typeof()` function


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxudHlwZW9mKG5hbWVzKVxuXG5gYGAifQ== -->

```r
typeof(names)

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFwiY2hhcmFjdGVyXCJcbiJ9 -->

```
[1] "character"
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Getting a Vector's Length

You can get the length of a vector using the `length()` function


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxubGVuZ3RoKG5hbWVzKVxuXG5gYGAifQ== -->

```r
length(names)

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDVcbiJ9 -->

```
[1] 5
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Indexing a Vector

You can get the value at a specific index in your vector by placing the elements position within brackets, ex: `[1]` .

**NOTE: Indexes in R start at 1, NOT 0.**


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIyBOb3RlIHRoaXMgcmV0dXJucyBcIkpvaG5cIiwgdGhlIGZpcnN0IGVsZW1lbnQgaW4gb3VyIFZlY3RvclxubmFtZXNbMV1cblxuYGBgIn0= -->

```r
# Note this returns "John", the first element in our Vector
names[1]

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFwiSm9oblwiXG4ifQ== -->

```
[1] "John"
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Generating a sequence between two numerical values


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxubXlfc2VxXzJcblxuYGBgIn0= -->

```r
my_seq_2

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiIFsxXSAgNS41ICA2LjUgIDcuNSAgOC41ICA5LjUgMTAuNSAxMS41IDEyLjUgMTMuNSAxNC41IDE1LjVcbiJ9 -->

```
 [1]  5.5  6.5  7.5  8.5  9.5 10.5 11.5 12.5 13.5 14.5 15.5
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


#### Using the seq() function

You can also create sequences with more customization by using the `seq()` function. With this you can set a "step" value (this is the `by` parameter).


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxubXlfc2VxXzNcblxuYGBgIn0= -->

```r
my_seq_3

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiIFsxXSAgNS4wICA1LjMgIDUuNiAgNS45ICA2LjIgIDYuNSAgNi44ICA3LjEgIDcuNCAgNy43ICA4LjAgIDguMyAgOC42ICA4LjkgIDkuMiAgOS41ICA5LjggMTAuMSAxMC40IDEwLjdcblsyMV0gMTEuMCAxMS4zIDExLjYgMTEuOSAxMi4yIDEyLjUgMTIuOCAxMy4xIDEzLjQgMTMuNyAxNC4wIDE0LjMgMTQuNiAxNC45XG4ifQ== -->

```
 [1]  5.0  5.3  5.6  5.9  6.2  6.5  6.8  7.1  7.4  7.7  8.0  8.3  8.6  8.9  9.2  9.5  9.8 10.1 10.4 10.7
[21] 11.0 11.3 11.6 11.9 12.2 12.5 12.8 13.1 13.4 13.7 14.0 14.3 14.6 14.9
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Vector Sorting

You can sort vectors using the `sort()` function


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuc29ydChteV92ZWN0b3IpXG5cbmBgYCJ9 -->

```r
sort(my_vector)

```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdICAgIC02ICAgIC0yICAgICAwICAgICA0ICAgIDEwICAgIDE5IDEyMDAwXG4ifQ== -->

```
[1]    -6    -2     0     4    10    19 12000
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Vector Calculations


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


#### Addition


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


#### Subtraction


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


#### Multiplication


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


#### Division


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Vector Recycling

If we perform vector calculations on uneven vectors, the elements of the shorter vectors are reused to fill in the remaining length


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## Lists

Lists in R are generic objects that contain an ordered collection of objects. Lists can contain a variety of data types (they are heterogeneous). Lists are created with the `list()` function.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## Dataframes

Dataframes are generic objects that store tabular data. They are two-dimensional data structures that can store any data-type (they are heterogeneous). Dataframes store lists of vectors of equal length (each vector is, essentially, a row).

Dataframes have the following constraints: 

-   A dataframe must have column names and every row should have a unique name.

-   Each column must have an identical number of items.

-   Each item in a single column must be of the same data type.

-   Different columns may have different data types.

When creating a dataframe, you first create the values for each column, and use these to generate your dataframe. You generate a dataframe using the `data.frame()` function.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### str()

You can get the structure of a dataframe using the `str()` function


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### summary()

You can get a summary of the data inside of a dataframe using the `summary()` function. This returns useful information like the type of each column and statistical information like the mean, median, and mode of numerical columns.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Retrieving data from a dataframe

You can index specific columns from a dataframe using the dataframe variable, then a `$` , then the name of the column.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


You can also index specific rows by calling the name of the dataframe, followed by square brackets and the rows you want to retrieve. The square brackets accept two values, the first is the rows you want, the second is the columns.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIyBHZXQgdGhlIGZpcnN0IHR3byByb3dzIGFuZCBhbGwgb2YgdGhlIGNvbHVtbnNcblxuYGBgIn0= -->

```r
# Get the first two rows and all of the columns

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIyBHZXQgdGhlIGZpcnN0IGFuZCB0aGlyZCByb3dzIGFuZCBhbGwgb2YgdGhlIGNvbHVtbnNcblxuYGBgIn0= -->

```r
# Get the first and third rows and all of the columns

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIyBHZXQgdGhlIGZpcnN0IGFuZCB0aGlyZCByb3dzIGFuZCB0aGUgZmlyc3QgYW5kIHRoaXJkIGNvbHVtbnNcblxuYGBgIn0= -->

```r
# Get the first and third rows and the first and third columns

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Adding New Columns

A new column can be added to a dataframe by indexing the column using the `$` symbol and setting the value to a vector


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Adding New Rows

To add new rows to a dataframe, we need to first create a new dataframe using the same structure as the original, then combine the two using the `rbind()` function


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## Matrices

A matrix is a two-dimensional assortment of number data points in columns and rows. In matrices columns run horizontally and rows run vertically. To create a matrix you call the `matrix()` function. You'll have to pass in a vector of data to generate the matrix from, the number of rows you want, and the number of columns you want. Remember, matrices are in column-wise order.

The following parameters are available to you using matrices:

-   **data** is the input vector.

-   **nrow** is the number of rows to be created.

-   **ncol** is the number of columns to be created.

-   **byrow** If TRUE then the input vector elements are arranged by row, if FALSE they are arranged by column. This is false by default.

-   **dimnames** is the names assigned to the rows and columns.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Naming Columns and Rows

You can name columns and rows with the optional dimnames parameter


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Accessing Matrix Values

Values in a matrix can be accessed by indexing with square brackets.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIyBHZXQgdGhlIGVsZW1lbnQgaW4gdGhlIDJuZCByb3cgYW5kIDR0aCBjb2x1bW5cblxuYGBgIn0= -->

```r
# Get the element in the 2nd row and 4th column

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


You can also get entire rows and columns.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Calculations between two matrices


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


#### Addition


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


#### Subtraction


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


#### Multiplication


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


#### Division


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## Arrays

Arrays can store data in more than two dimensions.They are n-dimensional. If we create an array with the dimensions of (5,6,6), it will create 6 matrices with 5 rows and 6 columns. Arrays are created with the `array ()` function. The first argument is the vector of data to display, the second is the desired dimensions for your array.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Naming Array columns and rows

You can name columns, rows, and matrices using the optional dimnames parameter


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Accessing Array Elements

You can access array elements with square brackets, then three arguments. The row, the column, then the matrix.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIyBHZXQgdGhlIGVsZW1lbnQgaW4gdGhlIHNlY29uZCByb3csIHRoaXJkIGNvbHVtbiwgZmlyc3QgbWF0cml4XG5cbmBgYCJ9 -->

```r
# Get the element in the second row, third column, first matrix

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIyBHZXQgdGhlIHNlY29uZCByb3cgb2YgYWxsIG9mIHRoZSBtYXRyaWNlc1xuXG5gYGAifQ== -->

```r
# Get the second row of all of the matrices

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIyBHZXQgdGhlIHNlY29uZCBjb2x1bW4gb2YgYWxsIG9mIHRoZSBtYXRyaWNlc1xuXG5gYGAifQ== -->

```r
# Get the second column of all of the matrices

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIyBHZXQgdGhlIHNlY29uZCBtYXRyaXhcblxuYGBgIn0= -->

```r
# Get the second matrix

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## Factors

Factors are used to categorize and store data. Factors are primarily useful when working with categorical data. Factors are useful in data analysis for statistical modeling. Factor data is expected to be a vector of limited, unique values.

Factors are created using the `factor()` function and passing in a vector of data.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIyBBIGZhY3RvciBvZiBleWUgY29sb3JzXG5cbmBgYCJ9 -->

```r
# A factor of eye colors

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


You can also use the optional levels parameter to specify the order in which the levels should be displayed.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## Homework

1.  Create an array of two 3x3 matrices from the given vectors.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


2.  In the above matrix that you created, print the value 5 by indexing in to the matrix.

3.  Print the third row of the first matrix.

4.  Print the second column of both matrices.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->

    

<!-- rnb-chunk-end -->

