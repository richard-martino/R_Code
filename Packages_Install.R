#Packages to install

#Set WD
install.packages("Here")

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
install.packages("haven")
install.packages("sqldf")
install.packages("survival")
install.packages("survminer")

#Read in files

  #Parquet
  install.packages("arrow")
  #Fast csv
  install.packages("vroom")

#violin plot
install.packages("vioplot")
#forestplot package
install.packages("forestplot")
#GGallery
install.packages("GGally")

#Zipcode -states
install.packages("zipcodeR")

#Dates
install.packages("lubridate")

#Pretty tables
install.packages("gt")
install.packages("tidyverse")
install.packages("glue")
install.packages("desctable")

#Table 1 descriptives
install.packages("tableone")

#Table 2 crosstab
install.packages("gmodels")
install.packages("finalfit")
install.packages("descr")

#Live update tables with word doc add on
install.packages("tidystats")

#Emojis
install.packages("emo")

#Shiny
install.packages(c("shiny","shinythemes"))
  
  #Custom Loading Screens
  install.packages("waiter")

  #Test Shiny Applications
  install.packages("testthat")
  install.packages("shinytest2")

#Workflow Package - project setup and development
install.packages("usethis")

#Pins - Publish data sets, models, and other R objects
install.packages("pins")

#GIS
install.packages("rgdal")
install.packages("sp")
install.packages("rgeos")

##### Load these packages all the time
library(foreign)
library(Hmisc)
library(epicalc)
library(sas7bdat)
library(tidyverse)
library(haven)
library(sqldf)
library(gt)
library(glue)
