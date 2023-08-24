# Switch case in R
# Switch case is used to execute statement or print value according to the matching case
# Default case is not available in R, and NULL is Printed if there is no matching value

# Syntax of switch case
# Switch(expression,case1,case2,....)
# Switch case implement by two ways one is index value and another is matching value
# For index value it will print the value corresponding to the given index

# Based on index value
# Indexing starts from 0
# We only provide value in this

switch_case_index<-switch(2,
          "Hello",
          "How",
          "are",
          "you"
)

# Printing output from switch case
print("Based on index 2 value is: ")
print(switch_case_index)

# Based on Matching case value
# We provide both case and value in this

# Making variable for comparison
var<-"2"

# Here NULL is printed as default case if no case matches
switch_case_value<-switch(var,
          "1"="C",
          "2"="C++",
          "3"="Python",
          "4"="R"
)
print("Based on matching case, value is: ")
print(switch_case_value)
