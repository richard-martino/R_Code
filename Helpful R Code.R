#Useful code
#Last Updated: 2022-08-24

#Select first row of group
df5 <- df4  %>% group_by(`First Name`,`Last Name`,DOB) %>% 
  arrange(desc(LOS2), .by_group = TRUE) %>% filter(row_number()==1)

# group_by(id) followed by either
# 
# filter(row_number()==1) or
# slice(1) or
# slice_head(1) #(dplyr => 1.0)
# top_n(n = -1)
# top_n() internally uses the rank function. Negative selects from the bottom of rank.

#select max value

df3 <- df2 %>% mutate(DOB = pmax(`DoB (dd/mm/yyyy)`,`Date of birth (dd/mm/yyyy)`, na.rm = TRUE),
                      LOS2 = pmax(`LOS`,`LOS (days)`, na.rm = TRUE))

#Merge columns
data %>% mutate(mycol = coalesce(x,y,z))

unique <- MV2 %>% group_by(id) %>% filter()

#Keep only last part of delimited column
gsub("^.*,", "", dataframe)

#Filter by duplicates
%>% group_by(id) %>% mutate(dupe = n()>1) %>% ungroup()

##All Lower
datacheck2 <- datacheck %>% mutate(across(where(is.character),tolower))

#Read in latest file
  
  data_files <- file.info(list.files("PATH TO FOLDER", full.names = T))
  
  latest_excel_file  <- tibble::rownames_to_column(data_files, "file_names") %>%
    filter(grepl('\\.xlsx', file_names)) %>%
    filter(ctime == max(ctime))

#Read in multiple CSVs and apply the name of each file to a column
read_plus <- function(flnm) {
    read_csv(flnm) %>% 
        mutate(filename = flnm)
}

tbl_with_sources <-
    list.files(pattern = "*.csv", 
               full.names = T) %>% 
    map_df(~read_plus(.))

#read in all xlsx files
file.list <- list.files(pattern = '*.xlsx')
file.list <- setNames(file.list, file.list)
df.list <- lapply(file.list, read_excel, sheet = "Sheet 1", range = "A3:M50", col_types = "text")
df.list <- Map(function(df, name) {
  df$source_name <- name
  df
}, df.list, names(df.list))
df <- rbindlist(df.list, fill=TRUE)

#convert excel date number to date
df4 <- df3 %>% mutate(DOB = as.Date(DOB, origin = "1899-12-30"))

##Create year and month folders. Move files to those folders
# Save the spreadsheet
report_filename <- paste(format(Sys.time(), "%Y%m%d"), "Report.xlsx")
saveWorkbook(wb, report_filename, overwrite = T)


# Step 5. Move the spreadsheet to the report archive

  report_archive_path <- paste("Path", 
                               format(Sys.time(), "%Y"), "/",
                               format(Sys.time(), "%m"), ". ", format(Sys.time(), "%B"),
                               sep = "")
  move_files(report_filename, report_archive_path, overwrite = TRUE)

#Check Timezone
attr(time1,"tzone")

#Convert time
attr(data$dateTime, "tzone") <- "Europe/Paris"
force_tz(y, "America/New_York", roll=TRUE)
with_tz(time, tzone = "")



##Old code pre-2021: 
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

