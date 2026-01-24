# installing packages
install.packages(c("tidyverse", "car", "emmeans", "effectsize", "performance", "broom", "kableExtra"))
library(tidyverse)

# Importing the dataset
d <- read.csv("cropdata.csv")

# Quick Exploratory Descriptive Analysis
summs <- d %>%
   group_by(fert, irr) %>%
   summarise(mean = mean(y), se = sd(y)/sqrt(n()), .group = "drop")