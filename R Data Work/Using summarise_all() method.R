# Using summarise_all() method

library("dplyr")

# creating a data frame
df <- data.frame(col1=sample(rep(c(1: 5), each=3)),
                  col2=5: 19)

print("original dataframe")
print(df)

# summarising the data
print("summarised dataframe")
summarise_all(df, mean)