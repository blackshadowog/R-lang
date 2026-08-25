m <- matrix(1:12,nrow=3)
print(m)
cat("Row sums:",apply(m,1,sum),"\n")
cat("Column means:",apply(m,2,mean),"\n")
