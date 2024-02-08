#### Preamble ####
# Purpose: Make an R package for a dataset about 10 people's favourite food.
# Author: Julia Kim
# Email: juliaym.kim@mail.utoronto.ca
# Date: February 7th 2024
# Prerequisites: Read Quiz 6b

#### Workspace setup ####
library(tidyverse)

#### Make dataset ####
set.seed(853) # for reproducibility

food_data <- tibble(
  name = c("Edward", "Helen", "Hugo", "Ian", "Monica",
           "Myles", "Patricia", "Roger", "Rohan", "Ruth"),
  fav_food = sample(
    x = c("Pizza", "Sushi", "Burger", "Pasta", "Tacos",
          "Salad", "Steak", "Curry", "Sandwich", "Soup"),
    size = 10,
    replace = TRUE
  )
)

save(food_data, file = "food_data.rda")
