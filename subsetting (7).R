a <- c(10,20,30,40)
b <- c('book','pen','textbook','pencil_case')
c <- c(TRUE,FALSE,TRUE,FALSE)
d <- c(2.5,8,10,7)
df <- data.frame(a,b,c,d)
colnames(df) <- c("ID","ITEMS","STORE","PRICE")
class(df)
str(df) #Print structure of dataframe

#1. Select row 1 in column 2
df[1,2]
#2. Select rows 1 to 3
df[1:3,]
#3. Select rows 1 to 3 and columns 3 to 4
df[1:3,3:4]
#4. Select items if price is more than 8
df1 <- subset(df,PRICE > 8)
df$PRICE > 8
#5. Select row info where item is book
subset(df,ITEMS == "book")
#6.How to add columns to the existing dataframe
df$QUANTITY <- c(10,35,50,4) 
#How to add row to existing dataframe
df[5,] <- c(50,'eraser', FALSE, 4.5, 8)
str(df)
df$STORE = as.logical(df$STORE)
df$PRICE = as.numeric(df$PRICE)
df$QUANTITY = as.numeric(df$QUANTITY)
str(df)
library(dplyr)
#Q1: Select and print all the columns which ends with "e"
select(df,ends_with("e"))
#Q2: Select and print column from STORE to QUNATITY
select(df,STORE:QUANTITY)
#Q3: Select and print all columns except PRICE
select(df, -(PRICE))
select(df, !(PRICE))
#Q4: Print info all items with price more than 8
filter(df,PRICE > 8)
#Q5: Print rows with items as pen
filter(df,ITEMS == "pen")
df %>% filter(ITEMS == "pen")
#Q6: Print info of all the items which are available in store and price is less than 5
df %>% filter(STORE == TRUE, PRICE <5)
filter(df,(STORE == TRUE) & (PRICE <5))
#Q7: Arrange the dataframe based on Price in decreasing order
arrange(df,desc(PRICE))
#Q8: Rename Price column as Cost
rename(df, COST = PRICE)
#Q9: Create a new column name total (Price multiplied by Quantity)
df$TOTAL <- df$PRICE*df$QUANTITY #(using base)
mutate(df, TOTAL = PRICE * QUANTITY)
#Q10: Group the dataframe based on store availability and find the mean quantity required 
group_by(df, STORE) %>% summarise(mean(QUANTITY))
group_by(df, STORE) %>% summarise()
?summarise

df[4,3] <- TRUE
df
df[5,5] <- NA
mean(df$QUANTITY,na.rm =TRUE) # calculate mean if NA is there in the dataframe
mean(df$QUANTITY)
df$QUANTITY <- as.numeric(df$QUANTITY) 

table(is.na(df)) #Tabulate number of NA in the dataframe
new_df <-na.omit(df) #remove rows with NA
new_df

new_df[4,4] <- ""
str(new_df)
is.na(new_df)
new_df$PRICE <- as.numeric(new_df$PRICE)
mean(new_df$PRICE, na.rm=T)
complete.cases(new_df) #logical output for complete rows
new_df[complete.cases(new_df) == TRUE,]
table(is.null(new_df))
is.null(new_df)
new_df
str(new_df)
