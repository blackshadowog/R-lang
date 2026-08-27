# R Chapter 55: Missing Values

sales <- c(100, 250, NA, 400, 350, NA, 500)

print(sales)

# Find missing values
print(is.na(sales))

# Count missing values
print(sum(is.na(sales)))

# Mean with and without NA handling
print(mean(sales, na.rm = TRUE))

# Replace NA with the mean
sales[is.na(sales)] <- mean(sales, na.rm = TRUE)
print(sales)

# Remove missing values instead
data_without_na <- na.omit(c(10, NA, 20, 30, NA, 40))
print(data_without_na)
