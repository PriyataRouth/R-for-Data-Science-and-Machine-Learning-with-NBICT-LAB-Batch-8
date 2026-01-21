#one-way Anove
# importing the dataset
PlantGrowth <- PlantGrowth

# importing the dplyr library
install.packages("dplyr")
library(dplyr)

# computing the group means, sd, & se
stats <- PlantGrowth %>%
  group_by(group) %>% 
  summarise(
    mean = mean(weight), sd = sd(weight),
    se = sd(weight) / sqrt(n())
)  

print(stats)

#creating groupwise box plots

boxplot(weight ~ group, 
        data = PlantGrowth,
        main = "PlantGrowth data",
        ylab = "Dried weight of plants", 
        col = "lightgray"
        )

 install.packages("ggpubr")
library(ggpubr) 
ggline(plantGrowth,
       x = "group"
       y = "weight")
       add = c("mean_se", "jitter"
               )