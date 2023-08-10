# Creating the dataframe
df=data.frame("employee_id"=c(1,2,3,4,5,6,7,8,9,10,11,15,12,13,14,16),"department"=c("Sales","Sales","IT","Marketing","Operations","Datascience","Sales","Sales","Sales","Sales","Sales","Sales","Sales","Sales","Sales","Sales"),age=c(25,35,35,40,45,19,25,35,45,35,30,40,28,41,33,24),salary=c(81000,96000,70000,80000,90000,81000,82000,98000,96000,93000,93000,93000,97000,95000,96000,91000),years_of_experiance=c(11,12,5,6,7,8,15,18,19,21,14,15,17,13,12,19))
print(df)

# i) Filtering data
filtered_df=subset(df,(years_of_experiance > 10 & salary>80000) & department == "Sales")
print(filtered_df)

# ii) Visualizing histogram using ggplot2 histogram
library(ggplot2)
# plotting
hist(filtered_df$age,xlab="Ages",ylab="Number of Employees",main="Histogram Showing Ages of Employees",col="pink",border = "blue")

# iii) Visualizing  bar graph using ggplot2 average salary

# Using library forcats it is getting sorted but only in ascending order
# Importing Library
# library(forcats)
# 
# Sorting  or reordering according to average salary
# df$department=fct_reorder(df$department,df$salary,mean,na.rm=TRUE,decreasing=TRUE)
# Plotting
# ggplot(data=df,mapping=aes(x=department,y=salary,fill=department))+stat_summary(geom="bar")+ggtitle("Bar Plot showing Average Salary for each Department")+xlab("Department")+ylab("Average Salary")+theme(plot.title = element_text(size = 20,face = "bold"),axis.title.x=element_text(size=14),axis.title.y=element_text(size=14))
# 
# df$department=fct_reorder(df$department,df$salary,mean,na.rm=TRUE)
# df2=transform(df,department=reorder(mean(salary),order(department,decreasing = TRUE)))
# ggplot(data=df2,mapping=aes(x=department,y=salary,fill=department))+stat_summary(geom="bar")+ggtitle("Bar Plot showing Average Salary for each Department")+xlab("Department")+ylab("Average Salary")+theme(plot.title = element_text(size = 20,face = "bold"),axis.title.x=element_text(size=14),axis.title.y=element_text(size=14))

# Sorting  or reordering according to average salary
# We use reorder function to sort
df$department=reorder(df$department,df$salary,mean,na.rm=TRUE,decreasing=TRUE)
print(df$department)

# Plotting using ggplot2
ggplot(data=df,mapping=aes(x=department,y=salary,fill=department))+stat_summary(geom="bar")+ggtitle("Bar Plot showing Average Salary for each Department")+xlab("Department")+ylab("Average Salary")+theme(plot.title = element_text(size = 20,face = "bold"),axis.title.x=element_text(size=14),axis.title.y=element_text(size=14))

library(dplyr) 
# Bar plot 
average_salary <- df %>% 
  group_by(department) %>% 
  summarize(AvgSalary = mean(salary)) %>% 
  arrange(desc(AvgSalary)) 
print(average_salary)

ggplot(average_salary, aes(x = reorder(department, -AvgSalary), y = AvgSalary)) + 
  geom_bar(stat = "identity", fill = "green") + 
  labs(title = "Average Salary by Department", x = "Department", y = "Average Salary") + 
  theme_minimal() + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 
