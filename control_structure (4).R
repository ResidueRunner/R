#if

data <- sample(1:100,10, replace=T)

data <- c(1,2,3,4,5,6,7,8,9,10)
for(i in 1:10){
  #print(i)
if(data[i] == 7){
  print(i)
  print("yes")
}
}

x <- 0
while(x <= 35){
  if(x != 7){
    print(x)
  }
  x <- x+1
}


#
data <- sample(1:100,10, replace=T)
data
for (i in data){
  if (i%%2==0){
    print(paste("No. is even",i))
  }else{
    print(paste("No is odd",i))
  }
}
length(data)
r=1
while(r<=length(data)){
 if(data[r]%%2==0){
  print("even")
 }else{ 
  print("odd")
  }
  r=r+1
}


i = 10
while(i >= 1){
  print(i)
  i = i-1
}

#Next

for(i in 1:100){
  if(i <= 20){
  next
  }
  print(i)
}

#Exercise: Use for loop and next to print 1 to 35 skipping 7


for(i in 1:35){
  if(i == 7){
    break
  }
  print(i)
}  

for(i in 1:35){
  if(i != 7){
    print(i)
  }
}  


#Repeat
x <- 10
repeat{
  print(x)
  x <- x+1
  if(x > 100){
    break
  }
}


#Print 1 to 5 using repeat and break

#Exercise: Write a program to calculate factorial of a number

data()


x <- trees
head(trees)
tail(trees)
data(iris)
data()
head(iris)
head(mtcars)

getwd()
file.choose()
my_file <- read.csv("/home/bif/Downloads/r_class1.csv")
head(my_file)
my_file1 <- read.table("/home/bif/Downloads/r_class1.txt",header=T,sep="\t")
?read.csv
