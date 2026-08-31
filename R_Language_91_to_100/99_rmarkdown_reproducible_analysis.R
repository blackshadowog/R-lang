# 99 - Reproducible Analysis with R Markdown / Quarto
set.seed(123)
data <- data.frame(
  category=rep(c("A","B","C"), each=10),
  value=rnorm(30, mean=100, sd=15)
)
print(head(data))
print(summary(data))
group_means <- aggregate(value ~ category, data=data, FUN=mean)
print(group_means)

# Put similar code into R Markdown (.Rmd) or Quarto (.qmd)
# together with Markdown text, tables, charts, and conclusions.
# R Markdown: rmarkdown::render("analysis.Rmd")
# Quarto: quarto::quarto_render("analysis.qmd")
