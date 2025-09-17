#Using Summary with vector()

data = c(1: 5, 56, 43, 56, 78, 51)

print(data)

print(summary(data))

#--------------------------------------------------------------------

#Using summary() with DataFrame

data = data.frame(col1=c(1: 5, 56, 43, 56, 78, 51),
                  col2=c(100: 104, 56, 43, 56, 78, 51),
                  col3=c(1: 5, 34, 56, 78, 76, 79))

print(data)

print(summary(data))

#-----------------------------------------------------------------
#Using summary() with Specific DataFrame Columns

data = data.frame(col1=c(1: 5, 56, 43, 56, 78, 51),
                  col2=c(100: 104, 56, 43, 56, 78, 51),
                  col3=c(1: 5, 34, 56, 78, 76, 79))

print(data)

print(summary(data[c('col1', 'col3')]))

#---------------------------------------------------------------

#Using summary() with Regression Model

data = data.frame(col1=c(1: 5, 56, 43, 56, 78, 51),
                  col2=c(100: 104, 56, 43, 56, 78, 51))


reg = lm(col1~col2, data)

summary(reg)

#------------------------------------------------------------------

