dbinom(x = 4, size = 10, prob = 0.5)
pbinom(q = 4, size = 10, prob = 0.5)


n <- c(0:10)
n


p <- dbinom(x = n, size = 10, prob = 0.5)
barplot(p)

library(visualize)

visualize.binom(stat = 4, size = 10, prob = 0.5, section = 'lower')
pbinom(q = 4, size = 10, prob = 0.5)

visualize.binom(stat = 4, size = 10, prob = 0.5, section = 'upper')

#to get more than 4 & more  than 6
visualize.binom(stat = c(4,6), size = 10, prob = 0.5, section = 'bounded')

#to get more than 3 & less than 7
visualize.binom(stat = c(3,7), size = 10, prob = 0.5, section = 'tails')

#possibility of getting Exact 4 
visualize.binom(stat = 4, size = 10, prob = 0.5)

#to see grid line 
grid(nx = NULL, ny = NULL, co = "grey", lty = "dotted")
