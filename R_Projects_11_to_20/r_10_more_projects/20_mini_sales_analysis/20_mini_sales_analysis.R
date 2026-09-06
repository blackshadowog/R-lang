data <- data.frame(Product=c("Laptop","Phone","Tablet","Monitor","Keyboard"), Sales=c(120,250,150,90,300))
print(data)
cat("Total Sales:", sum(data$Sales), "\n")
barplot(data$Sales, names.arg=data$Product, main="Product Sales", las=2)
