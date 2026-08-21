# 9. Data Frame: Student Records
students <- data.frame(
  Name = c("Aman", "Bhavesh", "Rahul", "Priya", "Neha"),
  Age = c(19, 20, 21, 20, 19),
  Marks = c(72, 88, 65, 91, 79)
)

print(students)

cat("\nAverage marks:", mean(students$Marks), "\n")

top_students <- students[students$Marks >= 80, ]
cat("\nStudents with marks >= 80:\n")
print(top_students)

students$Result <- ifelse(students$Marks >= 40, "Pass", "Fail")
cat("\nUpdated Data Frame:\n")
print(students)
