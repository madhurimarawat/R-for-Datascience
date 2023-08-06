# Data frame in R

# Data frame is a non-linear(2 D) heterogeneous data structure which comprises of data in row and column manner

data.frame(Fruit_name=c("Apple","Banana","Orange"),Fruit_cost=c(100,50,75))->Fruit

print(Fruit)

# To Extract individual column $ symbol is used

print(Fruit$Fruit_name)
print(Fruit$Fruit_cost)

# Creating a Data frame in R
df=data.frame(name=c("John","Mary","Bob"),age=c(25,30,35),isStudent=c(TRUE,FALSE,TRUE))
print(df)

# Accessing data frame values
# To access column
print(df$name)
print(df[1])

# To access column values
print(df$name[1])

# To access rows
print(df[1,])

#To access rows by a list of index values
print(df[c(1,3)],)

# select rows by index range
print(df[1:3])

# First N rows
print(head(df,3))

# Last N rows
print(tail(df,3))

# Select rows by name
print(df["3",])
print(df[2,])

# Adding a New Column
df$Gender=c("M","F","M")
print(df)

# Combining Data Frames
# rbind() (combine data frame row wise) and cbind() (combine data frame column wise) are used.
df1=data.frame(name=c("John","Mary"),age=c(25,30))
df2=data.frame(name=c("Jenna","Layla"),age=c(26,38))

print(df1)
print(df2)

print(rbind(df1,df2))

print(cbind(df1,df2))

# Number of rows(elements) should be same else it gives error in rbind and number of columns(elements) should be same else it gives error in cbind()
df3=data.frame(name=c("M","F","M"),age=c(TRUE,FALSE,TRUE))
print(df3)

print(rbind(df1,df3))
print(rbind(df2,df3))

# cbind dosen't work as column elements are different
# print(cbind(df1,df3))
# print(cbind(df2,df3))
# df4=data.frame(Gender=c("M","F","M"),age=c(TRUE,FALSE,TRUE),name=c("jay","amanda","jaycee"))
# print(rbind(df1,df4))
# print(rbind(df2,df4))
# print(cbind(df1,df4))
# print(cbind(df2,df4))
# Names of columns should be same else it shows error
# df3=data.frame(Gender=c("M","F"),isStudent=c(TRUE,FALSE))

# subsetting a dataframe
# subset the dataframe based on a logical condition
print(df[df$age>30],)

# Logical Records Subset
# Meet a certain logical condition
# Using subset function
# Arguments- df,expr (df is dataframe, expr is expression)
# Error showing object 'x' not found
# print(subset(df,x>1))

print(subset(df,select="name"))

# Removing rows from dataframe
print(subset(df,select= -c(name,age)))

# Creating New column
df3=data.frame(name=c('a','b','c'),age=c(1,2,3))
df4=data.frame(name=c('d','e','f'),age=c(4,5,6))
rbind(df3,df4)

newcol2=c('val1','val2','val3')
cbind(df3,newcol2)

# Dosen't update existing dataframe insead creates copy with newly added column
print(df3)

df3$newcol2=c('val1','val2','val3')
print(df3)