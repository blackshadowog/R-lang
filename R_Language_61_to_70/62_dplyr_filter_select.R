library(dplyr)

employees <- data.frame(
  name=c("Aman","Riya","Karan","Neha","Vikas","Priya"),
  department=c("IT","HR","IT","Sales","Finance","IT"),
  salary=c(45000,52000,65000,48000,70000,58000)
)

print(select(employees,name,salary))
print(filter(employees,salary > 55000))
print(filter(employees,department=="IT" & salary > 50000))
print(filter(employees,department=="IT" | department=="HR"))
print(filter(employees,department!="IT"))
