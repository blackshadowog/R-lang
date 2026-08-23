text <- tolower(readline("Enter text: "))
x <- strsplit(text, "")[[1]]
cat("Vowels:", sum(x %in% c("a","e","i","o","u")), "\n")
