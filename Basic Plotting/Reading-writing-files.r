# R provides functions for reading and writing various type of files such as csv,excel and text files
data=read.csv("C:\\Users\\rawat\\Documents\\4 SEMESTER\\R for Datascience\\Lab\\Practice\\Class\\Unit 5\\Automobile.csv")
print(data)

# To write in CSV files write.csv is used
write.csv(data,"C:\\Users\\rawat\\Documents\\4 SEMESTER\\R for Datascience\\Lab\\Practice\\Class\\Unit 5\\Automobile.csv")

# Built in data sets like iris
data(iris)
print(iris)

# External files
# For excel files-read_excel(),read.table(), dbGetQuery()
library(ggplot2)

# Creating Two vectors
x=c(1,2,3,4,5)
y=c(2,4,6,8,10)

data1=data.frame(x=x,y=y)

ggplot(data1,aes(x=x,y=y,col=x))+ggtitle("My Plot")+xlab("X Values")+ylab("Y Values")+geom_point(size=4,pch=15)
ggsave(path="C:\\Users\\rawat\\Documents\\4 SEMESTER\\R for Datascience\\Lab\\Practice\\Class\\Unit 5","my_plot.png",width=6,height=4)

# Ad Hoc Objects Read/write operations
# saveRDS() and readRDS() to save and load R objects

data=list(x=x,y=y)
saveRDS(data,"C:\\Users\\rawat\\Documents\\4 SEMESTER\\R for Datascience\\Lab\\Practice\\Class\\Unit 5\\mydata.rds")

loaded_data=readRDS("C:\\Users\\rawat\\Documents\\4 SEMESTER\\R for Datascience\\Lab\\Practice\\Class\\Unit 5\\mydata.rds")
print(loaded_data)