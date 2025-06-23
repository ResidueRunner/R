getwd() #Get the working directory
setwd("/home/bif/Downloads") #Don't run this command Set the working directory
file.choose()
#Read a text file
df <- read.table("/home/bif/Downloads/r_class1.txt",header=T,sep="\t")
head(df) #Print the top 6 lines
View(df) #To view the file

?read.table
#Read a csv file
df_csv <- read.csv("/home/bif/Downloads/r_class1.csv")
df_csv <-read.csv("r_class1.csv")
head(df_csv)

#Read a delim file with sep ":"
df_delim <- read.delim("/home/bif/Downloads/r_class1_delim.txt",sep=":")

#Read excel file
install.packages("readxl",dependencies = T)
library(readxl)

ls("package:readxl")
file.choose()
df_xls <- read_excel("/home/bif/Downloads/r_class1.xlsx")
View(df_xls)


#Read xml file

install.packages("xml2",dependencies = T)
library(xml2)

xml_file <- read_xml("/home/bif/Downloads/books.xml")
ls("package:xml2")
#xml_list <- as_list(xml_file)
#xml_name(xml_file)
#xml_parent(xml_file)
#xml_text(xml_file)

library(tibble)
title <- xml_text(xml_find_all(xml_file,xpath = "//title"))
author <- xml_text(xml_find_all(xml_file,xpath = "//author"))
df <- tibble(catalog = title, authors = author)
df

#Read json file
install.packages("jsonlite")
library(jsonlite)
jsonfile <- fromJSON("/home/bif/Downloads/color.json")
jsonfile$aqua

#Read html file
h <- read_html("/home/bif/Downloads/cran.html")
h
