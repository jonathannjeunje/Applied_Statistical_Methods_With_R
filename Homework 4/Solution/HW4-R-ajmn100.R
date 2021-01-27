#1.If X is Binomial (n = 100, p = 0.3)
  #P(X = 39)
    dbinom(39,100,0.3)
  #P(X >= 25) = 1 - P(X <= 24)
    1 - pbinom(24,100,0.3) 
#2.If X is Beta (a = 5, b = 3)
  #P(0.4 <= X <= 0.5)
    pbeta(0.5,5,3) - pbeta(0.4,5,3)
  #The value of k such that P(X <= k) = 0.7
    qbeta(0.7,5,3)
#3.
  #histogram of 100 random numbers taken from a gamma distribution with a = 2 and b = 5
    hist(rgamma(100,shape=2,scale=5), main='100 random values from Gamma(2,5)', xlab = 'x', ylab = 'y')
    