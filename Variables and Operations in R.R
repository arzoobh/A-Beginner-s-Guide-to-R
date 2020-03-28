### Objects are things that are stored in named containers in R. 
### They can be variables, functions, etc.

### To define a variable, we may use the assignment symbol, <-. Eg:
a<- 40

### To view the values stored in a variable
a           #directly type the variable name
print(a)    #use the print function and type the variable name within the function 

#To view the names of the objects saved in your workspace
ls()

### To compute the sum for the first 20 integers
20*(20+1)/2 

### To compute the sume of first 100 integers by defining a variable
n<-100
n*(n+1)/2

### To find the first 20 integers, we type:
1:20

### We can also generate the first 20 integers using:
seq(1,20)

### Seq creates a list of numbers and sum adds them up
n <- 1000
x <- seq(1,n)
sum(x)


### VARIABLES IN R can be of different types:
### We need to distinguish numbers from character strings
### And tables from simple list of numbers

### Every variable has a class.
### The class can be a character, numeric, or logical

#To determine the class of an object, we use the function class()
data(airquality)
class(airquality)   #we get the result as a dataframe

### To look into the structure of an object
str(airquality)

### To find out the names of the variables of our dataset
names(airquality)

### To find out class of each variables in our dataframe
### To extract variables from a dataframe, we use $ (accessor)
class(airquality$Ozone)

### We can also assign the above operation to a variable. Eg:
oz <- airquality$Ozone
class(oz)

Note: This way we do not have to call airquality$Ozone every time we want to return the class of the variable Ozone. We can simply type class(oz)


### MULTIPLE WAYS TO ACCESS VARIABLES:
1. We can use the accessor($) to access the variable

2. We can also use the [[ ]] - double square bracket to access the variable

### Using [[ ]] to access the variable
airquality$Ozone

airquality[["Ozone"]]

table(airquality[["Ozone"]])

