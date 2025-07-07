#Anurag Yadav   (  R-Programming )  # commonly  used Program

help.start()  # open manual page
# Variables
Data <- 45 # Enter a numeric
class(Data) # Check the class of the variable  ## class "numeric" output

x<-1.5
class(x) # check the class

y<-"a"
class(y)  # class "character"

Data2<-c(9, 10, 11,5, 6)# store more then one variable
class(Data2)


data1<-c(9, 10, 11, 12, 5, 6) # calculate mean of object
mean(data1)

help(mean)
data2=c(0,0,0,9,10,11,5,6)
mean(data2, trim=0.1)


x<-c(0:10,50)
x
xm<-mean(x)
c(xm, mean(x,trim=0.10))


y<- c(2:9)
mean(y)
apropos("mean")# function to find all the function with name mean

data2
class(data2)

data3<as.character(data2)
data3



# installing packeges

install.packages("ade4",dependencies = TRUE)
library(ade4)
library(dplyr)
detach (package:ade4)# deatch- unload the package
search() #  helps you check which packages/environments are currently loaded and attached.

# VECTOR

D<-c(1,2,3,4,5)# Vector
D

# List

my_list<-list(22, "ab", TRUE)# create a list
my_list<-list(data,"ab",TRUE)# create a list


# Matrix

matrix<-matrix(1:6, nrow=3, ncol=2)
matrix

matrix<-matrix(1:6, nrow=3,ncol=2, byrow=T)
matrix
matrix

f<-1:5
g<-6:10
h<-11:15
cbind(f,g,h)# colum wise bind
rbind(f,g,h)#row wise bind

# data frame
df<-data.frame(name=c("Anurag","John","Ankit","Ajay"),score=c(87,76,91,67))
df


# Subsetting the R_object

data[3] # Print 3rd position from Vector

my_list[[2]] # Print second position from list my_list

matrix[2,1]# print 2nd col 1 value

matrix[3,]# print all the value of row 3

matrix[,2]# print all the value of colum 2

df[3,1]# print info stored in all 3rd row first colum

df[2,] # print second row

df[2:3,] # Print all info second and third row

df[3,1] # print info stored in 3rd row first columns

df[3,]  # Print third row

# subset of the dataframe

df1<-subset(df,score>60)  # Print Score more than 60
df1
data[3]>2
df$score>60

#Another data frame

a<-c(20,30,40,50)
b<-c('Apple','Banana','textbook','pencil')
c<-c(TRUE, FALSE, TRUE, FALSE)
d<-c(2.5,8,10,7)

df<-data.frame(a,b,c,d)

colnames(df)<-c("ID","ITEMS","STORE","PRICE")

class(df)# class of Data

str(df)  # View struc of data

df[1,2] # Select row 1 in colum2

df[1,3] # select row 1 to 3

df[1:3, 3:4] # select row 1 to 3 and colums 3 to 4

# Install packeges
install.packages("dplyr", dependencies = T)

# adding columns to existing dataframe

df$Quantity<-c(10,35,50,4)

df

# add row to existing dataframe

df[5,] <- c(50,'eraser', FALSE, 4.5, 8)

str(df)

df

#Converting logical and numeric # for some dplyr function

df$STORE = as.logical(df$STORE)

df$PRICE = as.numeric(df$PRICE)

df$Quantity = as.numeric(df$Quantity)

str(df)

library(dplyr) # attached packeges dplyr

select(df,ends_with("e")) # using Select function print all the column which end with "e".

select(df,STORE:Quantity)# Select and print all column from store to quantity

select(df,!(PRICE))# Select and print all column except price

filter(df,PRICE>8) #  filter function using print price more than 8

filter (df, ITEMS=="Banana") # filter Items as banana

df%>%filter(store=TRUE, PRICE<5) # info of all the items which are available in store and pric is less than 5

filter(df,(STORE == TRUE) & (PRICE <5))# this another way info of all the items which are available in store and pric is less than 5

arrange(df,desc(PRICE)) # arrange- arrange the dataframe based on increasing order

rename(df,cost=PRICE)# rename - chnage the colum name

df
#Convert to numeric Before using mutate()

df$TOTAL<- df$PRICE*df$Quantity # create a new column TOTAL (PRICE * Quantity)

mutate(df,TOTAL=PRICE*Quantity)

print(df)

str(df)

group_by(df,STORE)%>%summarise(mean(Quantity)) # group_by the data frame based or store availability , mean quantity required

group_by(df,STORE)%>%summarise()


?summarise
df[4,3]<-TRUE  #sets that specific cell to the logical value TRUE
df

df[5,5]<-NA # it change specific column
df

mean(df$Quantity,na.rm = TRUE)  # calculate mean if NA is there in the data frame
mean(df$Quantity)
df$QUANTITY <- as.numeric(df$Quantity) 

table(is.na(df)) #Tabulate number of NA in the data frame
new_df <-na.omit(df) #remove rows with NA
new_df

# #####    File Handling ######


getwd() #get the working directory
file.choose() # choose file 
# read txt file
df<-read.table( "C:\\Users\\HP\\OneDrive\\Desktop\\R_files(CSV,ETC.)\\r_class1.txt", sep="\t")
df

# reading csv file
file.choose()# chooseing file
df<-read.csv("C:\\Users\\HP\\OneDrive\\Desktop\\R_files(CSV,ETC.)\\drug-target.csv",sep="\t",header=TRUE)
df

# Read a delim file with sep ":"
df_delim<-read.delim("C:\\Users\\HP\\OneDrive\\Desktop\\R_files(CSV,ETC.)\\r_class1_delim.txt",sep=":")
df_delim

# read excel
install.packages("readxl",dependency=TRUE)
library(readxl)
ls("packeges:readxl")
file.choose()
df_xls<-read_excel("C:\\Users\\HP\\OneDrive\\Desktop\\R_files(CSV,ETC.)\\r_class1.xlsx")
df_xls

# read xml file
install.packages("xml2",dependencies = T)
library(xml2)

xml_file <- read_xml("C:\\Users\\HP\\OneDrive\\Desktop\\R_files(CSV,ETC.)\\books.xml")
ls("package:xml2")
xml_list <- as_list(xml_file)
xml_name(xml_file)
xml_parent(xml_file)
xml_text(xml_file)

library(tibble)
title <- xml_text(xml_find_all(xml_file,xpath = "//title"))
author <- xml_text(xml_find_all(xml_file,xpath = "//author"))
df <- tibble(catalog = title, authors = author)
df


#Read json file
file.choose()
install.packages("jsonlite")
library(jsonlite)
jsonfile <- fromJSON("C:\\Users\\HP\\OneDrive\\Desktop\\R_files(CSV,ETC.)\\color.json")
jsonfile$aqua

#Read html file
h <- read_html("C:\\Users\\HP\\OneDrive\\Desktop\\R_files(CSV,ETC.)\\cran.html")
h



# control Structure

# if , while, loop, next

# if condition

data<-sample(1:100,10,replace=T)
data<-c(1,2,3,4,5,6,7,8,9,10)
for(i in 1:10){
  print(i)
  if (data(i)==7){
    print(i)
    print("yes")
  }
}



# while

x<-0
while(x<=35){
  if(x!=7){
    print(x)
  }
  x<-x+1
}


# printing odd even no

  Data <- sample(1:100, 10, replace = TRUE)
  print(Data)
  
  for(i in Data){
    if(i %% 2 == 0){
      print(paste(i, "no is even"))
    } else {
      print(paste(i, " no is odd"))
    }
  }
  
  ############

Data <- sample(1:100, 10, replace = TRUE)
print(Data)

r <- 1
while(r <= length(Data)){
  if(Data[r] %% 2 == 0){
    print(paste(Data[r], "is even"))
  } else {
    print(paste(Data[r], "is odd"))
  }
  r <- r + 1
}

# print 10 to 1 number
i=10
while(i>=1){
  print(i)
  i=i-1
}

# Next 

for ( i in 1:100){
  if(i <= 20){
    next
  }
  print(i)
}


# Repeat
#(print print each number until it reaches 20. After that, the loop stops using the break statement)
x <- 10
repeat {
  print(x)
  x <- x + 1
  if(x > 20){
    break
  }
}

# Function

# Defina a Function

myfirstfun <- function (n)
{
  # Compute the square
  n*n
}
myfirstfun(9)




# a function to compute power of one number to the other 

power <- function(a,b){
  a^b
}
power(4,4)


# function to calculate Z-Score

Z_Score <- function(Value, a) {
  mu <- mean(a)      # mean of vector a
  std <- sd(a)       # standard deviation of a
  z <- (Value - mu) / std
  return(z)
}

a <- c(6, 7, 5, 4, 3, 2, 1, 8)
Z_Score(3, a)



# function to print reverse

info <- function(name) {
  X <- strsplit(name, "")[[1]]       # split name into characters
  return(c(rev(X), length(X)))       # reverse and show length
}

info("ATGCATGC")






#Descriptive statistics

data <- mtcars
dim(data)
head(data)

shapiro.test(data$mpg) #To test if the data follows a normal distribution

summary(data) #Summarizes the data
quantile(data$qsec) #Prints the quantile
quantile(data$qsec,0.80) #Prints 80 percentile value

hist(data$mpg)
data$mpg

file.choose()
my_file <- read.csv("C:\\Users\\HP\\Downloads\\r_class1.csv",
                    sep=",",header=T)
head(my_file)
shapiro.test(my_file$Prog_experience)
hist(my_file$Prog_experience)

#One-sample t-test

t.test(mtcars$qsec)
t.test(mtcars$qsec, mu=17)

#One-sample wilcox test
x <- c(20,29,24,19,20,28,23,19,19)
hist(x)
wilcox.test(x)
wilcox.test(x,mu=20)

#Two sample t.test
x <- c(0.80,0.83,1.89,1.04,
       1.45,1.38,1.91,1.64,0.73,1.46)
y <- c(0.80,0.83,1.89,1.04,
       1.45,1.38,1.91,1.64,0.73,1.46)
y1 <- x+1

t.test(x,y)
t.test(x,y1)

file.choose()
drug <- read.csv("C:\\Users\\HP\\OneDrive\\Desktop\\R_files(CSV,ETC.)\\drug_BMR.csv") 
head(drug)

shapiro.test(drug$BMR)

t.test(drug$BMR,drug$Two_weeks)

t.test(drug$BMR,drug$Two_weeks,paired=T)

t.test(drug$BMR,drug$Four_weeks,paired=T)

t.test(drug$BMR,drug$Four_weeks,paired=T,alternative="greater") # Ho: mu0 < mu1
t.test(drug$BMR,drug$Four_weeks,paired=T,alternative="less") #Ho: mu0 > mu1

mean(drug$BMR)
mean(drug$Four_weeks)

#Kolmogorov-Smirnov test #To test the difference is distribution

ks.test(drug$BMR,drug$Four_weeks,alternative="less") #Ho: distribution of 0 > distribution of 1

a <- rnorm(100)
b <- runif(100)
?runif
hist(a)
hist(b)
ks.test(a,b)

#Fisher test
#To test the difference in variance

var.test(a,b)

#Chi-sq test
my_file <- read.csv("/home/bif/rclass/r_class1.csv",sep=",",header=T)
#Ho: There is no association between dept and programming experience
chisq.test(table(my_file$Department, my_file$Prog_experience))

chisq.test(table(my_file$Department, my_file$R_prog))

#correlation
shapiro.test(mtcars$mpg)

head(mtcars)
#H0: The qsec is not correlated to mpg
cor.test(mtcars$mpg,mtcars$qsec,method=c("pearson"))
cor.test(mtcars$mpg,mtcars$qsec,method=c("spearman"))

?cor.test


#Regression
?lm
summary(lm(mtcars$qsec~mtcars$mpg))

#aov
summary(aov(mtcars$mpg~factor(mtcars$am)))

head(mtcars)

?aov


#other data 
file.choose()
covid_data <- read.csv("C:\\Users\\HP\\OneDrive\\Desktop\\R_files(CSV,ETC.)\\covid19_data.csv") 
head(covid_data)

#Does the number of cases in different states follow normal distribution?
shapiro.test(covid_data$Cases)

#Is there difference in mean, distribution and variance of recovered patients and deaths?
wilcox.test(covid_data$Recovered,covid_data$Death)
ks.test(covid_data$Recovered,covid_data$Death)
var.test(covid_data$Recovered,covid_data$Death)

library(dplyr)
#Is there association between mean number of cases and zones?
#chisq test cannot be used since the one of the data is continous
#We can however comapre the mean of all the groups
a <- covid_data %>% group_by(Zone) %>% summarise(mean(Cases))
table(covid_data$Cases,covid_data$Zone)
summary(aov(covid_data$Cases~factor(covid_data$Zone)))

#Is there a mean difference in number of nurses in different zones?
summary(aov(covid_data$Nurses~factor(covid_data$Zone)))

#Is there a correlation between no. of cases and number of aircraft movements?
cor.test(covid_data$Cases,covid_data$Aircrats_movements,method=c("spearman"))


#Graph Visualization


library(dplyr)
file.choose()
my_data <- read.csv("C:\\Users\\HP\\OneDrive\\Desktop\\R_files(CSV,ETC.)\\covid19_data.csv")
head(my_data)
glimpse(my_data)#Get the glimpse of the data
#Pie charts
my_data_zone = table(my_data$Zone)
percentlabels <- round(100*my_data_zone/sum(my_data_zone),2) #Cal % values
#R code to create the Pie Chart
pie(my_data_zone, col=rainbow(length(my_data_zone)), labels = percentlabels, main = '% of States')
#Legend for the pie chart
legend("right",c("Centre","East","North","North-East","South","West"),fill=rainbow(length(my_data_zone)),cex=0.6)

#Bar plot

x <- group_by(my_data, Zone) %>% summarise(mean(Cases)) #This we have done in the previous class
xVal<-c("Centre","East","North","North-East","South","West")
#R code to create the barplot
barplot(x$`mean(Cases)`,xlab="Zones",ylab="Mean Cases",col=terrain.colors(6),
        main="Mean Distribution Of Covid-19 cases (Zone)",border="black",names.arg=xVal)


# Plot the bar chart
my_data1 <- arrange(my_data,Zone)
mycols <- terrain.colors(6)
barplot(my_data$Cases,ylab="Total number of cases",
        main="Distribution Of Covid-19 cases (State)",border="black",col = mycols[my_data1$Zone],names.arg=my_data1[,1],cex.names = 0.7,las=2)


#Boxplot
boxplot(my_data$Cases,my_data$Recovered,my_data$Death, ylab="Number",
        main="Boxplot",border="black",col = c("Blue","Green","Red"),at = c(1,2,3),
        names = c("Cases", "Recovered", "Deaths")) # With outliers


boxplot(my_data$Cases,my_data$Recovered,my_data$Death, ylab="Number",
        main="Boxplot",border="black",col = c("Blue","Green","Red"),at = c(1,2,3),
        names = c("Cases", "Recovered", "Deaths"),outline=F) #Without outliers


#scatter plot

plot(my_data$Cases,my_data$Aircrats_movements,ylab="Aircraft movements",xlab="# of cases",main="Cases Vs Aircrafts Movements")


plot(my_data$Cases,my_data$Aircrats_movements,ylab="Aircraft movements",xlab="# of cases",main="Cases Vs Aircrafts Movements",pch=16,cex=1.3,col="blue")


plot(my_data$Cases,my_data$Aircrats_movements,xlab="# of cases",ylab="Aircraft movements",main="Cases Vs Aircrafts Movements",pch=16,cex=1.3,col="blue")
abline(lm(my_data$Cases~log(my_data$Aircrats_movements)))


my_data2 <- mutate(my_data, Health_workers = Nurses+Doctors) #Creates a new variable Health_workers combining data from Nurses and Doctors
plot(my_data2$Health_workers,my_data2$Recovered,xlab="Recovered",ylab="Health Workers",main="Recovered Vs Health Workers",pch=16,cex=1.3,col="indianred")
abline(lm(my_data2$Recovered~my_data2$Health_workers))
#correlogram
install.packages("corrplot")
library(corrplot)
my_data_x <- my_data[3:11] # Subsetting the data from 3rd to 11th column
head(my_data_x)

corrplot(corr_matrix,
         method = 'number',
         type = "lower")

#Histogram
hist(my_data$Cases,col='steelblue',main='Number of Covid-19 Cases',xlab='Cases')

#Heatmap

my_data_cases <- as.matrix(select(my_data,Cases:Death)) 
rownames(my_data_cases) <- my_data$State #Make row names as States
heatmap(my_data_cases,Colv=NA,col=cm.colors(256),cexCol = 1.0)
