# Simple Sales Analysis
sales <- data.frame(
  Product = c("Laptop", "Phone", "Tablet", "Monitor", "Keyboard"),
  Sales = c(75000, 55000, 30000, 25000, 10000)
)

print(sales)

cat("Total Sales:", sum(sales$Sales), "\n")
cat("Average Sales:", mean(sales$Sales), "\n")
cat("Best Selling Product:",
    sales$Product[which.max(sales$Sales)], "\n")

barplot(
  sales$Sales,
  names.arg = sales$Product,
  main = "Product Sales",
  xlab = "Product",
  ylab = "Sales"
)
