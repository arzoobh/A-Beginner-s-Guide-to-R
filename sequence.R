### SEQUENCE
### TO CREATE A SEQUENCE:

### Creating a SIMPLE sequence using : operator
a <- 10:20
a           # Here, we created variable a with values 10-20

### To find out the length of a:
length(a)

### Creating a sequence with a MULTIPLE of certain value:

### To create a sequence with the multiple of 5, less than 41
b <- seq(5, 40, 5)
b

### To create a sequence of all positive odd numbers smaller than 50:
c <- seq(1,50, 2)
c

Note: In the above two example, the second argument is actually a maximum, not necessarily the end

### We can also create a sequence with increments in fraction
### To create a sequence of numbers from 5 to60 with 2/3 increments
d <- seq(5, 60, 2/3)
d

### To determine the length of d:
length(d)

### To determine the class of d:
class(d)

### To determine the structure of d:
str(d)


### SEQUENCE OF CERTAIN LENGTH
### The argument length.out lets us generate sequences that are increasing by the same amount but are of the presepecified length

e <- seq(0,50, length.out =10)
e


### To determine the class of e:
class(e)

