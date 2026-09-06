secret <- sample(1:10, 1)
guess <- as.integer(readline("Guess 1-10: "))
if (guess == secret) print("Correct!") else cat("Wrong! Number was", secret, "\n")
