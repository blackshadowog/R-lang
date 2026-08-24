employees <- data.frame(Name=c("Aman","Riya","Rahul","Neha","Karan"),Department=c("IT","HR","IT","Sales","IT"),Salary=c(55000,48000,62000,51000,70000))
print(employees)
cat("Average Salary:",mean(employees$Salary),"\nHighest Paid:",employees$Name[which.max(employees$Salary)],"\nIT Employees:",sum(employees$Department=="IT"),"\n")
