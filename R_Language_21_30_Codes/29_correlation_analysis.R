hours <- c(1,2,3,4,5,6,7,8)
marks <- c(35,42,48,55,63,70,76,85)
cat("Correlation:",cor(hours,marks),"\n")
plot(hours,marks,pch=19,main="Hours vs Marks")
