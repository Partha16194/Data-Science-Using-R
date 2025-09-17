#Paired Sample T-test Approach

#Paired sample T-test is a statistical procedure that is used to determine whether the mean difference between two sets of observations is zero. In a paired sample t-test, each subject is measured two times, resulting in pairs of observations.

#Let's test if there's a significant difference in the average sweetness level of sweets before and after a change in recipe. the test is run using the syntax t.test(y1, y2, paired=TRUE)

set.seed(2820)

sweetOne <- c(rnorm(100, mean = 14, sd = 0.3))
sweetTwo <- c(rnorm(100, mean = 13, sd = 0.2))

t.test(sweetOne, sweetTwo, paired = TRUE)