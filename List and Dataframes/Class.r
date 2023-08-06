# Class in R
# used to check class of an object
# Multidimensional Arrays
A=array(1:24,dim=c(2,3,4))
print(class(A))

# Matrix Creation using vector
v1=c(1,5,6,3,2,7,9,1)
print(class(v1))

# Matrix
m=matrix(v1)
print(class(m))

# 2x3 Matrix
m1<- matrix(1:6,nrow=2,ncol=3)
print(class(m1))

# Logical Values
x<-TRUE
print(class(x))

# List
l1=list("apple",3,TRUE)
print(class(l1))

# Vector
c=c("red","blue","green","Green","Blue","blue","red","green")
print(class(c))

# Factor
cf=factor(c)
print(class(cf))

# Data Frame
df=data.frame(name=c("John","Mary","Bob"),age=c(25,30,35),isStudent=c(TRUE,FALSE,TRUE))
print(class(df))