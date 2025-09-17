library("dplyr")     
gfg_data = data.frame(x1 = c(1, 2, 3, 4, 5),
                      x2 = c(8, 4, 5, 1, 2),
                      x3 = c(7, 9, 1, 2, 7))

summarise(gfg_data, gfg_mean = mean(x3))