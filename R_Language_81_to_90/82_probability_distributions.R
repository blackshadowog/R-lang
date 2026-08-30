# Chapter 82: Probability Distributions
x <- seq(-4, 4, length.out=100)
y <- dnorm(x)

plot(x, y, type="l",
     main="Normal Distribution",
     xlab="x", ylab="Density")

print(pnorm(70, mean=60, sd=10))

set.seed(10)
values <- rnorm(1000, mean=60, sd=10)
print(mean(values))
print(sd(values))

hist(values, main="Simulated Normal Data", xlab="Value")
