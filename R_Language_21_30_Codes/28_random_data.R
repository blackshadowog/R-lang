set.seed(42)
x <- rnorm(100,50,10)
cat("Mean:",mean(x),"SD:",sd(x),"\n")
hist(x,main="Random Data",xlab="Value")
