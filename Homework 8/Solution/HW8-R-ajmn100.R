# Pg599#11.9
# a)
x<-c(1.8,1.5,2.0,2.5,1.8,2.5,1.6,1.5)
y<-c(51,51,115,150,126,150,118,106)
plot(x,y)

# Preliminary Calcultions
n<-length(x); sx<-sum(x); sy<-sum(y); sxs<-sum(x^2); sys<-sum(y^2); sxy<-sum(x*y)

s_xx<-sxs-n*(sx/n)^2
s_yy<-sys-n*(sy/n)^2
s_xy<-sxy-n*(sx/n)*(sy/n)

B1<-(s_xy)/(s_xx)
B0<-(sy/n)-B1*(sx/n)

# Plot of the least-squares line.
lines(x,B0+B1*x,type="l")

sse<-s_yy-B1*s_xy
ss<-sse/(n-2)

#n;sx;sy;sxs;sys;sxy;s_xx;s_yy;s_xy;B1;B0;sse;ss

