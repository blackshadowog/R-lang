# R Chapter 50: Data Frames
# Learn how to create, inspect, filter, and modify data frames.

students <- data.frame(
  name = c("Aman", "Riya", "Karan", "Neha"),
  age = c(20, 21, 19, 22),
  marks = c(85, 92, 76, 88)
)

print(students)
print(str(students))
print(summary(students))

# Access columns
print(students$name)
print(students[students$marks >= 85, ])

# Add a new column
students$result <- ifelse(students$marks >= 40, "Pass", "Fail")
print(students)
