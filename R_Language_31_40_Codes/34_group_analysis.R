sales <- data.frame(Department=c("IT","HR","IT","Sales","HR","IT"),Revenue=c(50000,30000,70000,45000,35000,60000))
print(aggregate(Revenue~Department,sales,sum))
