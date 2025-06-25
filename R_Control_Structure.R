
# break


for ( i in 1:25){
  if(i==20){
  break
}
print(i)
}

#####
for (i in 2:10){
  if (i!=7){
    print(i)
  }
}

# next

for (  i in 1:10){
  if(i<=2){
    next
  }
  print(i)
}


# if 

x <- runif(1, 0, 10)
if(x > 3) {
  y <- 10
} else {
  y <- 0
}

x<-c(3,10,7)
if (x>1){
  y<-10
}else{
  y<-0
}

for(i in 1:10) {
  print(i)
}


x <- c("a", "b", "c", "d")
for(i in 1:4) {
  ## Print out each element of 'x'
  print(x[i])
}

seq_along(x)

for(i in seq_along(x)) {
  print(x[i])
}


for(letter in x) {
  print(letter)
}

for(i in 1:4) print(x[i])
#Nested loop
x <- matrix(1:6, 2, 3)
x

for(i in seq_len(nrow(x))) {
  for(j in seq_len(ncol(x))) {
    print(x[i, j])
  }
}

#while

count <- 0
while(count < 10) {
        print(count)
        count <- count + 1
}
# print all number up to 35 it skips nuber 7
x<-0
while(x<=35){
  if(x!=7){
    print(x)
  }
  x<-x+1
}

# repeat, next, break
#next
for(i in 1:100) {
  if(i <= 20) {
    print(i)
    ## Skip the first 20 iterations
    next
  }
  ## Do something here
}


# break

for(i in 1:100) {
  print(i)
  if(i > 20) {
    ## Stop loop after 20 iterations
    break
  }
}





