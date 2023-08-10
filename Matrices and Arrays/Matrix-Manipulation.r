#Creating a matrix
mat1=matrix(seq(25,55,by=5),nrow=10,ncol=2)
print(mat1)
mat2=matrix(seq(60,80,by=5),nrow=10,ncol=2)
print(mat2)
#Row bind and Column bind
print(rbind(mat1,mat2))
print(cbind(mat1,mat2))
mat3=matrix(sample(1:20,replace =TRUE),nrow=4,ncol=5)
print(mat3)
mat4=matrix(sample(15:20,replace =TRUE),nrow=4,ncol=5)
print(mat4)
#Row bind and Column bind
print(rbind(mat3,mat4))
print(cbind(mat3,mat4))