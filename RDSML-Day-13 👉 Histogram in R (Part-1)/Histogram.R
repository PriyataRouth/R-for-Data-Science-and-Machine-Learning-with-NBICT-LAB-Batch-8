# Importing the dataset
dataset = read.csv("data.csv")

# Importing the library
library(ggplot2)

# Basic histogram using ggplot2
ggplot(dataset, aes(x = weight))+
  geom_histogram()

# Changing the width of bins
ggplot(dataset, aes(x = weight))+
  geom_histogram(binwidth = 2)

# to separate each pillar, change color
ggplot(dataset, aes(x = weight))+
  geom_histogram(binwidth = 2, color = "blue")

#to fill the pillars with different color
ggplot(dataset, aes(x = weight))+
  geom_histogram(binwidth = 2, color = "white", fill = "darkblue")

#Adding the mean line
myplot = ggplot(dataset, aes(x = weight))+
  geom_histogram(color = "white", fill = "darkblue")

myplot + geom_vline(aes(xintercept = mean(weight)),
                    color = "blue")

# to change line type & size
myplot + geom_vline(aes(xintercept = mean(weight)),
                    color = "yellow", linetype = "dashed", size = 2)

# Histogram with density plot
ggplot(dataset, aes(x = weight))+
  geom_histogram(aes(y = after_stat(density)), color = "darkblue", fill = "yellow")+
  geom_density()

# if fill the density plot
ggplot(dataset, aes(x = weight))+
  geom_histogram(aes(y = after_stat(density)), color = "darkblue", fill = "yellow")+
  geom_density(fill = "pink", alpha = .7)

# Changing line color and fill color
ggplot(dataset, aes(x = weight))+
  geom_histogram(color = "yellow", fill = "darkblue")
  