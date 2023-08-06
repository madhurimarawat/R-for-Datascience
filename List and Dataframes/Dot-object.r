# Is Dot Object-checking function
# Checking function- Used to check data for a particular datatype

# is.numeric() , is.na() are checking functions
# is.numeric() - For checking numeric data
# is.na() - For checking NA value

df=data.frame(name=c("John","Mary","Bob"),age=c(25,30,35),isStudent=c(TRUE,FALSE,TRUE))
print(df)

print(is.numeric(df$x))
print(is.na(df$x))

s=c(1,Inf,NaN,NA,NULL)
print(is.numeric(s))
print(is.na(s))
print(is.nan(s))
print(is.null(s))
print(is.infinite(s))

# As dot coercion Functions
# Converts data to given data type
print(as.numeric(df$x))
print(as.numeric(s))

#print(as.nan(s))- No function
#print(as.infinite(s))- No function
#print(as.NA(s))- No function

print(as.null(s))