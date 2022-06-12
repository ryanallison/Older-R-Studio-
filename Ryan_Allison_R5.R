#Ryan Allison
#Assignment 5

#Problem 1

data(OrchardSprays)
names(OrchardSprays)
OrchardSprays
attach(OrchardSprays)
boxplot(decrease~treatment)
treatment == "A"
which(treatment == 'A')
decrease[which(treatment == 'A')]
treatment.A <- which(treatment == 'A')
treatment.A
decrease.A <- decrease[which(treatment == 'A')]
decrease.A
mean(treatment.A)
var(treatment.A)
mean(decrease.A)
var(decrease.A)

treatment == "B"
which(treatment == 'B')
decrease[which(treatment == 'B')]
treatment.B <- which(treatment == 'B')
treatment.B
decrease.B <- decrease[which(treatment == 'B')]
decrease.B
mean(treatment.B)
var(treatment.B)
mean(decrease.B)
var(decrease.B)

t.test(decrease.A,decrease.B)

#Problem 2

data(airquality)
names(airquality)
airquality

#2a: Yes, Ozone has NA

attach(airquality)
Ozone == "NA"
is.na(Ozone)
which(Ozone != 'NA')
Ozone.nona <- data.frame(Ozone[which(Ozone != 'NA')])
Ozone.nona

Wind >= 16
which(Wind >= 16)
which(Wind >= 16 & Wind <= 4) #Null set
Ozone[which(Wind >= 18 | Wind <= 3)]
is.na(Ozone[which(Month==8)]) #There are NA for Ozone in August
is.na(Wind[which(Month==8)]) #There are no NA entries for Wind in August
