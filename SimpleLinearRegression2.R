
csv.path = paste("D:/My-GithubProjs/MachineLearningExamples/trunk/EnrolmentFall.csv")

#read the dataset
mydataset <- read.csv(csv.path, header= TRUE)

#Attach the dataset
attach(mydataset)

#view the dataset
View(mydataset)


str(mydataset)

#get summary of the dataset
summary(mydataset)

#boxplot 
boxplot(mydataset)

#plot
plot(mydataset)

#histogram of the dataset

#install the ggplot2
#install.packages("ggplot2")

library(ggplot2)
library(graphics)

unem <- mydataset$UNEM
roll=mydataset$ROLL

class(unem)

hist(unem)


slr <- lm(formula = roll~unem, data = mydataset)
summary(slr)
confint(slr, level=0.95)
predict(slr, interval="predict")







