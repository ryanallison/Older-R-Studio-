#Ryan Allison
#Assignment 3

#Problem 1
#a
dat <- read.table(file.choose())
dat
#b
# Seems wrong becasue we have variables for the first row.
#c
dat <- read.table(file.choose(), header=T)
dat
# This is better because the column header lists the appropriate variable names.

names(dat)

#Problem 2
x<-dat$x
x
y<-dat$y
y

dat.2<-list(x,y)
dat.2
dput(dat.2,file.choose())
rm(list = ls())
G<-dget(file.choose())
G
dfG<-data.frame(G)
dfG

#Problem 3
data()
data(PlantGrowth)
PlantGrowth
#There's two variables: 'weight' and 'group'.
?PlantGrowth
require(stats); require(graphics)
boxplot(weight ~ group, data = PlantGrowth, main = "PlantGrowth data",
        ylab = "Dried weight of plants", col = "lightgray",
        notch = TRUE, varwidth = TRUE)
anova(lm(weight ~ group, data = PlantGrowth))

#Problem 4
names(PlantGrowth)
weight <- PlantGrowth$weight
weight
rank<-rank(weight)
rank
#This tells us the position of the list of weights if sorted smallest to largest. The two '3.5' elements mean there are two 4.17 weights that would be the 3rd and 4th element in the list.
sort<-sort(weight)
sort
#This is the actual list of weights from smallest to largest. You can see the 4.17 are in the third and fourth position.
weight.table = data.frame(weight,rank,sort)
weight.table
