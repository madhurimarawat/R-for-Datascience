# Decision Making Statements in R

# Flow control or Branching Statements
# if and if else

# If statement

# Example 1
# Creating a Variable
a=8

if (a>4){
  print("a Greater than 4")
}


# If  else statement
# Else statement should be just after the if block

# Example 1
if (a>4){
  print("a Greater than 4")
}else{
  print("a is not Greater than 4")
  
}


# Example 2
x<-25
if (is.integer(x))
{
  print("x is an integer number")
} else {
  print("x is not an integer number")
}

# Example 3
# %in% used to search the key in vector

# Creating a Vector
vec<-c(seq(1:8))
if(7 %in% vec)
{
  print("Key 7 is found in the vector")
}else
{
  print("Key 7 is not found in the vector")
}


# else-if statements
# We can also add else if to compare for additional statements

# Variable
Prog_score<-77

if(Prog_score>85){
  print("Passed in Programming Exam with A Grade")
  
  }else if(Prog_score>75){
  print("Passed in Programming Exam with B Grade")
  
  }else if(Prog_score>65){
    print("Passed in Programming Exam with C Grade")
    
  }else if(Prog_score>55){
    print("Passed in Programming Exam with D Grade")
    
}else{
  print("Passed in Programming Exam with E Grade")
}
