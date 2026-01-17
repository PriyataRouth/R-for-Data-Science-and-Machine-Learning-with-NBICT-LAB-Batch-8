# importing the dataset
mydata <- read.csv("bottle_data.csv")

# checking for the normality
# shapiro-wilk Test
shapiro.test(mydata$value)


# one sample T  Test
t.test(x = mydata$value, mu = 150)
