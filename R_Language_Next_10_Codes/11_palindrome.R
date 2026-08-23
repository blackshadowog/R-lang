n <- readline("Enter a number: ")
r <- paste(rev(strsplit(n, "")[[1]]), collapse="")
if(n == r) print("Palindrome") else print("Not Palindrome")
