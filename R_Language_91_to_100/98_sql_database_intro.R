# 98 - SQL and Database Connection
# Install once: install.packages(c("DBI","RSQLite"))
library(DBI)
library(RSQLite)
con <- dbConnect(SQLite(), ":memory:")
dbExecute(con, "CREATE TABLE sales (id INTEGER, product TEXT, amount REAL)")
dbExecute(con, "INSERT INTO sales VALUES
  (1,'Laptop',65000),(2,'Phone',30000),(3,'Tablet',22000)")
result <- dbGetQuery(con, "SELECT product, amount FROM sales WHERE amount > 25000")
print(result)
dbDisconnect(con)
