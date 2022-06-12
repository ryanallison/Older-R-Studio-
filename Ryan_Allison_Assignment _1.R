#Ryan Allison
#Assignment 1

#Problem 1
a=5
b=7
a+b
b/a
rm(list=ls())  #clears previously defined variables/objects in order to answer 1e.
b/a
7/5
a=5
b=7
a<5
b<5
a=5
b=5
a>5
b>5
#Problem 2
help(rep)
rep(c(2,6,10,14,18), each=3)
rep(c('2,6,10,14,18'), each=3)
rep(c(2,6,10,14,18), each=3, len=17)
#Problem 3
v<-c(2,6,10,14,18)
v
sum(v)
sqrt(v)
#Problem 4
x<-seq(10,20,0.1)
x
y<-log(x)
y
barplot(x,y)
y[30]
y[30:35]
y[50:60]
#Problem 5
percentage<-c(72,81,52,63)
percentage
names(percentage)<-c("County A", "County B", "County C", "County D")
percentage
barplot(percentage)
mean(percentage)
sd(percentage)
