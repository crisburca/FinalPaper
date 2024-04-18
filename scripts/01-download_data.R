#### Preamble ####
# Purpose: Simulates desired data
# Author: Cristina Burca
# Date: 18 April 2024
# Contact: cristina.burca@mail.utoronto.ca
# License: MIT
# Pre-requisites: Obtain Oracle Elixir Data


#### Workspace setup ####
library(here)

#### Download data ####

data_2018 <- read.csv(here("inputs", "data", "2018_LoL_esports_match_data_from_OraclesElixir.csv"))
data_2019 <- read.csv(here("inputs", "data", "2019_LoL_esports_match_data_from_OraclesElixir.csv"))
data_2020 <- read.csv(here("inputs", "data", "2020_LoL_esports_match_data_from_OraclesElixir.csv"))
data_2021 <- read.csv(here("inputs", "data", "2021_LoL_esports_match_data_from_OraclesElixir.csv"))
data_2022 <- read.csv(here("inputs", "data", "2022_LoL_esports_match_data_from_OraclesElixir.csv"))
data_2023 <- read.csv(here("inputs", "data", "2023_LoL_esports_match_data_from_OraclesElixir.csv"))

raw_lol_data <- rbind(data_2018, data_2019, data_2020, data_2021, data_2022, data_2023)



         
