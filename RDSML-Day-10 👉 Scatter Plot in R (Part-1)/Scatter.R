# install.packages("ggplot2") #To install packages
library(ggplot2) #To use/load package

dataset = mtcars

# Generate a basic scatter plot
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point()

# Changing the point size & shape
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=2) # size

ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=2, shape=6) # size & shape

# Adding the regression line
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=2, shape=6) + 
  geom_smooth()
