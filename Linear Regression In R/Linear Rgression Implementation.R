install.packages('caTools')
install.packages("ggplot2")

library(ggplot2)
library(caTools)
library(reactable)

data <- data.frame(
  YearsExperience = c(1.1, 1.3, 1.5, 10.3, 10.5, 2.0, 2.2, 2.9, 3.0, 3.2, 3.2, 3.7, 
                      3.9, 4.0, 4.0, 4.1, 4.5, 4.9, 5.1, 5.3, 5.9, 6.0, 6.8, 7.1, 
                      7.9, 8.2, 8.7, 9.0, 9.5, 9.6),
  Salary = c(39343.00, 46205.00, 37731.00, 122391.00, 121872.00, 43525.00, 39891.00, 
             56642.00, 60150.00, 54445.00, 64445.00, 57189.00, 63218.00, 55794.00, 
             56957.00, 57081.00, 61111.00, 67938.00, 66029.00, 83088.00, 81363.00, 
             93940.00, 91738.00, 98273.00, 101302.00, 113812.00, 109431.00, 105582.00, 
             116969.00, 112635.00)
)

#Visualize dataframe in nice way
install.packages("reactable")
# Create interactive, eye-catching table
reactable(
  data,
  filterable = TRUE,
  searchable = TRUE,
  striped = TRUE,
  highlight = TRUE,
  bordered = TRUE,
  defaultPageSize = 30,
  theme = reactableTheme(
    headerStyle = list(background = "#002B5B", color = "#FFFFFF", fontWeight = "bold"),
    stripedColor = "#F5F7FA",
    highlightColor = "#D6EAF8"
  )
)

plot(data)

split = sample.split(data$Salary, SplitRatio = 0.7)
trainingset = subset(data, split == TRUE)
testset = subset(data, split == FALSE)

lm_r = lm(formula = Salary ~ YearsExperience, data = trainingset)
# Create interactive, eye-catching table to visualize model summary
install.packages("sjPlot")
library(sjPlot)
tab_model(
  lm_r,
  show.ci = TRUE,         # Confidence intervals
  show.std = TRUE,        # Standardized coefficients
  dv.labels = "Salary Prediction",
  string.est = "Estimate",
  string.ci = "95% CI",
  string.std = "Std. Beta"
)
confint(lm_r)


#Training Set Visualization:
  
  ggplot() + geom_point(aes(x = trainingset$YearsExperience, y = trainingset$Salary), colour = 'red') +
  geom_line(aes(x = trainingset$YearsExperience, y = predict(lm_r, newdata = trainingset)), colour = 'blue') +
  ggtitle('Salary vs Experience (Training set)') +
  xlab('Years of experience') + ylab('Salary')
  
 # Test Set Visualization:
    
    ggplot() + geom_point(aes(x = testset$YearsExperience, y = testset$Salary), colour = 'red') +
    geom_line(aes(x = trainingset$YearsExperience, y = predict(lm_r, newdata = trainingset)), colour = 'blue') +
    ggtitle('Salary vs Experience (Test set)') + 
    xlab('Years of experience') + ylab('Salary')
    
    #Predictions
    new_data <- data.frame(YearsExperience = c(4.0, 4.5, 5.0))
    predicted_salaries <- predict(lm_r, newdata = new_data)
    print(predicted_salaries)
  
  


