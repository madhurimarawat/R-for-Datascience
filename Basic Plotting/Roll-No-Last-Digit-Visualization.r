# Creating vector containing rollnumber
rollnumber=c(1,3,4,12,28,33,44,58,67,79,80,11,20,22,21,23,45,91,29)

# Extracting last digit of the vector
rollnumber=rollnumber%%10
print(rollnumber)

# Creating a dataframe
df=data.frame(RollNo=as.character(rollnumber),Weight=c(56,69,87,41,52,63,74,77,56,78,56,67,78,85,45,67,45,67,43),Height=c(169,165,155,145,152,163,147,158,132,145,155,167,156,123,134,155,132,143,123))
print(df)

# Importing Library
library(ggplot2)

# plotting using hollow / Unfilled Symbol
ggplot(df,aes(x=Weight,y=Height,color=RollNo,shape=RollNo))+geom_point(size=1,stroke=2)+scale_color_manual(values=c("blue","red","green","orange","purple","yellow","pink","brown","cyan","grey"))+scale_shape_manual(values=c(1,2,0,5,4,11,3,8,1,2))+theme(plot.title = element_text(size=16,face="bold"),axis.title.x = element_text(size=14),axis.title.y = element_text(size=14))+ggtitle("Scatter Plot")+xlab("Weight")+ylab("Height")

# plotting using Filled Symbol
ggplot(df,aes(x=Weight,y=Height,color=RollNo,shape=RollNo))+geom_point(size=1,stroke=2)+scale_color_manual(values=c("blue","red","green","orange","purple","yellow","pink","brown","cyan","grey"))+scale_shape_manual(values=c(16,17,15,23,4,11,3,8,19,24))+theme(plot.title=element_text(size=16,face="bold"),axis.title.x = element_text(size=12),axis.title.y = element_text(size=12))+ggtitle("Scatter Plot")+xlab("Weight")+ylab("Height")

# Plotting using predefined themes
ggplot(df,aes(x=Weight,y=Height,color=RollNo,shape=RollNo))+geom_point(size=1,stroke=2)+scale_color_manual(values=c("blue","red","green","orange","purple","yellow","pink","brown","cyan","grey"))+scale_shape_manual(values=c(16,17,15,23,4,11,3,8,19,24))+theme_classic()+ggtitle("Scatter Plot")