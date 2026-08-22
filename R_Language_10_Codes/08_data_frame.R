# Data Frame Example
students <- data.frame(
  Name = c("Abhishek", "Rahul", "Priya", "Aman"),
  Age = c(20, 21, 20, 22),
  Marks = c(88, 76, 91, 82)
)

print(students)

cat("Average Marks:", mean(students$Marks), "\n")
cat("Top Student:", students$Name[which.max(students$Marks)], "\n")
