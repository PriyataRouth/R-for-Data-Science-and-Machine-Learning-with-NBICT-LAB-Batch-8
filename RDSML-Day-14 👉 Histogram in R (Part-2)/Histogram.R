# Importing the dataset
dataset = read.csv("data.csv")

# Importing the library
library(ggplot2)

#creating the basic histogram
ggplot(dataset, aes(x=weight))+
  geom_histogram(color = "white")

# Changing histogram plot line colors by groups
ggplot(dataset, aes(x=weight, , fill = sex))+
  geom_histogram(color = "white", alpha = .5, position = "identity")

# we can change the position adjustment to use for overlaping points on the layer.
# possible values for the arguments position are
# "identity", "stack", "dodge", default value is "stack".

# Interleaved histograms
ggplot(dataset, aes(x=weight, , fill = sex))+
  geom_histogram(color = "white", alpha = .5, position = "dodge")

# Legend replace in the top
ggplot(dataset, aes(x=weight, , fill = sex))+
  geom_histogram(color = "white", alpha = 1, position = "dodge")+
  theme(legent.position = "top")

# The plyr package is use to calculate the mean weight of each group

# install.packages("plyr")
library("plyr")
group_means = ddply(dataset, "sex", summarise, grp.mean = mean(weight))

group_means # to see result

# adding mean lines
myPlot = ggplot(dataset, aes(x = weight, fill = sex)) +
  geom_histogram(color = "white", alpha = .5, position = "dodge") +
  geom_vline(data = group_means, aes(xintercept = grp.mean, color = sex), 
             linetype = "dashed") +
  theme(legend.position = "top")

myPlot

# Using custom color palettes
myPlot + scale_color_manual(values = c("red", "blue"))+
  scale_fill_manual(values = c( "#999999", "orange"))

# Using brewer color palettes

myPlot + scale_color_brewer(palette = "Dark2")+
  scale_fill_brewer(palette = "Dark2")

# Using a grey scale
myPlot + scale_color_grey() + scale_fill_grey() +
  theme_classic()
