##Review for Exam Oct. 26th

##Version Control----

##Create a new repository in GitHub
##Copy code
##New project in R
##Version Control/Git
##Paste code
##Make scripts as needed
##Make sure project and script(s) are "staged"
##Pull (blue arrow) first (?) to sync R studio with GitHub
##Push changes to GitHub (green arrow)
##Commit to comment on version/changes

setwd("C:/Users/annac/Desktop/Grad School/Classes/Fall2021_Classes/Intro to R")

getwd()

##if_else statements

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

