# Creating Nested lists

# Method 1
# Directly adding Information
List=list("Student Id"=c(1,2,3,4),"Name"=c("John Doe","Jane Smith","Alex Brown","Madhurima Rawat"),"Age"=c(20,19,21,19),"Gender"<-c("Male","Female","Male","Female"),"Contact Info"=list("Phone"=c("123-456-7890","123-456-7891","123-456-7892","123-456-7893"),"Address:"=c("123 Man St","456 Elm St","789 Oak St","101 Snow St"),"Email"=c("john@example.com","john@example.com","jane@example.com","alex@example.com","madhu@example.com")),"Courses"=list("Compulsory"=c("Mathematics","English","Chemistry","Physics"),"Optional"=c("Physics","History","Biology","English")))
print(List)


# If we add information in a nested list,it will add in the last or next row but it will not add in the same row
# Method 2
# Adding Information as new column
List1=list("Student Id"=c(1,2,3),"Name"=c("John Doe","Jane Smith","Alex Brown"),"Age"=c(20,19,21),"Gender"<-c("Male","Female","Male"),"Contact Info"=list("Phone"=c("123-456-7890","123-456-7891","123-456-7892"),"Address:"=c("123 Man St","456 Elm St","789 Oak St"),"Email"=c("john@example.com","john@example.com","jane@example.com","alex@example.com")),"Courses"=list("Compulsory"=c("Mathematics","English","Chemistry"),"Optional"=c("Physics","History","Biology")))
print(List1)

# Adding New Column
# Add in the last
List2=append(List1,values=c(4,"Madhurima Rawat",19,"Female","123-456-7893","101 Snow St","madhu@example.com","Physics","English"))
print(List2)

# Merge at the end
List2=append(List1,values=list(4,"Madhurima Rawat",19,"Female","123-456-7893","101 Snow St","madhu@example.com","Physics","English"))
print(List2)

# Trying the c() operator 
# Merge at the end
l=list(4,"Madhurima Rawat",19,"Female","123-456-7893","101 Snow St","madhu@example.com","Physics","English")
print(c(l,List2))

# Dosen't work as number of rows are not same
# l=list(4,"Madhurima Rawat",19,"Female","123-456-7893","101 Snow St","madhu@example.com","Physics","English")
# print(rbind(l,List2))

# Also add at the end
List3=list("Student Id"=4,"Name"="Madhurima Rawat","Age"=19,"Gender"<-"Female","Contact Info"=list("Phone"="123-456-7893","Address:"="101 Snow St","Email"="madhu@example.com"),"Courses"=list("Compulsory"="Physics","Optional"="English"))
print(c(List1,List3))