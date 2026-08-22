# Student Marks Analysis
marks <- c(78, 85, 92, 67, 88, 74)

cat("Marks:", marks, "\n")
cat("Average:", mean(marks), "\n")
cat("Highest:", max(marks), "\n")
cat("Lowest:", min(marks), "\n")

grade <- ifelse(mean(marks) >= 90, "A+",
         ifelse(mean(marks) >= 80, "A",
         ifelse(mean(marks) >= 70, "B",
         ifelse(mean(marks) >= 60, "C", "D"))))

cat("Grade:", grade, "\n")
