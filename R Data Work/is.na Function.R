# create a vector
data = c(1, 2, 3, NA, 45, 34, NA, NA, 23)

# display
print(data)

# get NA values
print(is.na(data))

# count NA values
print(sum(is.na(data)))

# get the NA index positions
print(which(is.na(data)))