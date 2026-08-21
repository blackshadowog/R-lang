# 8. Matrix Operations
A <- matrix(c(1, 2, 3, 4), nrow = 2)
B <- matrix(c(5, 6, 7, 8), nrow = 2)

cat("Matrix A:\n")
print(A)

cat("Matrix B:\n")
print(B)

cat("A + B:\n")
print(A + B)

cat("A * B (element-wise):\n")
print(A * B)

cat("Matrix multiplication A %*% B:\n")
print(A %*% B)
