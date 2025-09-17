# Contingency table
data <- matrix(c(20,30,   # Low
                 40,25,   # Medium
                 10,15),  # High
               nrow = 3, byrow = TRUE)

dimnames(data) <- list(
  Income_Level = c("Low","Medium","High"),
  Subscription_Status = c("Subscribed","Not_Subscribed")
)

install.packages("gt", dependencies = TRUE, type = "binary")
library(gt)

as.data.frame.matrix(data) |>
  gt() |>
  tab_header(
    title = "Income Level vs Subscription Status",
    subtitle = "Contingency Table"
  )

# Chi-square test
result <- chisq.test(data)

# Show results
print(result)

# Extract expected frequencies
result$expected
