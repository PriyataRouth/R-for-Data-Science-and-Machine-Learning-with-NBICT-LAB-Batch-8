# Explaining rbinom()
# rbinom(n, size, prob)    generate random numbers from a binomial distribution
# Here:
# n: Number of random values to generate
# size: Number of trials in each binomial experiment
# prob: probability of success in each trials

rbinom(n = 10,size = 1, prob = 0.5)

# Here:
# n= 10: Number of random values to generate
# size= 1: Number of trials in each binomial experiment
# 0.5: probability of success on each trial ( prob= 0.50)


rbinom(n = 10, size = 10, prob = 0.5)
# in the result 3 means, out of 5 people 3 get head others get teal

# Explaining pbinom()
# pbinom gives the cumulative probability of getting q or fewer successes in a binomial distribution

# syntax: pbinom(q, size, prob)
#Here:
# q: the number of successes
# size: the number of trials
# prob: probability of success in each trials

# if a coin is flips by 10 times (size) what is the probability to get atleast 5 times success?

pbinom(q = 5, size = 10, prob = 0.5)

# The result means there's about a 62.3% chance of getting 5 or fewer successes in 10 trials (e.g., getting 5 or fewer heads in 10 fair coin tosses)

# You toss a coin 5 times, what is the probabilityof getting exactly 3 heads?
pbinom(q = 3, size = 5,prob = 0.5) - pbinom(q = 2, size = 5,prob = 0.5)

# Explaining q binom
# what is the smalest number of successes x in 10 trials (with 50% success chance) such that the probability of geting x or fewer successes is at least 30%?
qbinom(p = 0.30, size = 10, prob = 0.5)
# qbinom is revers of pbinom

# p = 0.3 means cumulative probability 30%
# size : 10 means number of trials (e.g: 10 coin tosses)
# prob: 0.5 = probability of success



# Explaining dbiunom
# dbinom clculating the probability of exact number of success

dbinom(x = 3, size = 5, prob = 0.5)
dbinom(x = 3, size = 10, prob = 0.25)

#dbinom(x , size, prob) 
# x-3: number of successes you want
# size -5: number of independent trials
# prob-0.5 :probability of successes in each trials