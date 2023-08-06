# List in R

# List is a linear(1 D) heterogeneous data structure 
# List elements regain individual identity

li<-list(1,"a",TRUE)
print(li)
class(li)

# Indexing starts at 1 in R
# Accessing individual elements

print(li[[1]])
class(li[[1]])
print(li[[2]])
class(li[[2]])
print(li[[3]])
class(li[[3]])

# Creating list of vectors

li1<-list(c(1,6,3,5,4,7),c(TRUE,FALSE,TRUE,FALSE,FALSE),c("A","B","h","o","p"))
print(li1)

# Accessing individual elements
print(li1[[3]][2])

# Accessing first and last elements
print(c(li1[[1]][1],li1[[3]][5]))

# Accessing range of value elements
print(c(li1[[2]][3],li1[[3]][4]))

# Creating a List
l1=list("apple",3,TRUE)
print(l1)

# Accessing components of a list
# Can be done by indexing
print(l1[1])
print(l1[c(1,3)])

# Naming Components of a List
l2<- list(fruit="apple",quantity=3,isfresh=TRUE)
print(l2)

# Nested Lists
l3<-list(fruit="apple",details=list(quantity=3,isFresh=TRUE))
print(l3)