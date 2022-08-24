#Packages to install
#Last Updated: 2022-08-24

#Install or load other packages
install.packages("pacman")

#Set WD
install.packages("Here")

#Tidyverse
install.packages("tidyverse")

#Epi Tools
install.packages("survival")
install.packages("survminer")
install.packages("epicalc", repos = "http://medipe.psu.ac.th/epicalc") 
install.packages('car')
install.packages("stargazer") #Well-Formatted Regression and Summary Statistics Tables
install.packages("gmodels")
install.packages("epitools")
install.packages("Epi")

#Read in files

  install.packages("fs") #cross-platform, uniform interface to file system operations
  
#Reads SAS, SPSS, STATA
  install.packages("haven")  #tidyverse package

  #Parquet
  install.packages("arrow")
  #Fast csv
  install.packages("vroom")

  #Connect to SQL database
  install.packages("odbc")
  install.packages("DBI")
  install.packages("RODBC")

  #SQL for R databases
  install.packages("sqldf")

#Data and program tools

  install.packages("janitor")
  install.packages("purr") #part of tidyverse
  install.packages("sjmisc")
  install.packages('abind') #Combine Multidimensional Arrays
  install.packages("Hmisc")

#Strings

  install.packages("glue") #part of tidyverse - handy for sql and other long strings
  install.packages("stringr") #part of tidyverse
  install.packages("strex")

#Themes and Colors

  install.packages("thematic") #themes for ggplot2, shiny, etc.
  install.packages("bslib") #Bootstrap Sass themes
  install.packages('RColorBrewer')

#Plots
  
  install.packages("ggplot2")
  
  #ggplot2 formatting
  install.packages("ggpubr")
  #ggplot2 scales
  install.packages("scales") #installed with ggplot2

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

#Quick tables
install.packages("tidytable")

#Pretty tables
install.packages("gt")
install.packages("glue")
install.packages("desctable")
install.packages("flextable")
install.packages("kableExtra")

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

#RMarkdown
install.packages("rmarkdown")

  #RMarkdown Web Publishing Format
  install.packages("distill")

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

#Other interesting packages
install.packages("testthat")

##### Load these packages all the time
library(tidyverse)
library(lubridate)
library(vroom)
library(here)
