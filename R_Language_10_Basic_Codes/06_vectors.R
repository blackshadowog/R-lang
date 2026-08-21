# 6. Vectors and Basic Operations
marks <- c(75, 82, 91, 68, 88)

cat("Marks:", marks, "\n")
cat("Total:", sum(marks), "\n")
cat("Average:", mean(marks), "\n")
cat("Maximum:", max(marks), "\n")
cat("Minimum:", min(marks), "\n")

passed <- marks[marks >= 70]
cat("Marks >= 70:", passed, "\n")
