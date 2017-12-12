library(tidyverse)
library(read_r)
nile <- read_csv("nile.csv")
str(nile)
glimpse(nile)
m1 <- lm(flow ~ year, data = nile)
coef(m1)
ggplot() +
  geom_point(aes(x = year, y = flow), data = nile) + 
  geom_line(aes(x = year, y = flow), data = nile) +
  geom_abline(intercept = 42898, slope = -21, color = "blue")
k