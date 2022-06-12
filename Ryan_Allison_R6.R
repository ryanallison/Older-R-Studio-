#Ryan Allison
#Assignment 6

#Problem 1
data(airquality)
attach(airquality)
names(airquality)
Ozone
Wind
is.na(Ozone)
is.na(Ozone | Solar.R)
if(is.na(Ozone) == T){print("There is at leat one NA")}else{print("There are no NA entries")}
if(is.na(Wind) == T){print("There is at leat one NA")}else{print("There are no NA entries")}

n <- length(Ozone)

for(i in 1:length(Ozone)){if(Ozone[i] == "NA"){print("There's an NA")}else{print("Not an NA")}}
for(i in 1:length(Wind)){if(Wind[i] == "NA"){print("There's an NA")}else{print("Not an NA")}}


#Problem 2
#part a
for(i in 1:5)
{
  if(i==5)
  {
    break
  }
  print(i) #does not include zero or five.
}

#part b and c
for(i in 1:length(c("c","a","t")))
{
  print(c("c","a","t")[i])
  
}

#part d
x <- c("c","a","t") 
for(i in 1:length(x)){
  if(x[i] == "a") {
    next
  } else {
  print(x[i])
  }
}
 
#Problem 3
#part a
x <- 0
while(x < 4){
  x <- x + 1
  print(x)}

#part b

x <- c("c","a","t")
b<-1
while(b < 4){print(x[b]); b=b+1}

#part c: Mine stops. I'm not sure if I'm doing this right, but I don't need a 'break'

#Problem 4
#Part a

data(attitude)
attitude
names(attitude)
head(attitude)
attach(attitude)

plot(rating~complaints)
plot(rating~privileges)
plot(rating~learning)
plot(rating~raises)
plot(rating~critical)
plot(rating~advance)

plot(complaints~rating)
plot(complaints~privileges)
plot(complaints~learning)
plot(complaints~raises)
plot(complaints~critical)
plot(complaints~advance)

plot(privileges~rating)
plot(privileges~complaints)
plot(privileges~learning)
plot(privileges~raises)
plot(privileges~critical)
plot(privileges~advance)

plot(learning~rating)
plot(learning~complaints)
plot(learning~privileges)
plot(learning~raises)
plot(learning~critical)
plot(learning~advance)

plot(raises~rating)
plot(raises~complaints)
plot(raises~privileges)
plot(raises~learning)
plot(raises~critical)
plot(raises~advance)

plot(critical~rating)
plot(critical~complaints)
plot(critical~privileges)
plot(critical~learning)
plot(critical~raises)
plot(critical~advance)

plot(advance~rating)
plot(advance~complaints)
plot(advance~privileges)
plot(advance~learning)
plot(advance~raises)
plot(advance~critical)

plot(rating~complaints, main = "Rating vs Complaints")

lm.fit <-lm(rating~complaints)
lm.fit
abline(lm.fit, col="red",lwd=2, lty="dotdash")

#Problem 5
par(mfrow=c(1,1))
x1 = seq(0,10, length.out = 100)
x1
y1 = dchisq(x1, df = 3)
y1
plot(y1~x1, main="Chi Square Distribution", xlab="Sequence", ylab ="Chi Square", col="blue")
x2 = seq(0,10, length.out = 100)
y2 = dchisq(x2, df = 2)
lines(x2, y2,type="l",col="red",lty=2)
leg.txt=c("df=3","df=2")
legend(8,0.2,text.col=c("blue","red"),
       legend=leg.txt)

arrows(5,0.2,4,0.12)
arrows(1,0.05,3,0.1)
text(.9,0.04,"df=2", col = "red")
text(5,0.21,"df=3",col="blue")
