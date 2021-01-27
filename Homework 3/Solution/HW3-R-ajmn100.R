setwd("C:/Users/Mvami N. Jonalex/Google Drive/WIU - Mathematics/2.WIU - Spring 2018/Stat 553 - Applied Statistical Methods - Dr Beth Hansen/HW/Homework 3")
house_price<-read.table('houseprice.txt')
house_price
house_price<-unlist(house_price, use.names = FALSE)
house_price
mean_price<-mean(house_price)
mean_price
var_price<-var(house_price)
var_price
min_price<-min(house_price)
min_price
max_price<-max(house_price)
max_price
n<-length(house_price)
num<-(sum((house_price-mean_price)^4))/n
den<-((sum((house_price-mean_price)^2))/n)^2
kurtosis_price<-num/den
kurtosis_price
3-kurtosis_price
