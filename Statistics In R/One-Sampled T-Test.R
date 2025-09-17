#The T-Test is a statistical method used to determine whether there is a significant difference between the means of two groups or between a sample and a known value.

#For Example: businessman who owns two sweet shops in a town. He wants to know if there's a significant difference in the average number of sweets sold per day in each store. While he collects data from 15 random customers at each shop, he wonders if the observed difference in sales is just due to random chance or if it's statistically significant. 

#This is where T-testing comes into play it helps us to understand whether the difference between the two means is real or simply by chance.

#Mathematically, what the t-test does is, take a sample from both sets and establish the problem assuming a null hypothesis that the two means are the same. there are three main types of T-Tests:
  
#  One Sample T-test
#Two sample T-test
#Paired sample T-test

#----------------------------------------------------------------------------
set.seed(0)
sweetSold <- c(rnorm(50, mean = 140, sd = 5))

# mu=The hypothesized mean difference between the two groups.
t.test(sweetSold, mu = 150)