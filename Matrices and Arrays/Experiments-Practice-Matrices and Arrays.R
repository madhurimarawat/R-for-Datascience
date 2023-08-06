# Experiment 1

# Write R code to create a 3x3 matrix filled with the values 1 to 9, using the matrix() function. Then extract the first row and last column of the matrix using row and column indexing.

m1=matrix(1:9,nrow=3,ncol=3)
print(m1)

print(m1[1,])
print(m1[,3])


# Experiment 2

# Define a 4x4 matrix with all elements set to 0, and then fill the diagonal with the values 1, 2, 3, and 4 using the diag() function.

m1=matrix(0,nrow=4,ncol=4)
print(m1)

# 1 method
m1=c(1,2,3,4)
diag(m1)

# 2 method
m1=matrix(0,nrow=4,ncol=4)
diag(m1)=c(1,2,3,4)
print(m1)


#Experiment 3

#Create two- 1- matrices, A and B, each with dimensions 3x3, filled with random values. Combine them into a single matrix C by binding them together by columns.

m1=matrix(c(1,4,5,5,5,6,6,2,8),nrow=3,ncol=3)
print(m1)

m2=matrix(c(1,4,8,5,41,62,6,26,18),nrow=3,ncol=3)
print(m2)

print(cbind(m1,m2))


# Experiment 4

# Define a 5x5 matrix and replace the values in the 3rd row and 4th column with the value 0, using indexing.

m1=matrix(1:25,nrow=5,ncol=5)
print(m1)

m1[3,]=0
m1[,4]=0

print(m1)


# Experiment 5

# Create a 2x2 matrix with any values you choose, and then extract the elements in the top-right and bottom-left positions using the indexing operator.

m1=matrix(4:7,nrow=2,ncol=2)
print(m1)

print(m1[1,2])
print(m1[2,1])