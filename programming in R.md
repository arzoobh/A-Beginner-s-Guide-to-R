###PROGRAMMING IN R:
#Coding in R, we can efficiently perform:
- exploratory data analysis, 
- build data analysis pipelines, and
- prepare data visualizations to communicate results

###R is not just a data analysis environment, but a programming language

### KEY PROGRAMMING CONCEPTS:
1. Conditional expressions
2. For-loops, and 
3. Building functions

#These are not just key building blocks for advanced programming, but often come in handy during data analysis.


###LOADING THE DATASET:
data(murders)
head(murders)

library(dslabs)
data('height')


###CONDITIONAL EXPRESSIONS:
#1. If-else statement:
# an example showing the general structure of an if-else statement
a <- 0
if(a!=0){
  print(1/a)
} else{
  print("No reciprocal for 0.")
}


# an example that tells us which states, if any, have a murder rate less than 0.5
library(dslabs)
data(murders)
murder_rate <- murders$total / murders$population*100000
ind <- which.min(murder_rate)
if(murder_rate[ind] < 0.5){
  print(murders$state[ind]) 
} else{
  print("No state has murder rate that low")
}

# changing the condition to < 0.25 changes the result
if(murder_rate[ind] < 0.25){
  print(murders$state[ind]) 
} else{
  print("No state has a murder rate that low.")
}

# the ifelse() function works similarly to an if-else conditional
a <- 0
ifelse(a > 0, 1/a, NA)

# the ifelse() function is particularly useful on vectors
a <- c(0,1,2,-4,5)
result <- ifelse(a > 0, 1/a, NA)

# the ifelse() function is also helpful for replacing missing values
data(na_example)
no_nas <- ifelse(is.na(na_example), 0, na_example) 
sum(is.na(no_nas))

# the any() and all() functions evaluate logical vectors
z <- c(TRUE, TRUE, FALSE)
any(z)
all(z)