# 10. Basic Data Analysis + Plot
students <- data.frame(
  Name = c("Aman", "Bhavesh", "Rahul", "Priya", "Neha"),
  Marks = c(72, 88, 65, 91, 79),
  Attendance = c(80, 92, 75, 95, 85)
)

cat("Dataset:\n")
print(students)

cat("\nSummary:\n")
print(summary(students))

cat("\nHighest scorer:\n")
print(students[which.max(students$Marks), ])

students$Performance <- ifelse(
  students$Marks >= 80, "Excellent",
  ifelse(students$Marks >= 60, "Good", "Needs Improvement")
)

cat("\nWith performance category:\n")
print(students)

# Basic bar plot
barplot(
  students$Marks,
  names.arg = students$Name,
  main = "Student Marks",
  xlab = "Students",
  ylab = "Marks"
)
