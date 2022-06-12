#Ryan Allison
#Assignment 3

#Problem 1
none <- function(x){result<-x;return(result)}
none(3)
mulp <- function(x,y){result<-x*y;return(result)}
mulp(4,8)
a<-5
b<-7
mulp(a,b)

#Problem 2

data(airquality)
names(airquality)
airquality
plot(airquality$Ozone, airquality$Solar.R)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, airquality$Temp)
plot(airquality$Ozone, airquality$Month)
plot(airquality$Ozone, airquality$Day)

plot(airquality$Solar.R, airquality$Ozone)
plot(airquality$Solar.R, airquality$Wind)
plot(airquality$Solar.R, airquality$Temp)
plot(airquality$Solar.R, airquality$Month)
plot(airquality$Solar.R, airquality$Day)

plot(airquality$Wind, airquality$Ozone)
plot(airquality$Wind, airquality$Solar.R)
plot(airquality$Wind, airquality$Temp)
plot(airquality$Wind, airquality$Month)
plot(airquality$Wind, airquality$Day)

plot(airquality$Temp, airquality$Ozone)
plot(airquality$Temp, airquality$Solar.R)
plot(airquality$Temp, airquality$Wind)
plot(airquality$Temp, airquality$Month)
plot(airquality$Temp, airquality$Day)

plot(airquality$Month, airquality$Ozone)
plot(airquality$Month, airquality$Solar.R)
plot(airquality$Month, airquality$Wind)
plot(airquality$Month, airquality$Temp)
plot(airquality$Month, airquality$Day)

plot(airquality$Day, airquality$Ozone)
plot(airquality$Day, airquality$Solar.R)
plot(airquality$Day, airquality$Wind)
plot(airquality$Day, airquality$Temp)
plot(airquality$Day, airquality$Month)

attach(airquality)
plot(Ozone, Temp)

plot(Ozone, Temp, xlab="Ozone", 
     ylab="Temperature",main="Ozone vs Temperature", pch=16,cex=1)

plot(Wind, Temp)

plot(Wind, Temp, xlab="Wind", 
     ylab="Temperature",main="Wind vs Temperature",pch='`',cex=3)

par(mfrow=c(1,2))
plot(Ozone, Temp, xlab="Ozone", ylab="Temperature",main="Ozone vs Temperature", pch=16,cex=1)
plot(Wind, Temp, xlab="Wind", ylab="Temperature",main="Wind vs Temperature",pch='`',cex=3)


inds=1:5
cor(airquality[,inds],use = "complete.obs")
round(cor(airquality[,inds],use = "complete.obs"),2)
boxplot(Ozone~Month)
boxplot(Temp~Month)

