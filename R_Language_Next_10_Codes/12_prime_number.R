n <- as.integer(readline("Enter a number: "))
p <- n > 1
if(p && n > 2) for(i in 2:floor(sqrt(n))) if(n %% i == 0) { p <- FALSE; break }
if(p) print("Prime") else print("Not Prime")
