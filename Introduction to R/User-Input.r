# User Input in R

# Readline and scan functions are used to take input in R

# Using readline() function
# By default the data type is string

# Prompt is used to display message to the user
# Taking name as input
name<-readline(prompt="Enter Name: ")

# Paste is used to concatenate two strings, since in R we cannot use multiple strings in print statement together,we use paste function
# Paste also allows strings to be separated by delimiter which can be given by separator(sep)
print(paste("Name is:",name,sep=" ",collapse=NULL))

# Paste0 function is also available, it concatenates string directly without any space
# Checking class
print(paste0("Data type of input is: ",class(name),sep=" ",collapse=NULL))

# Converting to integer datatype
# Taking age as input
# It is not necessary to add prompt
age<-as.integer(readline("Enter Age: "))
print(paste("Age is: ",age))

# Checking class
print(paste("Data type of input", age," is: ",class(name)))

# Taking Multiple Inputs, we can use {} in R
# All input statements are given in {}

{
  v1=as.integer(readline("Enter First Number: "))
  v2=as.integer(readline("Enter Second Number: "))
  v3=as.integer(readline("Enter Third Number: "))
  v4=as.integer(readline("Enter Fourth Number: "))
}

print(paste("Addition of Numbers is: ",v1+v2+v3+v4))

# Using scan() function

# Takes input from console and is used when inputs are needed quickly
# Reads input in the form of vector or list
# We can also use this method to take input from a file
# To terminate enter key needs to be pressed 2 times
# We can give data type in scan

# For double data type
var_d=scan(what = double())
print(paste("Double datatype user input using scan is:",var_d,sep=" "))

# For String data type
var_s=scan(what = "")
print(paste("String datatype user input using scan is:",var_s,sep=" "))

# For Character data type
var_c=scan(what = character())
print(paste("Character datatype user input using scan is:",var_c,sep=" "))

# Taking file as input

# For double data type
file_d=scan("User-Input-Number.txt",what = double())
print("Double datatype file input using scan is:")
print(file_d)

# For String data type
file_s=scan("User-Input-String.txt",what = "")
print("String datatype file input using scan is:")
print(file_s)

# For Character data type
file_c=scan("User-Input-String.txt",what = character())
print("Character datatype file input using scan is:")
print(file_c)