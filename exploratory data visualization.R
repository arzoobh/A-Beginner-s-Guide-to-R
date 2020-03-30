###EXPLORATORY DATA VISUALIZATION - EDA
###It is the main strength of R
Types of Plots:
1. Scatterplot

2. Histogram - are powerful graphical summaries of a list of numbers that gives us a general overview of the tpyes of values we have

3. Boxplot - provides a more terse summary than the histogram, but they are easier to stack against each other.


#Importing the dataset
data(women)

#Making a simple scatter plot using the plot() function:
plot(women)

Note: We can see from the plot that there is a linear relationship. With the increase in height, the weight also increases

#we can easily see the distribution of the height and weight of the women from our dataset using hist() function:
hist(women$height)
hist(women$weight)

Note: If you look into the distribution closely, you will see that the heights and weights of all the women in our datasets are distributed evenly.


