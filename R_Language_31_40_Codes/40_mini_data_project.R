employees <- data.frame(Name=c("Aman","Riya","Rahul","Neha","Karan","Priya"),Department=c("IT","HR","IT","Sales","IT","HR"),Salary=c(55000,48000,62000,51000,70000,58000),Experience=c(2,3,4,2,5,4))
cat("Employees:",nrow(employees),"\nAverage Salary:",mean(employees$Salary),"\nHighest Paid:",employees$Name[which.max(employees$Salary)],"\n")
print(aggregate(Salary~Department,employees,mean))
plot(employees$Experience,employees$Salary,pch=19,main="Experience vs Salary",xlab="Experience",ylab="Salary")
