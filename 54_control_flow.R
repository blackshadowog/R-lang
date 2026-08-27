# R Chapter 54: Control Flow

marks <- 82

if (marks >= 90) {
  grade <- "A+"
} else if (marks >= 80) {
  grade <- "A"
} else if (marks >= 70) {
  grade <- "B"
} else if (marks >= 60) {
  grade <- "C"
} else {
  grade <- "F"
}

print(paste("Grade:", grade))

# for loop
for (i in 1:5) {
  print(paste("Iteration:", i))
}

# while loop
count <- 1
while (count <= 3) {
  print(count)
  count <- count + 1
}
