# Decoding Victory in League of Legends: A Comparative Study of Early Game Statistics

## Overview

This repository contains data and code used to produce a paper that analyzes League of Legends data from 2018-2023. We examine early game variables to analyze their correlation to the likelihood of winning a game.

## Abstract
Esports, especially League of Legends, have rapidly evolved into a major professional sports phe-nomenon, featuring international tournaments and attracting a massive global player base. This paperdelves into the statistical analysis of League of Legends Worlds Championship data from 2018-2023, fo-cusing on early game variables gold, expereince and creep score and their impact on the win probability.Our results indicate that while generally higher early game statistics compared to the opposing team areassociated with increased chances of victory, our findings suggest that paradoxically, lower statistics atthe 10-minute mark may actually enhance the likelihood of winning, highlighting the complex dynamicsof strategic gameplay in League of Legends.

## LLM Usage: 
Chat-gpt4 was used as our generative ai to help with definitions, error codes and exceptional cases in the code.
LLM usage is documented in inputs//LLM/usage.txt. 

## File Structure

The repo is structured as follows:

-   `inputs/data` contains the data sources used in analysis including the raw data. The data is downloaded from [https://drive.google.com/drive/u/0/folders/1gLSw0RLjBbtaNy0dgnGQDAZOHIgCe-HH]
-   `outputs/paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper.
-   `outputs/models` contains the logistic regression models used in the paper.
-   `scripts` contains the R scripts used to simulate, download, clean, model and test data.
-   `other/LLM` contains the LLM usage.
-   `other/sketches` contains the sketches of the data and models.
