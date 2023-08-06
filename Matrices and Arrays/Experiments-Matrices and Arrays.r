# Experiment 1

# Create and Store a three-dimensional array with six layers of a 4X2 matrix, filled with a decreasing order of values between 4.8 and 0.1 of the appropriate length.

# Creating a matrix then giving values will create an array of same matrix values again and again.

a1=array(seq(4.8,0.1,by=-0.1),dim=c(4,2,6))
print(a1)

# Experiment 2

# Extract and store as a new object the fourth and first-row elements, in that order,of the second column only of all layers of (1).

obj1=a1[1,2,]
obj2=a1[4,2,]

new_obj<-rbind(obj1,obj2)
print(new_obj)


# Experiment 3

# Use a fourfold repetition of the second row of the matrix formed in (2) to fill a new array of dimensions 2 X 2 X 2 X.

new_arr=array(replicate(4,new_obj[2,]),dim=c(2,2,4))
print(new_arr)

# Experiment 4

# Create a new array comprised of the results of deleting the sixth layer of (1).

a2=a1[,,-6]
print(a2)

# Experiment 5

# Overwrite the second and fourth row elements of the second column of layers 1,3 and 5 of (4) with -99.

a2[c(2,4),2,c(1,3,5)]<--99
print(a2)
