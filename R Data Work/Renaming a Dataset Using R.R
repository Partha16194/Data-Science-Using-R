install.packages("plyr")
library(plyr) 

df<-data.frame(row1 = 0:2, row2 = 3:5, row3 = 6:8) 
print("Original Data Frame") 
print(df) 
print("Modified Data Frame") 

rename(df, c("row1"="one", "row2"="two", "row3"="three")) 