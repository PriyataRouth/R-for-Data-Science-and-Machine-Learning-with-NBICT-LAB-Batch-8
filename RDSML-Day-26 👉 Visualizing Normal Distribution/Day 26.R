# Installing the visualizing package
# install.packages("visualize")
library(visualize)

# visualize normal distribution
pnorm(-1.96)
visualize.norm(stat = -1.96) # to visualize left tail
visualize.norm(stat = 1.96) # to visualize right tail, but it show left side only
visualize.norm(stat = 1.96, section = "upper") # show right side

# probability of getting value between -1.96 to 1.96
visualize.norm(stat = c(-1.96, 1.96), section = "bounded") 
visualize.norm(stat = c(-1.96, 1.96), section = "tails") # Z value of outside -1.96 and 1.96

visualize.norm(stat = c(-1, 1), section = "bounded") 

visualize.norm(stat = c(-3, 3), section = "bounded")

# Z value outside -3 and 3
visualize.norm(stat = c(-3, 3), section = "tails")
# if U=75, sd=1 what is the probability of getting the value x> or = 77?
1 - pnorm(2)
# # when mu = 75 , sd = 1 what will be the chance to getting value higher than 77?
visualize.norm(stat = 77, mu = 75, sd = 1, section = "upper") # should mention the cut point & mention mean & Sd also

# when mu = 75 , sd = 1 what will be the chance to getting value less than 77?

visualize.norm(stat = 77, mu = 75, sd = 1, section = "lower")

pnorm(77, mean = 75, sd = 1) # when to show less then 77
# if want to show greater than 77, 1 - pnorm() should use


