
# two sample Z test
# importing the library
library("BSDA")

# importing the dataset
dataset <- read.csv("perfume_two_sample.csv")
Machine1sd <- sd(dataset$Machine.1)

Machine2sd <- sd(dataset$Machine.2)
# running the Z test
z.test(x = dataset$Machine.1, y = dataset$Machine.2, sigma.x = Machine1sd, sigma.y = Machine2sd)
