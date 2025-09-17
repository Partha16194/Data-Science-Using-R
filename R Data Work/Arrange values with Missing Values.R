#Arrange values with Missing Values

# Create a sample data frame with missing values
data <- data.frame(
  ID = c(1, 2, NA, 4),
  Value = c(20, NA, 15, 30)
)
data
# Arrange by Value in ascending order, placing missing values first
arrange(data, desc(is.na(Value)), Value)

