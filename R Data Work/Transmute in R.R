library(dplyr)

d <- data.frame(
  name = c("Abhi", "Bhavesh", "Chaman", "Dimri"),
  age = c(7, 5, 9, 16),
  ht = c(46, NA, NA, 69),
  school = c("yes", "yes", "no", "no")
)

result <- transmute(d,
                    name = name,
                    age_in_months = age * 12,
                    ht,
                    school)

print(result)