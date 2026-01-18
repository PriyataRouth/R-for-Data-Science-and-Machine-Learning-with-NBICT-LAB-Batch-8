# two sample t_test/ independent sample t_test
# importting the dataset
dataset <- read.csv("scores.csv")

# checking for the normal distribution
shapiro.test(dataset$Male)
shapiro.test(dataset$Female)

# checking for the homogeneity of variances
var.test(x = dataset$Male, y = dataset$Female)


# running the independent sample T_test
t.test(x = dataset$Male, y = dataset$Female, var.equal = TRUE)
