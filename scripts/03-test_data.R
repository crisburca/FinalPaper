#### Preamble ####
# Purpose: Simulates desired data
# Author: Cristina Burca
# Date: 18 April 2024
# Contact: cristina.burca@mail.utoronto.ca
# License: MIT
# Pre-requisites: Obtain Oracle Elixir Data

#### Workspace setup ####
library(tidyverse)

#### Import data ####
test_data <- read_csv("inputs/data/cleaned_lol_data.csv")

#### Test data ####
#test 1
test_data$result |>
  class() == "numeric"

#test 2
test_data$goldat10 |>
  class() == "numeric"

#test 3 
num_uniq <-
  test_data$side |>
  unique()
length(num_uniq) == 2

#test 4
num_uniq2 <-
  test_data$year |>
  unique()
length(num_uniq2) == 8

