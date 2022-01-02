
#Set Working directory
setwd("/")

#Read in data.
data <- read.csv("/")

#Remove first two rows.
data <- data[-c(1,2),]

#Recode missing value -99 as missing.
data[data == -99] <- NA

table(data$column)

#Create dataset with only eligible participants.
data2 <- data %>% filter(column == 1)

#Save as csv
write.csv(data2, "/")

#Merge data
data3 <- merge(data, data2, by = "column", all.x = TRUE)

#create dataframe from table
data4 <- as.data.frame(table(data3$column))

#remove columns
remove(columns)

#remove data
rm(data2)

#Column count of all non-missing.
colSums(!is.na(data4))

#Create unique ID
data5 <- data4 %>%
                mutate(ID = 1:n()+1000) 


#Save Rda
save(data5, file = "data5.Rda")

#Load Rda
load(file = "covidfinal.Rda")

#Summary of data
head(data5)

codebook(data5)

#Create subset data
data6 <- data5 %>%
            subset(column == "")

#Create labels with dplyr
recode(x, a = "Apple", c = "Car", .default = x)

#create labels with plyr
revalue(data6$column, c("1"="one", "2"="two"))

# Recode variable
(data6 <- data6 %>%
    mutate(column1 = case_when(
      column == 0 & column2 == 0 & column3 == 0 ~ 0,
      column == 1 | column2 == 1 | column3 == 1 ~ 1,
      column == 7 | column2 == 8 | column3 == 9 ~ NA_real_,
    )))

