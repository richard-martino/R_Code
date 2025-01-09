# List of functions

# Change order of layers
# From https://stackoverflow.com/questions/20249653/insert-layer-underneath-existing-layers-in-ggplot2-object

insertLayer <- function(P, after=0, ...) {
  #  P     : Plot object
  # after  : Position where to insert new layers, relative to existing layers
  #  ...   : additional layers, separated by commas (,) instead of plus sign (+)

      if (after < 0)
        after <- after + length(P$layers)

      if (!length(P$layers))
        P$layers <- list(...)
      else 
        P$layers <- append(P$layers, list(...), after)

      return(P)
    }

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
    rename("{{.cases}}_est_{{.per_num}}" := est)
    
  
  df5 <- cbind(df_grouper, df4) |> select(-c({{.population}}))
  
  return(df5)
}
