n <- 17
if (n < 2) print("Not Prime") else if (all(n %% 2:floor(sqrt(n)) != 0)) print("Prime") else print("Not Prime")
