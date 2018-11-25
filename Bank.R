getwd()
setwd("D:\\R\\AirQualityUCI\\bank-additional\\bank-additional")
Bank =read.csv("bank-additional.csv",na.strings = c(""," ","NA"),sep = ";")
Bank
str(Bank)
library(Amelia)
missmap(Bank)
table(Bank$job)
fit <-lm(nr.employed~job,data=Bank)
print(fit)

summary(fit)

plot(fit)

plot(job~marital,Bank)
library(ggplot2)
ggplot(Bank) + geom_point(aes(x=marital, y=job))
scatter.smooth(x=Bank$housing,y=Bank$duration,main="Duration-Housing",xlab = "Housing",ylab = "Duration")
library(ggplot2)
ggplot(Bank) + geom_point(aes(x=housing, y=duration))
table(Bank$job,Bank$default) 