# R Chapter 53: Functions

calculate_average <- function(numbers) {
  if (length(numbers) == 0) {
    return(NA)
  }
  mean(numbers)
}

numbers <- c(10, 20, 30, 40, 50)
result <- calculate_average(numbers)
print(result)

# Function with default argument
calculate_total <- function(price, quantity = 1) {
  price * quantity
}

print(calculate_total(100, 3))
print(calculate_total(250))

# Function returning multiple calculations
student_report <- function(marks) {
  list(
    average = mean(marks),
    highest = max(marks),
    lowest = min(marks)
  )
}

print(student_report(c(78, 85, 91, 66, 88)))
