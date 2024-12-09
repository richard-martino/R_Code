# Age Groups

data <- data |>
  mutate(
    agegroup = case_when(
      age >= 0 & age < 5 ~ 0,
      age >= 5 & age < 15 ~ 1,
      age >= 15 & age < 25 ~ 2,
      age >= 25 & age < 45 ~ 3,
      age >= 45 & age < 65 ~ 4,
      age >= 65 & age < 75 ~ 5,
      age >= 75 & age < 85 ~ 6,
      age >= 85 ~ 7),
    agegroup2 = case_when(
      age >= 0 & age < 5 ~ 0,
      age >= 5 & age < 15 ~ 1,
      age >= 15 & age < 25 ~ 2,
      age >= 25 & age < 45 ~ 3,
      age >= 45 & age < 65 ~ 4,
      age >= 65 ~ 5),
    agegroup3 = case_when(
      age >= 0 & age < 15 ~ 0,
      age >= 15 & age < 25 ~ 1,
      age >= 25 & age < 65 ~ 2,
      age >= 65 ~ 3)
  )

# Set variable description and values
data <- data |>
  set_variable_labels(agegroup = "Age groups 6 groups",
                      agegroup2 = "Age groups 65+") |>
  set_value_labels(agegroup = c("0 - 4" = 0, "5 - 14" = 1, "15 - 24" = 2,
                                "25 - 44" = 3, "45 - 64" = 4, "65 - 74" = 5,
                                "75 - 85" = 6, "85+" = 7),
                   agegroup2 = c("0 - 4" = 0, "5 - 14" = 1, "15 - 24" = 2,
                                "25 - 44" = 3, "45 - 64" = 4, "65+" = 5),
                   agegroup3 = c("0 - 14" = 0, "15 - 24" = 1, "25 - 64" = 2,
                                 "65+" = 3))

data <- data |> as_factor()


# Other way to create 
data <- data |>
  mutate(
    age_group = case_when(
      Age >= 0 & Age < 5 ~ "0-4",
      Age >= 5 & Age < 10 ~ "5-9",
      Age >= 10 & Age < 15 ~ "10-14",
      Age >= 15 & Age < 20 ~ "15-19",
      Age >= 20 & Age < 25 ~ "20-24",
      Age >= 25 & Age < 30 ~ "25-29",
      Age >= 30 & Age < 35 ~ "30-34",
      Age >= 35 & Age < 40 ~ "35-39",
      Age >= 40 & Age < 45 ~ "40-44",
      Age >= 45 & Age < 50 ~ "45-49",
      Age >= 50 & Age < 55 ~ "50-54",
      Age >= 55 & Age < 60 ~ "55-59",
      Age >= 60 & Age < 65 ~ "60-64",
      Age >= 65 & Age < 70 ~ "65-69",
      Age >= 70 & Age < 75 ~ "70-74",
      Age >= 75 & Age < 80 ~ "75-79",
      Age >= 80 & Age < 85 ~ "80-84",
      Age >= 85 & Age < 120 ~ "85+",
      .default = NA_character_
      ),
    age_group = fct_reorder(as_factor(age_group), Age)
)
