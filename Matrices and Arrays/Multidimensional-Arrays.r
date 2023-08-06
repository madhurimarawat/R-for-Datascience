# Multidimensional Arrays
# 1 D Matrix is Vector 2 D matrix is Matrix More than 2 D is Tensor

# dim Arguments-First Index is for Row Second is for Column Third is for Layers
A=array(1:24,dim=c(2,3,4))
print(A)

# Accesing Elements

# First Index is for Row Second is for Column Third is for Layers
print(A[2,3,4])

# Replacing Elements
A[1,2,3]=100
print(A)

# Subsetting 
B=A[1:2,2:3,1:2]
print(B)

# R does not support 3 D plotting
# 5 D tensor
M1=array(1:55,dim=c(1,2,3,4,5))
print(M1)

# Multiple of 5
M2=array(seq(5,75,by=5),dim=c(1,2,3,4,5))
print(M2)
