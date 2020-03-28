### Objects are things that are stored in named containers in R. 
### They can be variables, functions, etc.

### To look into a function - help
?help

### To look into another function - correlation
?cor

### USING LOG FUNCTION:
log2(16)        # Evaluates the log2 function to get the log base 2 of 16 which is 4


### NESTING FUNCTION:
### To calculate the log to the base 2 of 16 and then compute the square ### root of that value
sqrt(log2(16))

### Importing library and loading dataset
library(dslabs)
data("AirPassengers")
str(AirPassengers)

data("airquality")
str(airquality)

Note: Here, we have loaded two different datasets and we can see that the airpassenger data is Time Series while the airquality data is dataframe

### To print the first six lines from both datasets:
head(AirPassengers)
head(airquality)

Note: In AirPassengers, we can see that the first six values are printed in a row
Note: In airquality, we can see that rows represent different obeservations while column represents different variables

### To access the data from these datasets, we use accessor ($)
airquality$Ozone      

Note: With the help of accessor, we access individual column from our dataframe

### To get the names of the columns or variables in our dataframe, we use names function:
names(airquality)

Note: Since individual names represent individual variables or columns, we can also access each column data using the accessor ($)

### Accessing variable Month:
airquality$Month

Note: The order of entries in the list aiquality$Month preserves the order of the rows in our data table. 

### SINCE R IS CASE SENSITIVE,WE HAVE TO BE CAREFUL WHEN WRITING THE VARIABLE AND THE DATASET NAME OR ELSE WE MIGHT NOT GET THE EXPECTED OUTPUT

Note: The object airquality$Month is not one number but rather its 153 numbers. We call these type of objects vectors.

### To find out the length of the vectors, we use length() function:
length(airquality$Month)

class(airquality$Month)   #the class of this vector is integer

str(airquality)
class(airquality$Day)


### IDENTICAL FUNCTION
### Determines whether or not two variables are same:
a <- 50
b <- 20
identical(a, b)

Note: Since a is not equal to b or a and b are not same, we get the output as FALSE


### LEVELS FUNCTION:
#shows us the categories for the factor - used for categorical data
levels(table_name$column_name)


### LENGTH FUNCTION:
### Determines the number of levels in a particular variable:
length(levels(table_name$column_name))


### TABLE FUNCTION:
#Takes a vector as input and returns the frequency of each unique element in the vector
table(airquality[["Wind"]])

### CONCATENATE FUNCTION:
#Used to create a vector
c()

### SEQUENCE FUNCTION:
seq()
seq(5:10)
seq(5,50,5)
seq(5,50,2/5)


### SORT FUNCTION:
# Sorts the vector in increasing order
sort(airquality$Temp)

#here, we can see that the lowest temperature is 56 and the highest temperature is 97


### ORDER FUNCTION:
#The function order takes a vector and returns the indices that sorts that vector
#Order returns the location or index a value that sorts a variable into order
y <- c(10,5,2,90,170)
y
order(y)

# Note: Here, the output is:
[1] 3 2 1 4 5
This means that the first element that occurs that sorting is currently in the 3rd position
The second element is now in the second position and so on


### MAX FUNCTION:
#Returns only the max value. Eg:
max(y)

### WHICH.MAX - returns the index or location on which the maximum value lies
which.max(y)


### MIN FUNCTION:
min(y)


### WHICH.MIN - returns the index or location on which the minimum value lies
which.min(y)


### RANK FUNCTION:
rank(y)

#NOte: Here, the output is:
[1] 3 2 1 4 5
This shows that our first value in y is the 3rd highest value
The second value is y is the second highest value and so on