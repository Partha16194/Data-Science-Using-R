data_missing <- data.frame(
  Name = c("Alice", "Bob", "Charlie", NA, "Eve"),
  Age = c(24, 28, 35, NA, 22),
  Salary = c(50000, NA, 70000, 80000, 45000)
)

# Identifying missing values
missing_data <- is.na(data_missing)
print("Identifying Missing Values:")
print(missing_data)

# Fill missing values 
install.packages("tidyr")
library(tidyr)
data_filled <- fill(data_missing, Age, .direction = "down")
print("Data After Filling Missing Values in Age (Downward Direction):")
print(data_filled)