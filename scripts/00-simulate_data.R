#### Preamble ####
# Purpose: Simulates desired data
# Author: Cristina Burca
# Date: 18 April 2024
# Contact: cristina.burca@mail.utoronto.ca
# License: MIT
# Pre-requisites: Obtain Oracle Elixir Data


#### Workspace setup ####
library(dplyr)

#### Simulate data ####
set.seed(853)

n <- 1000

simulated_data <- tibble(
  golddiffat10 = rnorm(n, mean = 53, sd = 1367),
  xpdiffat10 = rnorm(n, mean = 83, sd = 1023),
  csdiffat10 = rnorm(n, mean = 49, sd = 27),
  golddiffat15 = rnorm(n, mean = 1, sd = 2774),
  xpdiffat15 = rnorm(n, mean = 205, sd = 1872),
  csdiffat15 = rnorm(n, mean = 4, sd = 41),
  result = as.integer(runif(n) < 0.5 + 0.25 * (golddiffat15 / 50))  # Slightly more likely to win with higher gold diff at 15 min
)

write_csv(simulated_data, "inputs/data/sim_lol_data.csv")
# View the first few rows of the data
head(simulated_data)

