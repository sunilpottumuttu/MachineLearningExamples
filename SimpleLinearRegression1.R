read.csv("wc-at.csv", header= TRUE)

wc <- read.csv("wc-at.csv", header= TRUE)
attach(wc)
View(wc)
str(wc)
summary(wc)
boxplot(wc)
library(ggplot2)

waist<- wc.Waist
AT<- wc~AT
plot(wc)
hist(Waist)
install.packages("ggplot2")
library(graphics)
hist(AT)
slr <- lm(AT~Waist, data = wc)
summary(slr)
confint(slr, level=0.95)
predict(slr, interval="predict")
slr_sqrt <- lm(AT~sqrt(Waist), data = wc)
predict(slr, interval="predict")
summary(slr_sqrt)
slr_sqrts <- lm(Waist~sqrt(AT), data = wc)
predict(slr, interval="predict")
summary(slr_sqrts)
read.csv("input.csv", header= TRUE)