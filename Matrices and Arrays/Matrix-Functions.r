# Creating matrices

A=matrix(1:9,nrow=3,ncol=3,byrow=TRUE)
B=matrix(seq(9,1,by=-1),nrow=3,ncol=3,byrow=TRUE)
print(A)
print(B)

# 1 Creating matrix C
C=rbind(A,B)
print(C)

# 2 Extract first row and third column
sum=C[1,]+C[,3]
print(sum)

# 3 Replacing diagonal elements
# Method 1
diag(A)=c(1,1,1)
print(A)

# Method 2
I3=diag(3)
diag(A)=diag(I3)
print(A)

# 4 Calculating transpose
print(t(A))

# 5 Element addition and subtraction then multiplication
add=A+B
sub=A-B
print(add)
print(sub)
mul=add %*% sub
print(mul)

# 6 Inverse of matrix
inv=solve(mul)
print(inv)

# 7 Creating 3X3X2 multidimensional array
a1=array(c(A,B),dim=c(3,3,2))
print(a1)

# 8 Extracting elements
ele=a1[1,2,2]
print(ele)