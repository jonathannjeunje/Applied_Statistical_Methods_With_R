attach(fat)
##1
plot(abdomen,body.fat)
##2
reg2 <- lm(body.fat ~ abdomen)
names(reg2)
abline(a = reg2$coef[1], b = reg2$coef[2])
##3
summary(reg2)
##4
plot(reg2)
##5a
reg5 <- lm(body.fat ~ abdomen + age)
reg5
summary(reg5)
###b
predict(reg5, newdata = data.frame(abdomen = 105, age = 60), level = 0.95, interval = "confidence")
###c
predict(reg5, newdata = data.frame(abdomen = 90, age = 50), level = 0.95, interval = "prediction")

