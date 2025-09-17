# Using summarise_at() method
library("dplyr")

# creating a data frame
df <- data.frame(col1=sample(rep(c(1: 5), each=3)),
                  col2=1: 15,
                  col3=letters[1:15])

print("original dataframe")
print(df)

# summarising the data
print("summarised dataframe")
df %>%
  summarise_at(c("col1", "col2"), mean, na.rm=TRUE)