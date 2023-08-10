# Creating Dataframe
df=data.frame("Name"=c("Alice","Bob","Charlie","David","Eve"),"Age"=c(25,30,35,40,45),"Gender"=c("Female","Male","Male","Male","Female"),"Salary"=c(50000,60000,70000,80000,90000))
print(df)

# Adding New Row

# Method 1
# This converts all data types to string
df[nrow(df)+1,]=c("Madhurima",19,"Female",42000)
print(df)

# Method 2
# This retains all data types
df[nrow(df)+1,]=list("Madhurima",19,"Female",42000)
print(df)

# Method 3
# Using row bind
new_row=c(Name="Madhurima",Age=19,Gender="Female",Salary=42000)
df2=rbind(df,new_row)
print(df2)

# Method 4
# Using tibble/tidyverse
library(tidyverse)
df2=df%>%add_row(Name="Madhurima",Age=19,Gender="Female",Salary=42000)
print(df2)

# Method 5
# Using dplyr
library(dplyr)
df2=data.frame(Name="Madhurima",Age=19,Gender="Female",Salary=42000)
df3=df%>%rows_insert(df2)
print(df3)

# Adding New Column
df$Department=c("HR","Finance","IT","Marketing","Operations","Datascience")
print(df)

# Subseting the dataframe
df_subset=subset(df,Age>=35 & Salary<80000)
print(df_subset)