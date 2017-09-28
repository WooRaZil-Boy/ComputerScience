x <- c(10.4, 5.6, 3.1, 6.4, 21.7) #vector
assign("x", c(10.4, 5.6, 3.1, 6.4, 21.7)) #same as first line
c(10.4, 5.6, 3.1, 6.4, 21.7) -> x

1/x

y <- c(x, 0, x); y

15/7 #real
15%/%7 #integer part
15%%7 #remainder part

sum((x-mean(x))^2)/(length(x)-1) #분산
var(x) #분산
sqrt(-17) #NaN (not a number)



1:30 ; c(1:30); t <-c(1:30)
s3 <- seq(-5, 5, by=.2); s3
s4 <- seq(length=51, from=-5, by=.2) ; s4
s5 <- rep(x, times=5); s5
s6 <- rep(x, each=5); s6