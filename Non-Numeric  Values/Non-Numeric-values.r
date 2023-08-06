# Non Numeric values in R
# Logical values in R
# Can be either TRUE or FALSE
# Used in logical operations as a result of relational operations
x<-TRUE
y<- FALSE
print(x)
print(y)

# Relational Operator
# used to compare two values
a=9
b=8
print(a<b)
print(b<a)

# Characters 
# Single textual elements in R enclosed in ""(double quotes) or ''(single quotes)
# Can be elements ,letters or symbols
char="A"
print(char)
char2='a'
print(char2)

# String
# sequence of characters in ""(double quotes) or ''(single quotes)
s="hello"
print(s)
s2='hello'
print(s2)

# Concatenation
# To combine strings, paste function is used
s2="World"
print(paste(s,s2))

# Escape sequences
# Represent special values characters in strings
s3="k\n"
print(s3)
print("lkj")

# Substrings and Matching 
# substr() function is used
# Arguments-variable,start,stop
str="Hello , world"
print(substr(str,start=1,stop=5))
# No need to explicitly write start stop
print(substr(str,2,stop=4))

# grep Function
# Used to find pattern in a data
# Arguments- pattern(pattern to be found),x(data variable),ignore.case(Ignores case),value(Returns the matched value),fixed(Returns exact matched Value)

pattern="World"
print(grep(pattern,str,ignore.case=FALSE,value=FALSE,fixed=FALSE))

pattern1="world"
print(grep(pattern1,str,ignore.case=FALSE,value=TRUE,fixed=TRUE))

x=c("CAR","car","Bike","BIKE")
print(grep("car",x))
print(grep("Bike",x))

# If we set value to be TRUE, then it returns value instead of index
print(grep("car",x,ignore.case = FALSE,value=TRUE))
print(grep("car",x,ignore.case = TRUE,value=TRUE))
print(grep("Bike",x,ignore.case = TRUE))

x1=c("CAR","car","Bike","BIKE","CARMAKER","carowner")

print(grep("car",x1,ignore.case = FALSE,fixed=FALSE))
print(grep("car",x1,ignore.case = TRUE,fixed=FALSE))
print(grep("car",x1,ignore.case = FALSE,fixed=TRUE))
# Warning message:
# In grep("car", x1, ignore.case = TRUE, fixed = TRUE) :
# argument 'ignore.case = TRUE' will be ignored
# warning as fixed only returns matching value with respect to case
# fixed dosen't ignore case
# print(grep("car",x1,ignore.case = TRUE,fixed=TRUE))