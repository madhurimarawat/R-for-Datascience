# R provides functions for reading and writing various type of files such as csv,excel and text files
data=read.csv("C:\\Users\\rawat\\Documents\\4 SEMESTER\\R for Datascience\\CT\\CT 2\\StudentsPerformance.csv")
print(data)

# Seeing first rows
head(data)

# Seeing summary
summary(data)

# Seeing Dimension
dim(data)

# Finding as mean of math.score
AverageMathScore=mean(data$math.score)
print(AverageMathScore)

#Deleting rows
data=data[-c(98,99,100),]
print(data)

#Deleting range of rows
data=data[-(50:1000),]
print(data)

# Adding new column CumulativeScore as sum of math.score ,reading and writing score
data$CumulativeScore=data$math.score+data$ reading.score+data$writing.score
print(data)

# Adding new column CumulativeScore as sum of math.score ,reading and writing score
data$PercentageScore=(data$CumulativeScore/(3*100))*100
print(data)

# Adding new column based on Percentage
data$Result=ifelse(data$PercentageScore>50,"Pass","Fail")
print(data)

# To write in CSV files write.csv is used
# To write into a new file , we just need to give the path-It will automatically create the file
# Else it write in the existing file

write.csv(data,"C:\\Users\\rawat\\Documents\\4 SEMESTER\\R for Datascience\\CT\\CT 2\\Modified_StudentsPerformance.csv")
