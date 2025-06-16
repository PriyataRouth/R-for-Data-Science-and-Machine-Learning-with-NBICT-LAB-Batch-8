# Importing the data set
dataset = read.csv("data.csv")

# Importing the library
librabry(ggplot2)

# Basic histogram using ggplot2
ggplot(dataset, aes(x = weight)) +
  geom_histogram()

# Changing the width of bins
ggplot(dataset, aes(x = weight)) +
  geom_histogram(binwidth = 5)

# to differentiate the pilers
ggplot(dataset, aes(x = weight)) +
  geom_histogram(binwidth = 1, color = black)

# Changing fill color
ggplot(dataset, aes(x = weight)) +
  geom_histogram(binwidth = 1, color = black, fill = "white")

#Adding the mean line54444k33333333n
myplot = ggplot(dataset, aes(x = weight)) +
  geom_histogram(color = black, fill = "white")

myplot # to see what is in my plot
myplot + geom_vline(aes(xintercept = mean(weight)),
                    color = blue, linetype = "dashed", size = 1)

# Histogram with density plot
ggplot(dataset, aes(x = weight))+
  geom_histogram(aes(y = after_stat(density)), color = "black", fill = "white")+
  geom_density(fill = "blue", alpha = .2)

  # Changing line color and fill color
ggplot(dataset, aes(x = weight))+
  geom_histogram(color = "darkblue", fill = "lightblue")



