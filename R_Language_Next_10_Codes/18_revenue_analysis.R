sales <- data.frame(Product=c("Laptop","Phone","Tablet","Monitor"), Price=c(70000,30000,20000,15000), Quantity=c(3,8,5,6))
sales$Revenue <- sales$Price * sales$Quantity
print(sales)
cat("Total Revenue:", sum(sales$Revenue), "\n")
