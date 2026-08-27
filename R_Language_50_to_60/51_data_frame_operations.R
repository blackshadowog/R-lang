# R Chapter 51: Data Frame Operations

employees <- data.frame(
  id = 1:5,
  name = c("Aman", "Riya", "Karan", "Neha", "Vikas"),
  department = c("IT", "HR", "IT", "Sales", "HR"),
  salary = c(45000, 50000, 60000, 42000, 55000)
)

# Select rows
print(employees[employees$salary > 50000, ])

# Select columns
print(employees[, c("name", "salary")])

# Sort by salary
employees_sorted <- employees[order(employees$salary, decreasing = TRUE), ]
print(employees_sorted)

# Update values
employees$salary <- employees$salary + 5000
print(employees)
