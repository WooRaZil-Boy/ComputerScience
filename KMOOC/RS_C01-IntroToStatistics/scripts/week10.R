x <- c(3, 3,  4, 5,  6,  6,  7,  8,  8,  9)
y <- c(9, 5, 12, 9, 14, 16, 22, 18, 24, 22)
plot(x,y) 

cor(x,y)

fit <- lm(y~x)
summary(fit)

resid (fit)
rr <- y - fitted(fit); rr

coef(fit)
fit$coefficients

confint(fit, level=0.95)

anova(fit)

plot(x,y)
abline(fit)

## 다중선형회귀모형

data()
faithful
x <- faithful$eruption
y <- faithful$waiting

plot(x,y)
plot(x,y, xlab="eruption", ylab="waiting", main="faithful data", xlim=c(0, 7), ylim=c(30,100))

x1 <- x[1:136]
x2 <- x[137:272]
y1 <- y[1:136] 
y2 <- y[137:272]

plot(c(x1,x2), c(y1,y2), type="n")
points(x1, y1, col="red")
points(x2, y2, col="blue")
abline(lm(y1~x1))
abline(lm(y2~x2))
abline(lm(y~x))