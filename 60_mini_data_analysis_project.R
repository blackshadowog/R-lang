# R Chapter 60: Mini Data Analysis Project
# Project: Analyze monthly sales performance.

sales_data <- data.frame(
  month = c("Jan", "Feb", "Mar", "Apr", "May", "Jun",
            "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"),
  sales = c(12000, 14500, 13200, 15800, 17200, 19000,
            18500, 21000, 22500, 21800, 24000, 26500),
  orders = c(120, 135, 128, 150, 165, 180,
             175, 195, 205, 200, 220, 240)
)

print(sales_data)

# Basic statistics
cat("Total Sales:", sum(sales_data$sales), "\n")
cat("Average Sales:", mean(sales_data$sales), "\n")
cat("Highest Sales:", max(sales_data$sales), "\n")
cat("Lowest Sales:", min(sales_data$sales), "\n")

# Best month
best_month <- sales_data$month[which.max(sales_data$sales)]
cat("Best Month:", best_month, "\n")

# Average order value
sales_data$average_order_value <- sales_data$sales / sales_data$orders
print(sales_data)

# Sales growth compared with previous month
sales_data$sales_growth <- c(
  NA,
  diff(sales_data$sales) / sales_data$sales[-nrow(sales_data)] * 100
)

print(sales_data)

# Summary
cat("\n--- PROJECT SUMMARY ---\n")
cat("Total orders:", sum(sales_data$orders), "\n")
cat("Average order value:", mean(sales_data$average_order_value), "\n")
cat("Best sales month:", best_month, "\n")

# Visualization
plot(sales_data$month, sales_data$sales,
     type = "o",
     main = "Monthly Sales Performance",
     xlab = "Month",
     ylab = "Sales",
     pch = 19)

# Optional: save the plot
# png("monthly_sales.png", width = 800, height = 600)
# plot(sales_data$month, sales_data$sales, type = "o",
#      main = "Monthly Sales Performance",
#      xlab = "Month", ylab = "Sales", pch = 19)
# dev.off()
