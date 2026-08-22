# Fibonacci Series
n <- as.integer(readline("How many terms? "))

a <- 0
b <- 1

for (i in 1:n) {
  cat(a, " ")
  next_value <- a + b
  a <- b
  b <- next_value
}
cat("\n")
