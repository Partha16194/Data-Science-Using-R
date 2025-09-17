# create a dataframe with 3 columns
data=data.frame(column1=c(1,2,NA,34),
                column2=c(NA,34,56,NA),
                column3=c(NA,NA,32,56))

# display
print(data)

# get count of NA in each column
print(sapply(data, function(x) sum(is.na(x))))