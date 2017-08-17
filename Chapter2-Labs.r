################
#ISLR Lab 2.3.1
################

x = c(1,3,2,5) # c for concatenate
x # x is a vector

x =c(1,6,2)
y =c(1,4,3)

length(x)
length(y)

ls()
rm(x,y) # delete x,y
ls()

rm(list=ls()) # delete all objects

?matrix
x = matrix(data=c(1,2,3,4), nrow=2, ncol=2) # we can omit data, nrow, ncol
x

x = matrix(c(1,2,3,4),2,2, byrow=TRUE) # populate matrix in order of rows
x

sqrt(x)
x^2

x =rnorm(50) # default: mean=0,sd=1
y =rnorm(50,mean=50,sd=.1)
cor(x,y)

set.seed(1303) # reproduce the exact same set of random numbers
rnorm(50)

mean(y)
var(y)
sd(y) # sqrt(var(y))

rm(list=ls())

################
#ISLR Lab 2.3.2#
################
x=rnorm(100)
y=rnorm(100)

plot(x,y,xlab="x-axis label",ylab="y-axis label",main="Plot title")

# Export file as pdf

pdf("Figure1.pdf")
plot(x,y,col="green")
dev.off() # done!

x =seq(1,10) # or seq(1,100,10) step is 10
x
x=seq(-pi,pi,length=50) # from -pi to +pi populate 50 numbers
x
y=x
f=outer(x,y,function(x,y)cos(y)/(1+x^2))
contour(x,y,f)
contour(x,y,f,nlevels = 45,add=T)
fa=(f-t(f))/2
contour(x,y,fa,nlevels=15)
image(x,y,fa) # heatmap
persp(x,y,fa,theta=30,phi=20)

################
#ISLR Lab 2.3.3#
################

A=matrix(1:16,4,4)
A
A[2,3]
A[c(1,3),c(2,4)]
A[c(1:3),c(2:4)]
A[1:2,]
A[,1:2]

A[1,]

A[-c(1,3),]
A
A[-c(1,3),-c(1,3,4)]

dim(A)

################
#ISLR Lab 2.3.4#
################

Auto = read.table("Auto.data", header=T,na.strings="?")

Auto = read.csv("Auto.csv", header=T, na.strings = "?")
fix(Auto)
dim(Auto)
Auto[1:4,]
Auto=na.omit(Auto) # omit missing observations
dim(Auto)
names(Auto)

################
#ISLR Lab 2.3.5#
################

plot(Auto$cylinders,Auto$mpg)
attach(Auto)
plot(cylinders,mpg)
cylinders=as.factor(cylinders) # as.factor quntitative to qualitative

plot(cylinders,mpg) # qualitative will produce boxplots

plot(cylinders,mpg, col="red", varwidth=T, horizontal= T, xlab = "x-axis label", ylab="y-axis label")

hist(mpg,col=2,breaks=15)

pairs(Auto)
pairs(~mpg+displacement+horsepower+weight+acceleration, Auto) # scatterplots 

plot(horsepower,mpg)
identify(horsepower,mpg,name)
summary(Auto)
summary(mpg)
