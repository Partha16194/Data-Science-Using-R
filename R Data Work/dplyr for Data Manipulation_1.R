install.packages("dplyr")
library(dplyr)

data <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
  Age = c(24, 28, 35, 40, 22),
  Salary = c(50000, 60000, 70000, 80000, 45000)
)

# Filters rows based on conditions
filtered_data <- filter(data, Age > 25)
print("Filtered Data (Age > 25):")
print(filtered_data)
# Selects specific columns
selected_data <- select(data, Name, Salary)
print("Selected Data (Name and Salary columns):")
print(selected_data)