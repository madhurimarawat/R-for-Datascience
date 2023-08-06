# Matrix in R

# Matrix is a non-linear(2 D) homogeneous data structure which comprises of data in row and column manner

m1<-matrix(c(1,2,6,9,8,7,4))
print(m1)

# Deciding row and column in matrix

m2<-matrix(c(1,2,6,9,8,7,4),nrow=2,ncol=3)
print(m2)

# Arrangement Row wise

m3<-matrix(c(1,2,6,9,8,7,4),nrow=2,ncol=3,byrow=TRUE)
print(m3)

# Indexing starts at 1 in R
# Accessing individual elements first row then column

print(m3[1,2])
print(m3[2,3])


# matrix() function is used to create matrix
# Arguments-data,nrow(No of Rows),ncol(No of Columns),byrow(a logical value indicating filling of data by row)

# 2x3 Matrix
m1<- matrix(1:6,nrow=2,ncol=3)
print(m1)
m2<- matrix(1:6,nrow=2,ncol=3,byrow = TRUE)
print(m2)

# 2x4 Matrix
m3<- matrix(1:8,nrow=2,ncol=4)
print(m3)

# Using seq function- 2x5 Matrix
m4=matrix(seq(10,20,by=2),nrow=2,ncol=5)
print(m4)

# Operations on Matrix

# First Matrix - 4x1 Matrix
m1=matrix(1:4,nrow=4)
print(m1)

# Second Matrix - 4x1 Matrix
m2=matrix(5:8,nrow=4)
print(m2)

# Using rbind() - Combine/Add Matrix Row Wise -1x8 Matrix
print(rbind(m1,m2))

# Using rbind() - Combine/Add Matrix Columns Wise- 4x2 Matrix
print(cbind(m1,m2))

# One More Example

# 2x2 Matrix
m1=matrix(seq(2,8,by=2),nrow=2,ncol=2,byrow=TRUE)
print(m1)

# 2x2 Matrix
m2=matrix(seq(9,6,by=-1),nrow=2,ncol=2,byrow=TRUE)
print(m2)

# 4x2 Matrix
print(rbind(m1,m2))

# 2x4 Matrix
print(cbind(m1,m2))