# Mathematical Functions 

# Experiment 1
# Develop the R program for Basic Mathematical computation -Square, Square root, exponential etc.

var1<-7

# Square
var1_square1=var1^2
print(var1_square1)
var1_square2=var1**2
print(var1_square2)

# Square Root
var1_sqrt=sqrt(var1)
print(var1_sqrt)

# Exponential
var1_exp=exp(var1)
print(var1_exp)

# Experiment 2

# Create an object X that stores the value then overwrite the object in by itself divided by Y. Print the result to the console.
x=23
print(x)

y=10
x=x/y
print(x)
  
# Experiment 3

# Create and store a sequence of values from x to y that progresses in steps of 0.3

x=10
y=15.9
v1=seq(x,y,by=0.3)
print(v1)

# Experiment 4

# Overwrite the existing object using the same sequence with the order reversed.

# Method 1

v1=sort(v1,decreasing=TRUE)
print(v1)

# Method 2

v1=seq(x,y,by=0.3)
v1=rev(v1)
print(v1)

# Method 3

v1=seq(y,x,by=-0.3)
print(v1)
  
# Experiment 5

# Confirm that the length of the vector created is 20.

print(length(v1)==20)

# Experiment 6

# Extract the first and last elements of already created vector from, storing them as a new object. 

First_ele=v1[1]
Last_ele=v1[length(v1)]

print(First_ele)
print(Last_ele)