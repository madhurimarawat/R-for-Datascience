# Array in R
# Array is a multi-dimension homogeneous data structure which comprises of data in row and column manner
# Array is an extension in matrix

# Creating Vectors
vec1<-c(1,4,6,5,9,8)
vec2<-c(1,5,3,12,9,8)
print("Vectors are:")
print(vec1)
print(vec2)

# dim to set dimensions 
a1<-array(c(vec1,vec2),dim=c(2,3,2))
print("Array is:")
print(a1)
print("Element at 1 row 3 column 2 layer is:")
print(a1[1,3,2])

# Creating Matrix
m1=matrix(seq(4.8,0.1,by=-0.1),nrow=4,ncol=2)
print("Matrix is:")
print(m1)

# Creating Array
a1=array(m1,dim=c(4,2,6))
print("Array is:")
print(a1)

# Extracting elements using slicing
obj1=c(a1[,,4],a1[,,1])
print("Combination of 4 layer and 1 layer is:")
print(obj1)