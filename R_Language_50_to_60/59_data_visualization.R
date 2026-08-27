# R Chapter 59: Data Visualization with Base R

months <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun")
sales <- c(120, 150, 135, 180, 210, 195)

# Line chart
plot(months, sales,
     type = "o",
     main = "Monthly Sales",
     xlab = "Month",
     ylab = "Sales",
     pch = 19)

# Bar chart
barplot(sales,
        names.arg = months,
        main = "Monthly Sales",
        xlab = "Month",
        ylab = "Sales")

# Histogram
hist(sales,
     main = "Sales Distribution",
     xlab = "Sales",
     breaks = 5)

# Box plot
boxplot(sales,
        main = "Sales Box Plot",
        ylab = "Sales")
