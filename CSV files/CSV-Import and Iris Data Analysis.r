# Importing Csv file in R

# Inbuilt Functions in R
# Importing CSV file

#  \ produce an error in R 
# To solve this error use
#   1. Two backslash \\
#   2. Use Forwardslash  /

# Reading CSV file
data<-read.csv("C:\\Users\\rawat\\Documents\\Automobile.csv")
print(data)

# We can also use read_csv
# Defined in data.table
# Importing data.table
# TO install the Package
# install.packages("readr")
# importing library
# library("readr")

data2<-read.csv("C:\\Users\\rawat\\Documents\\Nba.csv")
print(data2)

# library("data.table")-Not working
# Using Inbuilt Funcions in R
# Row column number
# Description about colunn
str(data)
str(data2)

# Starting rows viewing of (By default 6)
head(data)
head(data2)

# Setting value
head(data,n=10)
head(data2,n=10)

# Ending rows viewing of (Bydefault 6)
tail(data)
tail(data2)

# Setting value
tail(data,n=10)
tail(data2,n=10)

# Table is used to identify frequency of categorical data or understand count of different levels which are preset in categorical columns
table(data$length)
table(data2$Age)

# Arithmetic Functions
# To find minimum 
min(data$length)
min(data2$Age)

# To find maximum 
max(data$engine)
max(data2$Height)

# To find Mean or Average
mean(data$length)
mean(data2$Age)

# To find range (Max and min value)
range(data$length)
range(data2$Age)

# For iris Dataset

# Load the iris dataset
# Seeing first rows of data
data("iris")
head(iris)

# Summarizing the iris dataset
summary(iris)

# dim to get dimensions of dataset
dim(iris)

# names to get column names
names(iris)


# Data visualization

# Plotting histogram
hist(iris$Sepal.Length,col='steelblue',main='Histogram',xlab = "Length",ylab = "Frequency")

# Plot to create scatter plot
plot(iris$Sepal.Width,iris$Sepal.Length,col='steelblue',main='Scatter Plot',xlab = "Sepal Length",ylab = "Sepal Width",pch=19)
boxplot(Sepal.Length~Species,data=iris,main='Sepal Length by Species',
        xlab='Species',
        ylab='Sepal Length',col='steelblue',
        border='black')

# Box Plot
boxplot(Sepal.Length~Species,data=iris,main="Box plot of Sepal length by Species",xlab="Species",ylab="Sepal Length",col='pink',border='black')


# Plotting using ggplot2 package

# Importing Library
library(ggplot2)

ggplot(iris,aes(x=Sepal.Width,y=Sepal.Length,fill=Sepal.Width))+geom_bar(stat = "identity")+theme_minimal()+ ggtitle("My Plot")+xlab("X values")+ylab("Y values")