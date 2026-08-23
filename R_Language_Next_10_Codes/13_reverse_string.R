text <- readline("Enter text: ")
cat("Reversed:", paste(rev(strsplit(text, "")[[1]]), collapse=""), "\n")
