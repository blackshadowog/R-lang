# Factorial
n <- as.integer(readline("Enter a number: "))
fact <- 1

if (n >= 0) {
  if (n > 1) {
    for (i in 2:n) {
      fact <- fact * i
    }
  }
  cat("Factorial:", fact, "\n")
} else {
  print("Enter a non-negative number.")
}
