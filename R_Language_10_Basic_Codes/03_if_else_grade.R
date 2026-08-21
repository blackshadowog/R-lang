# 3. If-Else: Grade Calculator
marks <- 78

if (marks >= 90) {
  grade <- "A+"
} else if (marks >= 75) {
  grade <- "A"
} else if (marks >= 60) {
  grade <- "B"
} else if (marks >= 40) {
  grade <- "C"
} else {
  grade <- "Fail"
}

cat("Marks:", marks, "\n")
cat("Grade:", grade, "\n")
