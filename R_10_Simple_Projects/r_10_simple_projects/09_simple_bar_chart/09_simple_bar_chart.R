# Simple Bar Chart
subjects <- c("Python", "R", "SQL", "Excel", "Power BI")
students <- c(35, 22, 40, 30, 28)

barplot(
  students,
  names.arg=subjects,
  main="Students by Skill",
  xlab="Skill",
  ylab="Number of Students"
)
