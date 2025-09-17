height<-read.csv("C:/Users/PARTHA SARATHI DAS/Desktop/R Programming/weight-height.csv")
height
summary(height)
head(height)
plot(height)

#splitting data into training and testing data
set.seed(2)
install.packages('caTools')
library(caTools)
split<-sample.split(height,SplitRatio=0.7)
split
train<-subset(height,split="True")
test<-subset(height,split="False")
train
test
#create model
model<-lm(Weight~.,data=train)
summary(model)
pred<-predict(model,test)
pred
plot(test$Weight,type="l",lty=1.8,col="blue")
lines(pred,type="l",col="red")

#Finding accuracy
rmse<-sqrt(mean(pred-height$Weight)^2)
rmse
