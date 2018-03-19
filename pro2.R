#Linear Regression on Boston Housing data.

data(Boston,package = "MASS")
View(Boston)
nrow(Boston)
set.seed(777)
Rownumbers = sample(1:nrow(Boston), 0.7*nrow(Boston))
head(Rownumbers)
HousingTrainData = Boston[Rownumbers,]
HousingTestData = Boston[-Rownumbers,]
nrow(HousingTestData)
names(Boston)
str(Boston)
head(Boston)
summary(Boston)
reg_Model = lm(formula = medv~., data = Boston)
summary(reg_Model)
plot(reg_Model$fitted.values, reg_Model$residuals, xlab='Prediction', ylab = 'Errors')
abline(a=0,b=0)