#Define a simple function

myfirstfun <- function(n)
{
#Compute the square of integer 'n'
n*n
}

myfirstfun(8)


#Write a function to compute power of one number to the other

power <- function(a,b){
a^b
}

power(3,4)

mean

lm <- function(a,b){
  a^b
}

lm

#To check the loaded packages
search()
library(dplyr)
base::mean
  
#Write a function to calculate z-score of a number from a vector
#User should input a number and a vector of numbers

zscore <- function(value,a)
{
mu = mean(a) 
std = sd(a)
z = (value - mu)/std
print(z)
}

zscore <- function(value,a)
{
  z = (value - mean(a))/sd(a)
  print(z)
}
a <- c(6,7,5,4,3,2,1,8)
zscore(3,a)


zscore <- function()
{
  a <- c(6,7,5,4,3,2,1,8)
  z = (3 - mean(a))/sd(a)
  print(z)
}
zscore()

power <- function(a=1,b=1){
  a^b
}

power()

#Error messages for missing values
power <- function(a,b){
  if(missing(a)) print("please enter a value for a")
  if(missing(b)) print("how can your forget to enter value for b") 
  else return(a^b)
}

power(2,3)
power(2)
power(,3)
power()

power <- function(a,b){
  if(missing(a)) a=2
  if(missing(b)) b=1
  if(a==0) print("not accepted")
  if(b==0) print("not accepted")
  else return(a^b)
}

power()
power(0,2)


power1 <- function(a,b){
  a^b
}

power2 <- function(a,b){
  p <- a^b
  print(p)
}

power3 <- function(a,b){
  p <- a^b
  return(p)
}

power4 <- function(a,b){
  return(a^b)
}

#Write a function to print reverse and length of your name

info <- function(name){
  x <- strsplit(name,"")[[1]]
  return(c(rev(x),length(x)))
}

info("manjari")

power1(2,3)
power2(2,3)
power3(2,3)
power4(2,3)