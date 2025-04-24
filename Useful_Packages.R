#Packages to install
#Last Updated: 2022-08-24

# Project guide
## Use git and projects
install.packages("here")
install.packages("renv")


#Install or load other packages
install.packages("pak")
install.packages("pacman")

#Set WD
install.packages("here")

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
install.packages("devtools")
devtools::install_github("EvaMaeRey/ggxmean") #ggplot extension
install.packages("naniar") # missing data tool and visualisation
# install.packages("remotes")
remotes::install_github("r4epi/sitrep") #Outbreak and Survey templates based on MSF templates

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
  install.packages("RODBC") #Slower than odbc

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
  install.packages("stringi")
  install.packages("strex") #Other string functions

#Themes and Colors

  install.packages("thematic") #themes for ggplot2, shiny, etc.
  install.packages("bslib") #Bootstrap Sass themes
  install.packages("RColorBrewer")

  install.packages("colorBlindness")
  install.packages("dichromat")

 #Labels
  install.packages('directlabels')

#Plots
  
  install.packages("ggplot2")
  
  #Highlight lines and points
  install.packages("gghighlight")

  #Repel overlapping text labels
  install.packages("ggrepel")
  #Fit texts into boxes
  install.packages("ggfittext")

  # Markdown text within ggplot2
  install.packages("ggtext")

  #ggplot2 arranging plots
  install.packages("patchwork")
  #ggplot2 arrange plots and themes
  install.packages("cowplot")
  #ggplot2 theme
  install.packages('ggthemes', dependencies = TRUE)
  #ggplot2 formatting
  install.packages("ggpubr")
  #ggplot2 scales
  install.packages("scales") #installed with ggplot2
  #ggplot2 Use multiple fill and colour scales 
  install.packages("ggnewscale") 
  #ggplot2 hex An R Package with binning and plotting functions for hexagonal bins
  install.packages("hexbin") 
  #Ridgeline plots
  install.packages("ggridges")

  #Network and other relational data structures
  install.packages("DiagrammeR")
  install.packages("ggraph")
  install.packages("tidygraph")
  install.packages("networkD3")

  #Time series - Javascript
  install.packages("dygraphs")

# Interactive graphs
install.packages("ggiraph")
install.packages("plotly")

#graphics device for R that is accessible via network protocols / easily view graphs in browsers and download
install.packages("httpgd")

#violin plot
install.packages("vioplot")
#forestplot package
install.packages("forestplot")
#GGallery
install.packages("GGally")

#Zipcode -states
install.packages("zipcodeR")

#Dates and time
install.packages("lubridate")
install.packages("fy")

#Quick tables
install.packages("tidytable")

#Pretty tables
install.packages("gt")
install.packages("glue")
install.packages("desctable")
install.packages("flextable")
install.packages("kableExtra")
install.packages("gtsummary")
install.packages("finalfit")

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

# Icons
install.packages("fontawesome")

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
install.packages("sf")
install.packages("rgdal")
install.packages("sp")
install.packages("rgeos")
install.packages("leaflet")
install.packages("rmapshaper")
install.packages("stars")
install.packages("ozmaps")

#Other interesting packages
install.packages("testthat")
install.packages("blastula") #Sending an email

#Python for R
install.packages("reticulate")

##### Load these packages all the time
library(tidyverse)
library(lubridate)
library(vroom)
library(here)
