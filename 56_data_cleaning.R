# R Chapter 56: Basic Data Cleaning

customers <- data.frame(
  name = c(" Aman ", "Riya", "KARAN", " Neha"),
  age = c(20, 21, NA, 22),
  city = c("Delhi", "delhi", "Mumbai", "Delhi"),
  stringsAsFactors = FALSE
)

print(customers)

# Remove extra spaces
customers$name <- trimws(customers$name)

# Standardize names
customers$name <- tools::toTitleCase(tolower(customers$name))

# Standardize city names
customers$city <- tools::toTitleCase(tolower(customers$city))

# Fill missing age with median age
customers$age[is.na(customers$age)] <- median(customers$age, na.rm = TRUE)

print(customers)
