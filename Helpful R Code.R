#Useful code

# Number of unique 
length(unique(data$var))

# Regex list
regex_list <- list(date = '(^20[1,2][0-9]\\-)|(\\/20[1,2][0-9]$)', 
                  numericScientificNotation = '\\d\\.\\d{3}[eE][+-]\\d{2}+', 
                  batches = '(^[a-zA-Z][0-9]{2}\\/2[0-1]{1}$)|(^[A-Z]{1,2}\\-\\d.*[a-zA-Z]*$)|(^[a-zA-Z][0-9]{2})|(^[A-Z][0-9]$)', 
                  integers = '^-?\\d+$')

# Tables
# Create blank rows for column groups gt table

library(gt)
library(dplyr)

gtcars %>%
  mutate(mfr = factor(mfr, levels = unique(mfr))) %>%  ## keep the original order
  arrange(mfr, year) %>%   
  mutate(year = ifelse(row_number() == 1, as.character(year), ""),
         .by = c(mfr, year)) %>% 
  mutate(mfr = ifelse(row_number() == 1, as.character(mfr), ""),
         .by = mfr) %>% 
  select(mfr, year, everything()) %>% 
  gt()

# Create multiple quarto parameter reports
reports <- data |>
  dplyr::distinct(farmer, year) |>
  dplyr::mutate(
    output_file = paste0(
      year, "_", gsub(" ", "", farmer), "_Report.html"
    ),
    execute_params = purrr::map2(
      farmer, year,
      \(x, y) list(farmer = x, year = y)
    )
  ) |> 
  dplyr::select(output_file, execute_params)

head(reports, 3)

reports |>
  purrr::pwalk(
    quarto::quarto_render,
    input = "template.qmd",
    output_format = "html"  
    )

## Other method

purrr::walk2(params$year, params$state, ~quarto::quarto_render(
  input = "slides.qmd",
  execute_params = list("year" = .x,
                        "state" = .y),
  output_file = glue::glue("{.y}_{.x}.html")
))

## other method moves file
# in a single for loop
#  1. define subgroup
#  2. render output (may need to change quarto to rmd)
for (id in unique(ID)){
    subgroup <- data[dataID == id,]
    quarto::quarto_render(input = "qmd file",
                          output_file = paste0(id, 'Name.html'),
                          execute_params = list(dataID = id))
    fs::file_move(paste0(here::here(),'/',id, '_Name.html'),paste0(here::here(),'/Foldername'))
}

# Convert document with pandoc
pandoc_convert(
  input,
  to = NULL,
  from = NULL,
  output = NULL,
  citeproc = FALSE,
  options = NULL,
  verbose = FALSE,
  wd = NULL
)

# Reorder x axis by another value
data |>  arrange(desc(value)) |>  
  mutate(x = factor(x, levels = unique(x))) |> 
  ggplot()

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

#Read in csv as character
read_csv(file, col_types = cols(.default = "c"))

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

# Text search in list case_when mutate
list <- c("a","b")

data <- data |> 
  mutate(
    var2 = case_when(
      stringr::str_detect(var,paste(list,collapse="|")) ~ 1,
      !is.na(var) ~ 0)
    )


# ggplot2

## Change plot margins
+ theme(plot.margin=margin(t,r,b,l,"cm"))

## Zoom into or out of graph
+ coord_cartesian(ylim = c(min,max),  expand = TRUE)

## Merge patchwork legends and move to bottom
chart1 + chart2 + chart3 + chart4 +  
  plot_layout (axis_titles = "collect", guides = 'collect') & 
  theme(legend.position = 'bottom',
        plot.margin=unit(c(7,0,7,0),"pt"),  # unit(c(top, right, bottom, left), units) 
        axis.title.x = element_text(size = 9),
        axis.title.y = element_text(size = 9), 
        legend.text = element_text(size = 9))

## Change axis limits and force show all years
+
  scale_x_continuous(n.breaks = year_range) +
  scale_y_continuous(limits = c(0, max(data$y_var) + 1),
                     expand = expansion(mult = c(0, 0.1)),
                     breaks = seq(0, max(data$y_var) + 1, by = 1)))


# Numeric

## Rounding to nearest
round(123.456, -1) # round to nearest ten
#> [1] 120
round(123.456, -2) # round to nearest hundred

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

# Import Stata with value labels

data <- read_dta()

data <- haven::as_factor(data)

# Dealing with factor imports

# Convert specific variables to factor
data %>%
    mutate_at(
        vars('agegroup'),
        funs(as_factor(.)))

  # Other option - remove labels from specific variables then create factors for the rest
  # Drop labels from continuous variables
    data <- data |> 
         mutate(across(c(var1,var2), ~ zap_labels(.)))

    # Assign labels and turn into factor
    data2 <- haven::as_factor(data)


# Unfill function

unfill_vec <- function(x) {
  same <- x == dplyr::lag(x)
  ifelse(!is.na(same) & same, NA, x)
}

x <- c("A","A","A","B","B","C","C")
unfill_vec(x)
