library(tidyr)

students <- data.frame(
  name=c("Aman","Riya","Karan","Neha"),
  math=c(85,NA,76,90),
  science=c(88,92,NA,95)
)

print(students)

filled <- students %>%
  replace_na(list(math=0,science=0))
print(filled)

print(drop_na(students))
print(drop_na(students,math))
print(complete.cases(students))
