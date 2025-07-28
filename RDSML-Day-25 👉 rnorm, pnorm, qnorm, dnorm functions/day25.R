# rnorm
x <- rnorm(10)
mean(x)
sd(x)
x <- rnorm(100000, mean = 0, sd = 1)
mean(x)
sd(x)

y <- rnorm(100, mean = 100, sd = 5)
mean(y)
sd(y)


# pnorm function


# At z = 0 then the value of probability is
pnorm(0)
pnorm(-1.96)
pnorm(-1.64)


# Qnorm function
qnorm(0.5)
qnorm(0.02499)

# dnorm

# y = axis value for z = 0
dnorm(0)

# lets use dnorm to draw the normal distribution
zvalues <- seq(-4.0, 4.0, by=0.1)
dvalues <- dnorm(zvalues)
plot(zvalues, dvalues)

