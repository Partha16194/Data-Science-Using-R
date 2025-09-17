# Sample data
group1 <- c(12, 15, 14, 10, 13)  # Group A
group2 <- c(18, 20, 17, 16, 19)  # Group B

# Mann-Whitney U Test
result <- wilcox.test(group1, group2)

# Show result
print(result)
