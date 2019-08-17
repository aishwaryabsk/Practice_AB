approx_pi <- function(n){

dx <- seq(-1,1,length.out = 1000)
dy <- sqrt(1-x^2)
plot(x, y , type='l', lwd=3)


n <- 10000000000000
dx <- runif(n, min = -1, max = 1)
dy <- runif(n, min = 0, max = 1)

ix <- which( sqrt(1-dy^2) > abs(dx))
#the Smart way to do this is use ix 
#in_circle <- which(dx^2 + dy^2 < 1)


points(dx[ix], dy[ix], col='green', pch=20)
points(dx[-ix], dy[-ix], col='orange', pch=20)

in_circle <- length(ix)/n
  
pi <- 4* (in_circle)
  
return(pi)
}

approximate_pi(darts=1000)
approximate_pi(darts=10000)
#added some tests for you. Loren L.

