# Importing Library
library(ggplot2)

df=data.frame(name=c(5,10,15),age=c(10,20,30))
print(df)

ggplot(df,aes(x=name, y=age))+geom_line(col="red",lty=2)+geom_point(col="orange")+ ggtitle("DF") + xlab("name")+ylab("age")

# quickplot(name,age,col="red",pch=16,main="DF")
# Appearance Constant
print(ggplot(df,aes(x=name,y=age))+geom_line(col="red")+geom_point(col="orange")+ ggtitle("DF") + xlab("name")+ylab("age")+theme(plot.title = element_text(size =20 , face = "bold")))

#ggplot2 Package provides more flexible and powerful system for creating plots in R
ggplot(data,mapping=aes(x=x,y=y))+geom_line(col="red")+geom_point(col="blue",pch=16)+ggtitle("My Plot")+xlab("X values")+ylab("Y values")

library(ggplot2)

data=data.frame(x=x,y=y)

# Quick plot with qplot
# Dosen't work as qplot is removed from R
# qplot(x,y,col="red",pch=16,main = "My Plot")
# Setting appearance constants with geoms
# Using the theme function

# Geom-smooth- Aids the eye in seeing patterns in the presence of overplotting
# Arguments-> method- Smoothing function to use, se- displays confidence Intervals

ggplot(data,aes(x=x,y=y))+geom_point()+geom_smooth(method = "lm",se=FALSE)+ggtitle("My Plot")+xlab("X values")+ylab("Y values")+theme(plot.title = element_text(size = 20,face = "bold"),axis.title.x = element_text(size = 14),axis.title.y = element_text(size = 14),axis.text = element_text(size = 12) )
ggplot(data,aes(x=x,y=y))+geom_point()+geom_smooth(method = "lm",se=TRUE)+ggtitle("My Plot")+xlab("X values")+ylab("Y values")+theme(plot.title = element_text(size = 20,face = "bold"),axis.title.x = element_text(size = 14),axis.title.y = element_text(size = 14),axis.text = element_text(size = 12) )