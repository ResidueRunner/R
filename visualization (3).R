file.choose()
my_data <- read.csv("C:\\Users\\HP\\Downloads\\CSV_FILE USING R-20250508T160523Z-1-001\\CSV_FILE USING R\\covid19_data.csv") 
head(my_data)

str(my_data)
glimpse(my_data)

#Piechart
my_data_zone = table(my_data$Zone)
my_data_zone
percentlabels <- round(100*my_data_zone/sum(my_data_zone),2) #Cal % values
#R code to create the Pie Chart
pie(my_data_zone, col=rainbow(length(my_data_zone)), labels = percentlabels, main = '% of States')
#Legend for the pie chart
legend("right",c("Centre","East","North","North-East","South","West"),fill=rainbow(length(my_data_zone)),cex=0.6)


#Barplot
x <- group_by(my_data, Zone) %>% summarise(mean(Cases)) #This we have done in the previous class
xVal<-c("Centre","East","North","North-East","South","West")
#R code to create the barplot
barplot(x$`mean(Cases)`,xlab="Zones",ylab="Mean Cases",col=c("#a6611a","#dfc27d","#f5f5f5","#80cdc1","#018571"),
        main="Mean Distribution Of Covid-19 cases (Zone)",border="black",names.arg=xVal)

tiff("scatterplot.tiff",width=1200,height=800,res=300)
plot(my_data$Cases,my_data$Aircrats_movements,ylab="Aircraft movements",xlab="# of cases",main="Cases Vs Aircrafts Movements",pch=16,cex=1.3,col="blue")
dev.off()
getwd()
