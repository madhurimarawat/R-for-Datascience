# Looping Statements in R

# Two Types
# 1. Conditional loop - (1) For  (2) while
# 2. Unconditional loop - (1) repeat

# For loop
print("Using For Loop to traverse through a range")

# Example 1
for (i in 1:9){
  print(i+5)
}

# Example 2
# Creating a Vector
vec_1<-c("mango","apple","banana","grapes","orange")

print("Using For Loop to traverse through Vector elements")

# Traversing through vector elements
for(i in vec_1){
  print(vec_1)
}


# Example 3
# paste() is used for string concatenation

print("Using For Loop to traverse through a range and printing result with string concatenation")

for (i in 1:10) {
  print(paste("Number:",i))
}


# While loop- Iterate til condition
print("Using While Loop")

# Starting Condition
i=1
while(i<9){
  print(i+5)
  i=i+1
}


# Repeat loop
# Their is no condition in while loop so we define condition using conditional statements
# If we will not specify condition, it will become infinite loop

print("Using repeat loop to print elements of vector desired number of times")

vec<-c(seq(1:9))
i<-2

repeat{
  print(vec)
  
  # Increment
  i<-i+1
  
  # This condition controls the ending/termination of this loop
  if(i>3){
    break
  }
}

