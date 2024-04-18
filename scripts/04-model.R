#### Preamble ####
# Purpose: Simulates desired data
# Author: Cristina Burca
# Date: 18 April 2024
# Contact: cristina.burca@mail.utoronto.ca
# License: MIT
# Pre-requisites: Obtain Oracle Elixir Data


#### Workspace setup ####
library(tidyverse)
library(rstanarm)

#### Read data ####
analysis_data <- read_csv("inputs/data/cleaned_lol_data.csv")

### Filter data ####
model_data <- analysis_data %>% 
  filter(league == "WLDs", position == "team", side == "Blue") %>%
  select(league, year, side, teamname, result, goldat10, xpat10,
         csat10, goldat15, xpat15, csat15, golddiffat10, xpdiffat10,
         csdiffat10, golddiffat15, xpdiffat15, csdiffat15) %>%
  na.omit()

### Scale data ####
model_data$golddiffat10 <- scale(model_data$golddiffat10)
model_data$xpdiffat10 <- scale(model_data$xpdiffat10)
model_data$csdiffat10 <- scale(model_data$csdiffat10)
model_data$golddiffat15 <- scale(model_data$golddiffat15)
model_data$xpdiffat15 <- scale(model_data$xpdiffat15)
model_data$csdiffat15 <- scale(model_data$csdiffat15)

blue_data <- model_data  %>% filter(side == "Blue")
means <- sapply(model_data[, c("golddiffat10", "xpdiffat10", "csdiffat10",
                               "golddiffat15", "xpdiffat15", "csdiffat15")],
                mean, na.rm = TRUE)
sds <- sapply(model_data[, c("golddiffat10", "xpdiffat10", "csdiffat10",
                             "golddiffat15", "xpdiffat15", "csdiffat15")],
              sd, na.rm = TRUE)

### Model data ####
set.seed(853)

blue_summary_data <- 
  blue_data |> 
  slice_sample(n = 1000)

first_model <-
  stan_glm(
    result ~ golddiffat10 + xpdiffat10 + csdiffat10 + golddiffat15 + xpdiffat15 + csdiffat15,
    data = blue_summary_data,
    family = binomial(link = "logit"),
    prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_intercept = 
      normal(location = 0, scale = 2.5, autoscale = TRUE),
    seed = 853)


#### Save model ####
saveRDS(
  first_model,
  file = "paper/models/first_model.rds")


