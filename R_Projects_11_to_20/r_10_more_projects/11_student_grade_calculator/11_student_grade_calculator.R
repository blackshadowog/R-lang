marks <- c(78, 85, 92, 66, 88)
avg <- mean(marks)
cat("Average:", avg, "\n")
if (avg >= 90) print("Grade A") else if (avg >= 75) print("Grade B") else if (avg >= 60) print("Grade C") else print("Grade D")
