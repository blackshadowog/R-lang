# Bar Chart
subjects <- c("Python", "R", "SQL", "Java")
marks <- c(90, 85, 88, 78)

barplot(
  marks,
  names.arg = subjects,
  main = "Subject Marks",
  xlab = "Subjects",
  ylab = "Marks"
)
