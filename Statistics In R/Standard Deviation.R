#Method 1: Naive approach

#In this method of calculating the standard deviation, 
#we will be using the above standard formula of the sample standard deviation in R language.

v <- c(12,24,74,32,14,29,84,56,67,41)

s<-sqrt(sum((v-mean(v))^2/(length(v)-1)))

print(s)

#------------------------------------------------------------------------------

v <- c(1.8,3.7,9.2,4.7,6.1,2.8,6.1,2.2,1.4,7.9)

s<-sqrt(sum((v-mean(v))^2/(length(v)-1)))

print(s)

#------------------------------------------------------------------------------
#Method 2: Using sd()

#The sd() function is used to return the standard deviation.

v <- c(12,24,74,32,14,29,84,56,67,41)

s<-sd(v)

print(s)
#-----------------------------------------------------------------------------


#Calculate the Standard Deviation of the Data Frame:

#We can calculate the standard deviation of the data frame using both methods. we can take the iris dataset and for every column, 
#we will calculate the standard deviation.

data(iris)

sd(iris$Sepal.Length)
sd(iris$Sepal.Width)
sd(iris$Petal.Length)
sd(iris$Petal.Width)


