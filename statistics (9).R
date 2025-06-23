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
my_file <- read.csv("/home/bif/rclass/r_class1.csv",
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
drug <- read.csv("/home/bif/Downloads/drug_BMR.csv") 
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


##Ungraded assignment
file.choose()
covid_data <- read.csv("/home/bif/Downloads/covid19_data.csv") 
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
