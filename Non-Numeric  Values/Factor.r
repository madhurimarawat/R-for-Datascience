# Factor in R
# Factor holds categorical data

factor(c("blue","yellow","red"))->color
print(color)

# Repeating Values

factor(c("blue","yellow","red","red","yellow","red","yellow","yellow","blue"))->color
print(color)

# Categories in Data.They are like lists but with categories.
# Case sensitive
c=c("red","blue","green","Green","Blue","blue","red","green")
print(c)

# Factor with categories blue Blue green Green red
cf=factor(c)
print(cf)

# Identifying categories
# levels() function is used
print(levels(cf))

# Defining and Ordering Levels
colors=c("red","blue","green","Green","Blue","blue","red","green","blue","yellow","pink","magenta","indigo","orange")

# Factor with categories blue Blue green Green indigo magenta orange pink red yellow
# ordered=TRUE levels in alphabetical order
cf1=factor(colors,levels=c("magenta","orange","blue","Blue","Green","green","indigo","pink","red","yellow"),ordered=TRUE)
print(cf1)
print(levels(cf1))

# Combining Two factors
# combine c() function is used
f1=factor(c("A","B","c"))
f2=factor(c("D","E","c"))
print(c(f1,f2))

# Cutting
# Setting value to elements based on range

v1=c(1,5,10,12,18,25)
cut_v=cut(v1,breaks=c(0,10,20,30),labels=c("Low","Medium","High"))
print(cut_v)

v2=c(50,40,30,95)
cut_v1=cut(v2,breaks=c(0,70,90,100),labels=c("C","B","A"))
print(cut_v1)