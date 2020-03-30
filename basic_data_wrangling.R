### DPLYR provides intuitive functionality for working with tables
### This package introduces functions that perform the most common operations in data manipulation and uses names for these functions that are relatively easy to remember
library(dplyr)

#If you have not already installed the dplyr package into your system then you should first install it using:
#install.packages('dplyr')


### BASIC DATA WRANGLING FUNCTIONS:
1. Mutate Function - to change the data table by adding a new column or changing an existing one, we use mutate
The function mutate takes the data frame as the first argument and the name and value of the variable in the second argument

2. Filter Function - To filter the data by subsetting rows, we use the function filter

3. Select Function - to subset the data by selecting specific columns

4. Pipe Function [] %>% ] - To perform a series of operations-- for example, select this and then filter that-- by sending the results of one function to another function using what is called the pipe operator


### Loading women data - inbuilt data in R:
data(women)
str(women)
head(women)
bmi <- (women$weight*703)/(women$height^2)
bmi

###USING MUTATE FUNCTION:
##mutate <- (table_name, name = value)
women_new <- mutate(women,bmi_index = (weight*703)/(height^2))
head(women_new)
tail(women_new)

#Note: Using mutate, we do not have to write the name of the table for each column again and again

#Note: Here, with the help of mutate, we have added a new column to our table called bmi_index for which the calculation has been done above

###USING FILTER FUNCTION:
#To filter the data table to only show the entries for which the value is specified:
#filter(table_name, conditiion)
filter(women_new, weight>125 & bmi_index >23)

Note: Here, we filtered using weight and bmi_index:
weight > 125 and
bmi_index > 23

###USING SELECT FUNCTION:
#Useful when we have lots of observations and variables and we want to select only certain variables(column) that we want to wrok with:
#Two steps:
1. we define a new object - selects only the column(variables) that we want to return
2. we filter it - selects only the rows(observation) that we want to return

##defining a new object
#variable_name <- select(table_name, columns)
new_table <- select(women, weight)


#Filtering the data:
filter(new_table, bmi > 23)


###USING PIPE FUNCTION:
#To put together mutate, filter, and select:
women %>% select(weight) %>% filter(bmi > 22.5)

### Defining condition of the individual according to the BMI index:
under_weight <- bmi < 18.5
ideal_weight <- bmi > 18.5 & bmi < 24.9
over_weight <- bmi > 25 & bmi < 29.9
obesity <- bmi > 30

