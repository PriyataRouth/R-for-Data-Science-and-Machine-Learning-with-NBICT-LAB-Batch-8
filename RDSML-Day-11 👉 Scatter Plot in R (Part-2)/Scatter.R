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
  geom_point(size=2, shape=4) + 
  geom_smooth(method = lm)

# Removing the confidence interval
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = lm, se = FALSE)

# Loess method
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth()

# change the line type & color
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=2, shape=18) + 
  geom_smooth(method = lm, linetype = "dotted") # for line type

ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=2, shape=18) + 
  geom_smooth(method = lm, linetype = "dashed",
              color = "darkblue") # change color

# Changing the confidence interval color
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=2, shape=18, color = "green") + 
  geom_smooth(method = lm, linetype = "dashed",
              color = "darkred", fill = "blue")

# Scatter plots with multiple groups


# converting the cyl column from a numeric two factor variable
dataset$cyl = as.factor(dataset$cyl)

# Changing the point shapes by the levels of cyl
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl)) +
  geom_point()

# Changing point shapes and colors
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl, color = cyl)) +
  geom_point()

# Changing point shapes, colors and sizes
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl, color = cyl, size = cyl)) +
  geom_point()
