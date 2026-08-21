# 7. User-Defined Functions
calculate_area <- function(length, width) {
  area <- length * width
  return(area)
}

is_even <- function(number) {
  return(number %% 2 == 0)
}

cat("Rectangle area:", calculate_area(10, 5), "\n")
cat("Is 24 even?", is_even(24), "\n")
