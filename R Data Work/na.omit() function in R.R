# Create a vector with missing values
vector <- c(1, 2, NA, 4, 5)

vector

# Use na.omit() to remove missing values
cleaned_vector <- na.omit(vector)

# Display the cleaned vector
print(cleaned_vector)

#-----------------------------------------------------------------------
# Create a matrix with missing values
mat<- c(NA,1,2,NA,3,4,NA,5,6,NA,7,8)

var<-matrix(mat,3,4)
var

# Use na.omit() to remove missing values
na.omit(var)

#------------------------------------------------------------------------

# Create a data frame with missing values
data <- data.frame(
  ID = c(1, 2, 3, 4),
  Value = c(5, NA, 7, 8)
)

data 

# Use na.omit() to remove rows with missing values
cleaned_data <- na.omit(data)

# Display the cleaned data
print(cleaned_data)