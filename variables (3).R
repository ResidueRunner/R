help.start() #Opens a manual page
data <- 3 #Enter a numeric value in the object
class(data) #Checks the class of the variable
x <- 1.5 #input value for x
class(x) #check the class of x
y <- "a"
class(y)

data1 <- c(9,10,11,5,6) #Store more than one value in the variable
class(data1) #Class of data1 object
data1 = c(9,10,11,5,6) #You can use either <- or = sign for inputting data
mean(data1) #Calculate mean for an object

help(mean)
data2 =c(0,0,0,9,10,11,5,6)
mean(data2,trim=0.1)
data3 = c(9,10,11,5,6,NA)
mean(data3,na.rm=TRUE)

x <- c(0:10, 50)
x
xm <- mean(x)
c(xm, mean(x, trim = 0.10))
y <- c(2:9)
mean(y)
apropos("mean") #Function to find all the functions with name mean

data2
class(data2)
data3 <- as.character(data2)
data3

#Installing package
install.packages("ade4",dependencies=TRUE)
library(ade4)
library(dplyr)
detach(package:ade4) #detach the packages
search()


