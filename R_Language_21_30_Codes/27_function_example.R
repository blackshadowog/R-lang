grade <- function(m){if(m>=90)"A+" else if(m>=80)"A" else if(m>=70)"B" else if(m>=60)"C" else "D"}
m <- as.numeric(readline("Enter marks: "))
cat("Grade:",grade(m),"\n")
