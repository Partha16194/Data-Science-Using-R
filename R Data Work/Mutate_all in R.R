library(dplyr)

d <- data.frame(
  name = c("Abhi", "Bhavesh", "Chaman", "Dimri"),
  age = c(7, 5, 9, 16),
  ht = c(46, NA, NA, 69),
  school = c("yes", "yes", "no", "no")
)

d_mutate_all <- d %>%
  mutate_all(~ ifelse(is.numeric(.), . * 2, .))

print(d_mutate_all)

