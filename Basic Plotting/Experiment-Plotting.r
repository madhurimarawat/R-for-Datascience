# Importing library
library(ggplot2)

# Experiment 1

# Creating a database
df=data.frame(Weight=c(56,69,87,41,52,63,74,77),Height=c(169,165,155,145,152,163,147,158),sex=c("M","M","M","F","F","M","F","M"))
print(df)

ggplot(df,aes(x=Weight,y=Height,color=sex))+geom_point()+theme_classic()+ggtitle("Weight Vs Height graph")+xlab("Weight")+ylab("Height")
# Manually setting color
ggplot(df,aes(x=Weight,y=Height,color=sex))+geom_point(size=2)+ggtitle("Weight Vs Height graph")+xlab("Weight")+ylab("Height")+theme_classic()+scale_color_manual(name="sex",labels=c("F","M"),values=c("blue","black"))



# Experiment 2

# Based on Point character
ggplot(df,aes(x=Weight,y=Height,shape=sex,color=sex))+geom_point()+ggtitle("Weight Vs Height graph")+xlab("Weight")+ylab("Height")+theme_classic()

#Manually setting color and shape
ggplot(df,aes(x=Weight,y=Height,shape=sex,color=sex))+geom_point(size=2)+ggtitle("Weight Vs Height graph")+xlab("Weight")+ylab("Height")+theme_classic()+scale_shape_manual(name="sex",labels=c("F","M"),values=c(0,3))+scale_color_manual(name="sex",labels=c("F","M"),values=c("blue","black"))



# Experiment 3

# Creating Dataframe
df1=data.frame(Education=c(25,45,75,26,78,95),Income=c(30,55,80,32,85,98))
print(df1)

# Plotting

in1=df1['Income'>80]
print(in1)
print(df1$Income>80)

prestige=c(25,69,85,74,12,33)
df1$prestige=prestige
print(df1)

Education=c(25,45,75,26,78,95)
Income=c(30,55,80,32,85,98)

plot(Education,Income,xlab="Education",ylab="Income",main="Education Vs Income",xlim=c(0,100),ylim=c(0,100))
points(Education[prestige<=80],Income[prestige<=80],pch="*",col='black')
points(Education[prestige>80],Income[prestige>80],pch="@",col='blue')