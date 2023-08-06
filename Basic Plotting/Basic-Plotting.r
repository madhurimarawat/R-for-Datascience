# Basic Plotting in R
# To plot a simple line graph,plot() function is used
# Arguments- col(for color) , lwd(line width), pch(point character,for deciding which data point to represent)
# pch - plot characters,symbols or shapes

x=c(1,2,3,4,5)
y=c(2,4,6,8,10)

print(plot(x,y))

print(plot(x,y,col='blue'))

print(plot(x,y,col='blue',lwd=5,pch=11))

print(plot(x,y,col='blue',lwd=5,pch=16))

# Title and axis labels
print(plot(x,y,main="Line Plot",xlab="X Values",ylab="Y values"))

# Color Line and Plot Appearances
print(plot(x,y,type="l",col="pink",lwd=2))

print(plot(x,y,type="l",col="blue",lwd=2))

# lty line types like solid dashed
plot(x,y,type="l",col="blue",lwd=2)

lines(x,y+2,col="red",lty=2)

points(x,y,col="green",pch=16)

# Plotting Region Limits
plot(x,y,xlim=c(0,6),ylim=c(0,12))

# Adding points,lines and text to an existing plot
plot(x,y)

points(3,6,col="red",pch=16)

text(4,8,"My Text",col="blue")

x1=c(2,3,4,5,6,7,8,11,12)
y1=c(4,9,16,25,36,49,64,121,144)

print(plot(x1,y1))

points(12,144,col="yellow",lwd=10)

text(11,121,"T")
text(11,121,"T",col="red")

# Automatic Plot types
# Depending on the data,R will automatically create plot choosing appropriate plot type.
# Bar plot for categorical data
# Dosen't plot as x limits does not have numeric values
# fruit=c("apple","banana","orange")
# quantity=c(10,20,15)
# print(plot(fruit,quantity))