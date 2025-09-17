#Arrange values by a Single Variable
library(dplyr)
# Create a sample data frame
students <- data.frame(
  Name = c("Ali", "Boby", "Charlie", "Davdas"),
  Score = c(85, 92, 78, 95)
)
# Arrange by Score in ascending order
arrange(students, Score)
