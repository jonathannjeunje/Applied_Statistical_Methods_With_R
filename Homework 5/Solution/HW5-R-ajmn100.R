#Page 430 #8.81
  Cap_len <- c(78,66,65,63,60,60,58,56,52,50)
  qqnorm(Cap_len)
  qqline(Cap_len)
  #We assume normal approximation
  
  n <- length(Cap_len); n
  u <- mean(Cap_len); u  
  s <- sd(Cap_len); s
  
  #95% CI 
  #Here the variance is unknoown for all lobsters.
  q <- qt(1-0.025,n-1); q
  
  CImax <- u + q*(s/sqrt(n)); CImax
  CImin <- u - q*(s/sqrt(n)); CImin
  

#Page 431 #8.83
  #a) Under the resting condition, we have
    u_r <- 14.5; s_r <- 3.92; n_r <- 10
    u_c <- 11.1; s_c <- 3.98; n_c <- 10
    
    #95% CI 
    q <- qt(1-(1-.95)/2, n_r+n_c-2); q
    
    sp2 <- ((n_r-1)*(s_r^2)+(n_c-1)*(s_c^2))/(n_r+n_c-2); sp2
    
    CI1 <- u_r - u_c - q * sqrt(sp2*(1/n_r + 1/n_c)); CI1
    CI2 <- u_r - u_c + q * sqrt(sp2*(1/n_r + 1/n_c)); CI2
    
  #b) At 80% of maximal oxygen (O2) consumption, we have
    u_r <- 12.2; s_r <- 3.49; n_r <- 10
    u_c <- 11.5; s_c <- 4.95; n_c <- 10
    
    #90% CI
    vr <- (s_r^2)/n_r; vc <- (s_c^2)/n_c
    v <- ((vr + vc)^2)/(((vr)^2)/(n_r-1) + ((vc)^2)/(n_c-1)); v
    v <- floor(v); v #Round down

    q <- qt(1-(1-.90)/2, v); q
    
    sp2 <- ((n_r-1)*(s_r^2)+(n_c-1)*(s_c^2))/(n_r+n_c-2); sp2
    
    CI1 <- u_r - u_c - q * sqrt(sp2*(1/n_r + 1/n_c)); CI1
    CI2 <- u_r - u_c + q * sqrt(sp2*(1/n_r + 1/n_c)); CI2
    
#Page 436 #8.96
    #We have
    Cap_len <- c(78,66,65,63,60,60,58,56,52,50)
    #We assume normality of our distribution.
    n <- length(Cap_len); n
    u <- mean(Cap_len); u  
    s <- sd(Cap_len); s
    #For a CI of 90% of our pop. Variance:
    alpha <- 1-.90
    CImin <- ((n-1)*s^2)/qchisq(1-alpha/2,n-1); CImin
    CImax <- ((n-1)*s^2)/qchisq(alpha/2,n-1); CImax
    
    
    
    