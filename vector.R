### VECTOR - series of values, all of the same type
### vector is technically a single number but in general, it has several entries

### Complex datasets can usually be broken down into components that are vectors
### In any dataframe, each column is a vector
###Types of Vectors
1. Numeric Vectors 
2. Character Vectors
3. Logical Vectors - True/False

### TO CREATE A VECTOR WITH CONCATENATE(OR COMBINE) FUNCTION C()

### Defining a numeric vector:
sales <- c(100, 20, 40,70)
sales


### Defining a character vector:
animal <- c('dog', 'cat', 'zebra', 'lion')
animal

### Connecting Numeric and Character Vectors:
names(sales)<- animal
sales

### To view the association between sales and animal, we should print sales.
Note: Printing animal will not return the association. Rather it will only return the values stored in the animal variable.


### SUBSETTING VECTOR
### To display not all but only selected values from the obect:
sales[2:4]

Note: Here, only the last 3 values will be displayed.
The operator : will help us condense the code and get consecutive values

### Alternative method for subsetting vector
sales[c(2,3,4)]

#### Subsetting random vectors rather than consecutive vectors
### To subset First and Fourth value from the sales:
sales[c(1,4)]

### Defining a Logical vector:
a <- 1 == 2
a           #here, we get the output false since 1 is not equal to 2

### FACTOR
Factors are useful for storing categorical data
To find the factors,we use the function levels(table_name$column_name)




