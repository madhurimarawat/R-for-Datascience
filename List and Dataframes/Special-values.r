# Special values in R
# Infinity symbol "Inf"
# Division by 0 is Inf
print(8/0)

# NaN - Not a Number or undefined value,symbol= "NaN"
# NA - Represents missing value symbol=" NA"
# NULL- An empty object or variable

# Creating two vectors 
x=c(1,2,NA,3,4)
y=c(1,2,NULL,3,4)
z=c(1,2,NaN,3,4)

# NA and NaN is counted in indexing while NULL is ignored
print(x[3])
print(y[3])
print(x[4])
print(y[4])
print(z[3])
print(z[4])

# Mean or average 
# If we have NA in values mean is going to be NA
# If we have NULL it is going to be actual value
print(mean(x))
print(mean(y))
print(mean(z))

# Class
print(class(x))
print(class(y))
print(class(z))

# Creating a Vector
s=c(1,Inf,NaN,NA,NULL)
print(s)

# Finding Mean
print(mean(s))

# Finding Class
print(class(s))

# Finding it is numeric or not
print(is.numeric(s))

# Creating a vector of special values
x=c(1,2,7,NA,8,NULL,9,10)
print(x[6])