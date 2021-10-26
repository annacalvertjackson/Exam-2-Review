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