## Pg621#11.73 based on 11.68
x1<-c(-3,-2,-1,0,1,2,3);
x2<-x1^2;

X<-cbind(1,x1,x2);
Y<-c(1,0,0,-1,-1,0,0);

B <- solve(crossprod(X))%*%crossprod(X,Y);B;

SSE <- crossprod(Y)-crossprod((X%*%B),Y);SSE;
SS <- SSE/(length(x1)-2-1);SS;
a <- c(0,1,2);a;
SXX <- crossprod(a,solve(crossprod(X)))%*%a;SXX;
TS <- (B[2]+2*B[3])/(SS*SXX)^0.5;TS;

## Pg622#11.76
XX <- rbind(c(151401.8, 2.6, 100.5, -28082.9),
            c(     2.6, 1.0,   0.0,      0.4),
            c(   100.5, 0.0,   8.1,      5.2),
            c(-28082.9, 0.4,   5.2,   6038.2));
XX <- XX*10^-4
B <- c(38.83, - 0.0092, -0.92, 11.56)
a <- c(1,914,65,6)

atXXa <- crossprod(a,XX)%*%a;atXXa
atB <- crossprod(a,B);atB


## R-Question
attach(fat) ## After loading the data rom fat.r
##1
plot(abdomen,body.fat)
##2
reg2 <- lm(body.fat ~ abdomen); reg2;
abline(a = reg2$coef[1], b = reg2$coef[2])
##3
summary(reg2)
##4
plot(reg2)
##5a
reg5 <- lm(body.fat ~ abdomen + age);reg5
summary(reg5)
###b
predict(reg5, newdata = data.frame(abdomen = 105, age = 60), level = 0.95, interval = "confidence")
###c
predict(reg5, newdata = data.frame(abdomen = 90, age = 50), level = 0.95, interval = "prediction")

