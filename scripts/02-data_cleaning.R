#### Preamble ####
# Purpose: Simulates desired data
# Author: Cristina Burca
# Date: 18 April 2024
# Contact: cristina.burca@mail.utoronto.ca
# License: MIT
# Pre-requisites: Obtain Oracle Elixir Data


#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_lol_data <- read_csv("inputs/data/raw_lol_data.csv")

cleaned_lol_data <- raw_lol_data %>% 
  select(year, game, league, teamname, side, position, 
         result, goldat10, xpat10, csat10, goldat15, xpat15,
         csat15, golddiffat10, xpdiffat10, csdiffat10, 
         golddiffat15, xpdiffat15, csdiffat15)

#### Save data ####
write_csv(cleaned_lol_data, "inputs/data/cleaned_lol_data.csv")
