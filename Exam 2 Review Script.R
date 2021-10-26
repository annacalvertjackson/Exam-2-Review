##Review for Exam Oct. 26th

setwd("C:/Users/annac/Desktop/Grad School/Classes/Fall2021_Classes/Intro to R")

getwd()

##Version Control----

##Create a new repository in GitHub
##Copy code
##New project in R
##Version Control/Git
##Paste code
##Make scripts as needed
##Make sure project and script(s) are "staged"
##Pull (blue arrow) first (?) to sync R studio with GitHub
##Commit to comment on version/changes
##Push changes to GitHub (green arrow)



##if_else statements----

best.candy<-c("reeses.pcups")

halloween.time<-c("yes")

if(best.candy=="mms") {
  reaction<-"meh"
} else if(halloween.time=="yes") {
  reaction<-"hazzah!"
}

reaction

##try this a different way

best.candy<-c("reeses.pcups")

halloween.time<-c("yes")

pumpkin.spice<-c("good")

if(best.candy=="mms") {
  reaction<-"meh"
} else if(halloween.time=="no") {
  reaction<-"hazzah"
} else if (pumpkin.spice=="good") {
  reaction<-"delicious"
}

##R checks each "if" statement for something true and then "reacts"
##skips over all false statements until it finds a true one

reaction

##Wide to long----

##use gather()

library(tidyverse)

auto<-mtcars

head(auto)

auto.long<-gather(data=auto, key="metrics", value="value", c(1:3))

head(auto.long)                  

unique(auto.long$metrics) 

##so we gathered the first three columns into one single column "metrics"

##can also use melt() from reshape2 package

library(reshape2)

auto.long.melt<-melt(data=auto, id.vars = c("hp", "drat", "wt", "qsec", "vs", "gear", "carb"),
                     measure.vars = c("mpg", "cyl", "disp"),
                     variable.name = "metrics")
auto.long.melt


##practice: use gather() on "hp" "wt" and "gear"

practice<-gather(data=auto, key="metrics", value="value", c("hp", "wt", "gear") )

practice

##repeat exercise using melt()

practice.melt<-melt(data=auto, id.vars=c("mpg", "cyl", "disp", "drat", "qsec", "vs", "carb", "am"), 
                    measure.vars=c("hp", "wt", "gear"),
                    variable.name = "metrics")
practice.melt


##id.vars are all the columns you want to keep the same
##measure.vars are all the columns you want to melt into the same column
##variable.name is what you want to call the new column (that your melted)


##Custom Functions----

##Find the area of a circle


area.circle<-function(r) {
  area<-pi*r^2
  return(area)
}


big.circle<-area.circle(r=100)

big.circle

##Make a function with 2 arguments

area.square<-function(l, w) {
  area<-l*w
  return(area)
}


big.square<-area.square(l=4, w=8)

big.square

##Add in an if_else statement

area.square<-function(l, w) {
  w<-if_else(condition=l>5, 10, w) ##if l > 5, then w takes on the value of 10; if l<5, then w stays as what we specified
  area<-l*w
  return(area)
}


area.square.ifelse<-area.square(l=6, w=5)

area.square.ifelse

##[1] 60

area.square.ifelse<-area.square(l=2, w=5)

area.square.ifelse

##[1] 10

##Exam 2 in a nutshell----

##Be able to pull in knowledge from first exam (indexing, mean, etc.)
##Know how to use GitHub
##Transform data frames
##if_else statements
##custom functions