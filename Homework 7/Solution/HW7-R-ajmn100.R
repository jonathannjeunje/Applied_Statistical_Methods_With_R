# Pg526#10.65
h<-45;
totTPG<-c(42.89, 53.91, 48.55, 47.90, 47.73, 46.61, 40.45, 39.65, 38.65, 37.95, 36.80, 35.95, 35.09, 35.04, 34.95, 33.45, 28.99, 27.45);

# Test of normality:
qqnorm(totTPG);qqline(totTPG);
# From the plot we conclude normality since, the extremities tend to stay along the overall linear trend.

# Calculation of the Test Statistics, t
n<-length(totTPG);
y<-mean(totTPG);y
s<-sqrt(var(totTPG));s
t<-(y-h)*sqrt(n)/s;t

# Determination of the rejection region
rr<-qt(0.05,n-1);rr

# Calculation of the p-value, p
p<-pt(t,n-1);p


