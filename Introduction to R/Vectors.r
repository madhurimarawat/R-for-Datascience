# Vectors in R

# vector is a 1d linear homogeneous data structure in R

# creating a vector
# c-combine operator

vec1<-c(1,5,9,8)
print(vec1)
class(vec1)

vec2<-c(12.58,5.35,8.66,87)
print(vec2)
class(vec2)

vec3<-c(TRUE,FALSE,TRUE)
print(vec3)
class(vec3)

vec4<-c("a","b","d","f")
print(vec4)
class(vec4)

vec5<-c(12+5i,5+3i,8+6i,8+7i)
print(vec5)
class(vec5)

# Mix vector
# converted to highest precedence data type
# character>Complex>Numeric>logical
vec6<-c(12+5i,TRUE,8+6i,8)
print(vec6)
class(vec6)

vec7<-c(90,TRUE,8)
print(vec7)
class(vec7)

vec8<-c(12+5i,TRUE,8+6i,8,"a",56.32,"k","p","l")
print(vec8)
class(vec8)

# Indexing starts at 1 in R
# Accessing individual elements

print(vec8[1])
print(vec8[2])
print(vec8[3])

# Accessing range of value elements
print(vec8[3:5])

# Accessing first and last elements
print(vec8[c(1,6)])

# Vectors vs Matrix Vs Tensors
# Vector is any row or column ie: 1 Dimensional
# Matrix is any row and column ie: 2 Dimensional
# Tensor is row and column ie: Multi Dimensional
# Tensor is Multidimensional Array

# Creating a Vector in R
vn<- c(1,2,3,4,5)
vs<- c("1",2,3,4,5)
print(vn)
print(vs)

# Operations on Vectors

# Sequences
# By Default it adds 1
s1=seq(1,10)
print(s1)

# By specifies value to be added
# seq takes 3 arguments - starting value ,ending value and step to be added in by
s2= seq(2,20,by=2)
print(s2)
s3=seq(1,10,by=0.5)
print(s3)

# Repetition
# rep() function takes 2 arguments- value to be repeated and the no of times it is to be repeated

# Repeat hello 5 times
print(rep("Hello",5))

# vector of repeating no from 1 to 3 repeated 5 Times
print(rep(seq(1:3),5))

# Repeat each element in value no of times
print(rep(1:3,each=5))
print(rep(seq(3,30,by=3),each=5))

# Sorting - Arranging things in ascending or descending order
v1=c(1,5,6,4,2,8,3,5,1,7)
print(sort(v1))
print(sort(v1,decreasing=TRUE))

#Lengths 
print(length(v1))

# Subsetting and element extraction
# Subsetting
print(v1[1:3])

# Subset the vector to select only even numbers
#  %% - Modulus Operator in R
print(v1[v1%%2==0])

# Element Extraction
print(v1[2])

# Removing element at index 3 
print(v1[-3])

# Extracting element 1 and 5 from the vector
print(v1[c(1,5)])

# Extracting odd numbers
print(v1[v1%%2!=0])

# Vector Oriented Behaviour
# All operations performed on once
print(v1+5)
print(v1-5)
print(v1*4)
print(v1/9)