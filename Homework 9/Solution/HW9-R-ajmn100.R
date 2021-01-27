# Pg573#11.3
x<-c(-2.0,-1.0,0.0,1.0,2.0)
y<-c(3.0,2.0,1.0,1.0,0.5)
plot(x,y,xlim = range(-3:3),ylim = range(-1:4))

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

# Pg593#11.38

limitx<-c(-2,0,2)
upperlimity<-c(3.3647,1.8842,0.9647)
lowerlimity<-c(2.0353,1.1158,-0.3647)
lines(limitx,upperlimity,type = "o",col="red",lty=3)
lines(limitx,lowerlimity,type = "o",col="red",lty=3)


# Pg614#11.68
x1<-c(-3,-2,-1,0,1,2,3)
x2<-x1^2

X<-cbind(1,x1,x2)
Y<-c(1,0,0,-1,-1,0,0)

plot(x1,Y)

B<-solve(crossprod(X))%*%crossprod(X,Y)

# Plot of the least-squares line.
lines(x1,B[1]+B[2]*x1+B[3]*x2,type="l")

