# Subsetting of Matrix

# Matrix 1 3x3 matrix
m1=matrix(1:9,nrow=3)
print(m1)

# Extracting First Row
print(m1[1,])

# Extracting First Column
print(m1[,1])

# Extracting Element
print(m1[2,3])

# Extracting  Diagonal Element
print(diag(m1))

# Omitting and Overwriting
# Omitting is removing elements

# 1 row remove
m1[-1,]

# 1 column remove
m1[,-1]

# Dosen't remove single element remove entire row and column
m1[-2,-1]

#Overwriting is rewriting or changing elements or entire row or column

#Rewriting First Row
m1[1,]=c(8,10,12)
print(m1)

#Rewriting First Column
m1[,1]=c(18,11,23)
print(m1)

#Rewriting Element
m1[2,2]=9
print(m1)

m2=matrix(1:12,nrow=3,ncol=4)

#Storing in Variable
a=m1[1,]
print(a)

a=m1[,3]
print(a)

a=m1[1,3]
print(a)