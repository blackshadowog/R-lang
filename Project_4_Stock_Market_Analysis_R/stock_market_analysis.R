# Project 4: Stock Market Analysis
# Author: Student

# Install packages once if needed:
# install.packages(c("quantmod", "ggplot2", "dplyr", "tidyquant"))

library(quantmod)
library(ggplot2)
library(dplyr)
library(tidyquant)

# 1. Download stock data
symbol <- "AAPL"
start_date <- "2020-01-01"
end_date <- Sys.Date()

stock_data <- getSymbols(
  symbol,
  src = "yahoo",
  from = start_date,
  to = end_date,
  auto.assign = FALSE
)

# 2. Convert data to a data frame
stock_df <- data.frame(
  Date = index(stock_data),
  Open = as.numeric(Op(stock_data)),
  High = as.numeric(Hi(stock_data)),
  Low = as.numeric(Lo(stock_data)),
  Close = as.numeric(Cl(stock_data)),
  Volume = as.numeric(Vo(stock_data))
)

# 3. Calculate daily returns
stock_df <- stock_df %>%
  mutate(
    Daily_Return = (Close - lag(Close)) / lag(Close) * 100,
    MA_20 = zoo::rollmean(Close, 20, fill = NA, align = "right"),
    MA_50 = zoo::rollmean(Close, 50, fill = NA, align = "right")
  )

# 4. Summary statistics
summary_stats <- stock_df %>%
  summarise(
    Minimum_Price = min(Close, na.rm = TRUE),
    Maximum_Price = max(Close, na.rm = TRUE),
    Average_Price = mean(Close, na.rm = TRUE),
    Volatility = sd(Daily_Return, na.rm = TRUE)
  )

print("Summary Statistics:")
print(summary_stats)

# 5. Closing price chart
p1 <- ggplot(stock_df, aes(x = Date, y = Close)) +
  geom_line() +
  labs(
    title = paste(symbol, "Closing Price"),
    x = "Date",
    y = "Closing Price (USD)"
  ) +
  theme_minimal()

print(p1)

# 6. Moving average chart
p2 <- ggplot(stock_df, aes(x = Date)) +
  geom_line(aes(y = Close), na.rm = TRUE) +
  geom_line(aes(y = MA_20), na.rm = TRUE) +
  geom_line(aes(y = MA_50), na.rm = TRUE) +
  labs(
    title = paste(symbol, "Price with Moving Averages"),
    x = "Date",
    y = "Price (USD)"
  ) +
  theme_minimal()

print(p2)

# 7. Daily return chart
p3 <- ggplot(stock_df, aes(x = Date, y = Daily_Return)) +
  geom_line(na.rm = TRUE) +
  labs(
    title = paste(symbol, "Daily Returns"),
    x = "Date",
    y = "Daily Return (%)"
  ) +
  theme_minimal()

print(p3)

# 8. Save processed data
write.csv(stock_df, "stock_analysis_output.csv", row.names = FALSE)

# 9. Save summary statistics
write.csv(summary_stats, "summary_statistics.csv", row.names = FALSE)

cat("Analysis completed successfully.\n")
