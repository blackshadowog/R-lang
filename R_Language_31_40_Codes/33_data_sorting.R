students <- data.frame(Name=c("Aman","Riya","Rahul","Neha","Karan"),Marks=c(72,91,65,88,79))
print(students[order(-students$Marks),])
