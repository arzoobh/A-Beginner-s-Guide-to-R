### To install a package
install.packages("tidyr")

### To run a package after it is installed
library(tidyr)
library(dslabs)

### To install two or more packages at the same time
install.packages(c("tidyr", "dplyr"))

### To see the list of all installed packages
installed.packages()

### To view the list of inbuilt datasets in R
data()

### To load any specific inbuilt dataset in R
data("AirPassengers")

### The most common way of storing data sets in R is with data frames
### Conceptually, we can think of data frames as tables.
### Rows represent observations
### And different variables are represented by different columns
### Dataframes are particularl useful for data sets because we can combine
### different types into one single object

### To find out whether the AirPassengers dataset is a dataframe or not 
class('airpassengers')      #here our data is stored in the object airpassengers

### To find out the structure of an object
str('airpassengers')




