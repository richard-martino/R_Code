#Packages to install

install.packages("Hmisc")#if a package has trouble loading, you will need to install it. Do this only once
install.packages("epitools")
install.packages("Epi")
install.packages("sas7bdat") 
install.packages("gmodels")
install.packages("abind")
install.packages("stargazer")
install.packages("car")
install.packages("epicalc", repos = "http://medipe.psu.ac.th/epicalc") 
install.packages("tidyverse")


#violin plot
install.packages("vioplot")
#forestplot package
install.packages("forestplot")
#GGallery
install.packages(GGally)

##### Load these packages all the time
library(foreign)
library(Hmisc)
library(epicalc)
library(sas7bdat)
