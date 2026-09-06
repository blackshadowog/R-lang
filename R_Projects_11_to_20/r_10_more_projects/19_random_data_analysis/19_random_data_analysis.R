set.seed(10)
x <- rnorm(100,50,10)
cat("Mean:", mean(x), "\nMedian:", median(x), "\nSD:", sd(x), "\n")
hist(x, main="Random Data", xlab="Value")
