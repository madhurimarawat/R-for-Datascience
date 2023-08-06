# Matrix Operations and Algebra
# Matrix Transpose in R
# t() function is used
m=matrix(1:24,nrow=3,ncol=8)
print(m)
print(t(m))

# Identity Matrix
I<-diag(3)
print(I)

# Matrix Addition and Subtraction

# Creating Matrices
m1=matrix(1:6,nrow=2,ncol=3)
m2=matrix(7:12,nrow=2,ncol=3)

# Matrix Addition
print(m1+m2)

# Matrix Subtraction
print(m1-m2)

# Matrix Multiplication
# Using %*% operator
# Error as these two matrices are not compatible
# Should be Square matrix or Dimensions should be compatible
# K=m1%*%m2
# print(K)

m1=matrix(1:16,nrow=4,ncol=4)
m2=matrix(16:32,nrow=4,ncol=4)
print(m1)
print(m1)
K=m1%*%m2
print(K)

# Inverse of a Matrix
# Using solve() function
# print(solve(m1))-Only Square Matrix
m3=matrix(1:4,nrow=2,ncol=2)
print(m3)
print(solve(m3))

# To check if inverse is correct or not
# Matrix %*% Matrix inverse = identity matrix
print(m3 %*% solve(m3))