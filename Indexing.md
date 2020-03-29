### INDEXING
### Ways to subset a vector:
### 1. Subset a vector based on the properties of another vector


# Importing data  
data(airquality)
str(airquality)

### USING LOGICALS TO INDEX A VECTOR:
Temp <- airquality$Temp
index <- Temp < 90
index

### To view, the days on which the Temp < 90 or the output of the above index is true:
airquality$Day[index]

### To view, the Month on which the Temp < 90 or the output of the above index is true:
airquality$Month[index]
