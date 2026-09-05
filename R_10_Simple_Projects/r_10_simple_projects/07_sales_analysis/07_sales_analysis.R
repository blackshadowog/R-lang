# Simple Sales Analysis
sales <- c(1200, 1500, 900, 1800, 2100, 1300)

cat("Total Sales:", sum(sales), "\n")
cat("Average Sales:", mean(sales), "\n")
cat("Highest Sale:", max(sales), "\n")

barplot(sales, main="Sales Analysis", xlab="Day", ylab="Sales")
