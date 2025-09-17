#Arrange values by a Multiple Variables

# Create a sample data frame
transactions <- data.frame(
  Date = c("2024-04-01", "2024-04-01", "2024-04-02", "2024-04-03"),
  Amount = c(100, 150, 200, 75)
)
transactions
# Arrange by Date in ascending order, then by Amount in descending order
arrange(transactions, Date, desc(Amount))

