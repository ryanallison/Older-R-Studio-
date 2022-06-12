#Ryan Allison
#Assignment 2

#Problem 1
a<-5:8
a
a[2]
a[4]
a[2]*a[4]
b<-c(3,4)
a[b]
a[c(-2)]
a[-b]

#Problem 2
a<-1:9
dim(a)<-c(3,3)
matrix(a,3,3,byrow=TRUE)
a[2,2]
a[2,]
a[,3]
t(a)
a*t(a)
t(a)*a
det(a)
diag(a)

#Problem 3
SALARY<-c(23,23,25,27,25,24,24,31)
SALARY
barplot(SALARY)
mean(SALARY)
abline(h=mean(SALARY))
median(SALARY)
abline(h=median(SALARY), col='red')
stdev<-sd(SALARY)
abline(h=mean(SALARY)-2*stdev, col='blue')
abline(h=mean(SALARY)+2*stdev, col='blue') 

#Problem 4
x<-rnorm(10000, mean=200, sd=15)
head(x)
mean(x)+2*sd(x)
mean(x)-2*sd(x)
hist(rnorm(10000, mean=200, sd=15), main="Normal")
mean(x)
abline(v=mean(x), col='red')
stdev<-sd(x)
stdev
abline(v=mean(x)-2*stdev, col='blue')
abline(v=mean(x)+2*stdev, col='green') 
