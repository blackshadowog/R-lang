library(dplyr)

students <- data.frame(
  name=c("Aman","Riya","Karan","Neha","Vikas"),
  age=c(20,21,19,22,20),
  marks=c(85,92,76,88,95)
)

print(select(students, name, marks))
print(filter(students, marks >= 85))
print(arrange(students, desc(marks)))

students <- mutate(students, result=ifelse(marks >= 40,"Pass","Fail"))
print(students)
