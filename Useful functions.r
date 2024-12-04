# List of functions


# Create rate tables
library(tidyverse)
library(epiR)

inc_rate_table <- function(df, .cases, .population, .per_num, .grouper){
  
  df2 <- df |> select({{.cases}}, {{.population}})
  
  df_grouper <- df |> select({{.grouper}}, {{.cases}}, {{.population}})
  
  df2 <- as.matrix(df2)
                   
  df3 <- epi.conf(df2, ctype = "inc.rate", method = "exact", design = 1,
           conf.level = 0.95) * .per_num
  
  df4 <- df3 |> 
    mutate(across(everything(), ~ round(.x, 1))) |> 
    mutate("{{.cases}}_ci" := paste0("[", lower, ", ", upper,"]")) |> 
    select(-c(lower, upper)) |> 
    rename("{{.cases}}_est" := est)
    
  
  df5 <- cbind(df_grouper, df4) |> select(-c({{.population}}))
  
  return(df5)
}
