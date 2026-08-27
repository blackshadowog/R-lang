# R Chapter 57: Descriptive Statistics

marks <- c(72, 85, 91, 68, 77, 95, 88, 74, 82, 90)

print(paste("Mean:", mean(marks)))
print(paste("Median:", median(marks)))
print(paste("Minimum:", min(marks)))
print(paste("Maximum:", max(marks)))
print(paste("Variance:", var(marks)))
print(paste("Standard deviation:", sd(marks)))

# Quantiles
print(quantile(marks))

# Five-number summary
print(summary(marks))
