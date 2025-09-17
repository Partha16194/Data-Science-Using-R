#Two-Sample T-Test Approach

#Two-Sample T-Test compares the means of two independent groups. It is used to help us to understand whether the difference between the two means is real or simply by chance. let's test if there is a significant difference between the sweets sold in two shops.

#The general form of the test is t.test(y1, y2, paired=FALSE). By default, R assumes that the variances of y1 and y2 are unequal, thus defaulting to Welch's test. To toggle this, we use the flag var.equal=TRUE.

set.seed(0)

shopOne <- rnorm(50, mean = 140, sd = 4.5)
shopTwo <- rnorm(50, mean = 150, sd = 4)

t.test(shopOne, shopTwo, var.equal = TRUE)