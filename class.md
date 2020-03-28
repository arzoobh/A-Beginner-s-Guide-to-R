### CLASS
1. NUMERIC
2. INTEGER


### cREATING AN INTEGER CLASS:
### To create an integer class we need to add the letter L after a whole number
class(3L)


### For most practical purposes, integers and numerics are indistinguishable
### The main differene is that integeres occupy less space in the computer memory, so for big computations using integers can have a substantial impact

### INTEGERS AND NUMERIC:
### To check class of 1
class(1)

### To check class of 1L
class(1L)


### COERCION
### With coercion, R tries to be flexible with data types
### In R, when an entry does not match what an R function is expecting, R tries to guess what we meant before throwing an error. This might create a confusion.
### Eg: Numeric vectors does not require quotes while character vectors require quotes.
### With Coercion in R, we can avoid this confusion by changing characters to numerics and vice-versa. This is also known as TYPECASTING

x <- c(1,3,5, "a")
x

# Using as.numeric to coerce 'x' to a numeric vector.
x <- as.numeric(x)
class(x)


### Similarly we convert numbers into characters by:
x <- as.character(x)
class(x)


### Missing values in R is defined by NAs. We get the NAs from coercion.
x <- c(1,3,5, "a")
x <- as.numeric(x)
class(x)

Note: Converting the x variable to numeric, we get a warning message:
Warning message:
NAs introduced by coercion.
Since the value "a" cannot be converted into numeric values or R will not know what to do with that value.