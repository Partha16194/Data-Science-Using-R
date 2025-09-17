#Let's consider an example where we compare smog concentrations in India from May to December. 
#The data is presented for 13 states with measurements in both months.

# Smog concentrations
may <- c(13.3, 10.0, 16.5, 7.9, 9.5, 8.3, 12.6, 8.9, 13.6, 8.1, 18.3, 8.1, 13.4)
dec <- c(11.1, 16.2, 15.3, 19.9, 10.5, 15.5, 12.7, 14.2, 15.6, 20.4, 12.7, 11.2, 36.8)
# Paired test since same states in two months
result <- wilcox.test(may, dec, paired = TRUE)

print(result)

