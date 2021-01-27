##### Pg676#13.12

per.c14.low <- c(23.37,25.13,23.78,27.74,25.3,25.21,22.12,20.96,23.11,22.57,24.59,23.7)
per.c14.med <- c(20.39,20.87,20.78,20.19,20.01,20.23,20.73,19.53,18.87,18.17,23.34,22.45)
per.c14.high <- c(18.87,19.69,19.29,18.1,18.42,19.33,17.26,18.09,18.69,18.82,18.72,18.75)
ace.con <- factor(c(rep('low',length(per.c14.low)), rep('medium',length(per.c14.med)), rep('high',length(per.c14.high))))
per.c14 <- c(per.c14.low, per.c14.med, per.c14.high)
reg <- lm(per.c14 ~ ace.con)

anova(reg)

##### Pg#14.1
pchisq(3.698,df=3,lower.tail = FALSE)
##### Pg#14.13
pchisq(18.709,df=4,lower.tail = FALSE)
