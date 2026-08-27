# R Chapter 52: Apply Family

numbers <- matrix(1:12, nrow = 3)

print(numbers)

# Apply a function over rows
row_sums <- apply(numbers, 1, sum)
print(row_sums)

# Apply over columns
column_means <- apply(numbers, 2, mean)
print(column_means)

# lapply returns a list
values <- list(a = 1:5, b = 6:10, c = 11:15)
print(lapply(values, mean))

# sapply simplifies the result
print(sapply(values, mean))
