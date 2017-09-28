�� ���ǳ�Ʈ�� KMOOC���� - "R�� �̿��� ����� ����" - �� ���Ǵ� R code�� 
�������� ������ ���Դϴ�.  �� ��Ʈ�� �� ���¸� �����ϴ� �л����� ȿ���� �н��� 
���� �뵵�� ���ߵǾ����� �����Դϴ�.  �� ���� �̿��� ����� �뵵�� ����Ͻ� �� 
�����ϴ�. 

2017�� �λ���б� ����а� ���� �����


1.3 R ����

1.3.1 R ��ġ�ϱ�

 (1) go to the site called CRAN (Comprehensive R Archive Networks) 

       http://www.r-project.org/

   (2) execute "Download R"

   (3) choose Korea  http://cran.nexr.com/

   (4) click "Download for R Windows"

   (5) click "base"

   (6) click ��Download R 3.3.1 for Windows��


1.3.2 R ����

A. ������ ��

(1) case sensitive

(2) commands are separated by ; or newline

(3) comments can be put anywhere starting with #

(4) subsequent commands are made by +


B. ���� ��� (Inbuilt facilities)

(1) help, example, demo

help(solve) 
	# solve ��� ���ɾ� ������ ���� ����#

example(solve) 	
	# solve ��� ���ɾ ���� ����#

demo(persp) 

	# persp ��� ���ɾ ���� ����#

	
(2) data

data()
	# ����Ǿ� �ִ� �ڷ������� �ҷ��� �� ����#

	- women (height, weight, n=15)

	- stackloss (Air.Flow, Water.Temp, Acid.Conc., stack.loss, n=21)

	- faithful (eruptions, waiting, n=272)

	- sleep (extra, group, n=20)

	# data files in the package "faraway" #
	
	- coagulation (coag, diet)


   (3) libraries

	- Some useful libraries in R

		- lattice : lattice graphics
		- MASS : Modern Applied Statistics using S-Plus
		- mgcv : generalized additive models
		- nlme : mixed effects models
		- nnet : neural networks and multinomial log-linear models
		- spatial : spatial statistics
		- survival : survival analysis

	- To see contents of "survival" library, for example, type
		
		library(help=survival)


   (4) packages

	You can install packages using "install packages".

	You have to open "library" to use packages.

	e.g.) packages -> install packages -> choice of country -> 
            download "lars" -> library(lars) -> ?lars

   (5) data editing

	To use a "bacteria" dataset in the "MASS" library, type

		library(MASS); attach(bacteria); bacteria


C. Simple Manipulations; Numbers and Vectors

2.1 Vectors and assignment

x <- c(10.4, 5.6, 3.1, 6.4, 21.7)

assign("x", c(10.4, 5.6, 3.1, 6.4, 21.7))


c(10.4, 5.6, 3.1, 6.4, 21.7) -> x

1/x

y <- c(x, 0, x); y


2.2 Vector arithmetic

15/7 : real

15%/%7 : integer part

15%%7 : remainder part


sum((x-mean(x))^2)/(length(x)-1)

var(x)

sqrt(-17) : NaN (not a number)


2.3 Generating regular sequences

1:30 ; c(1:30); t <-c(1:30)

s3 <- seq(-5, 5, by=.2); s3

s4 <- seq(length=51, from=-5, by=.2) ; s4

s5 <- rep(x, times=5); s5

s6 <- rep(x, each=5); s6





R�� ����Ǿ� �ִ� �ڷ� �� ���¿��� �̿��� �ڷ�

faithful 
�ڷἳ�� : �̱� Yellowstone ������������ �ִ� ���� ����õ �߿��� 
          Old Faithful Geyser ���� ������ �ڷ�μ� 
          2���� ������ 272���� ����ġ�� ����
���� : eruptions (����ð� (����:��)) 
      waiting (���� ����� �������� �ð� (����:��))

stackloss
�ڷἳ�� : � ȭ�а������� ���� ȯ�溯ȭ�� ���� �ϸ�Ͼ��� ��ȭ������ ������ 
          �ڷ�� 4���� ������ 21���� ����ġ�� ����
���� : Air.Flow (���� ���Է�)
      Water.Temp (���� �µ�)
      Acid.Conc (���ҳ�)
      stack.loss (�ϸ�Ͼ� ��ȭ����)



2.2 ǥ�� �׷���
(1) �����ڷ�
���� : �ĺ� A, B, C�� ���� 2,800���� ��ǥ�� ��� 
	A : 1520ǥ, B : 770ǥ, C: 510ǥ
���� ����ǥ (frequency table)

R code

a <- rep("A", 1520) ; a
b <- rep(��B��,770) ; b
c <- rep(��C��,510) ; c 
x <- c(a,b,c) ;x
table(x)
y <- as.matrix(table(x)) ;y
freq <- y[,1] ; freq
relative_freq <- freq/sum(y)
z <- cbind(freq, relative_freq) ;z

���� íƮ (pie chart)
x <- c(1520, 770, 510) ;x
lab <- c(��A��, ��B��, ��C��) ; lab
y <- round(x/sum(x)*100, digits=1) ; y
w <- paste(lab, ��(��, y, ��%��, ��)��) ;w
pie(x, labels=w, main=������íƮ��)


���� : 30�������� �̷���� ���������� �� �������� ������ ����

x <- c(1,1,1,3,0,0,1,1,1,0,2,2,0,0,0,1,2,1,2,0,0,1,6,4,3,3,1,2,4,0) ;x
y <- as.matrix(table(x)) ;y
freq <- y[,1]; freq
rel_freq <- freq/sum(freq); rel_freq
csum <- cumsum(freq); csum
c_rel_freq <- csum/sum(freq)
z <- cbind(freq, rel_freq, csum, c_rel_freq) ;z

������׷� (histogram)
data()
hist(faithful$waiting)

�ٱ�-�� �׸� (stem-and-leaf plot)

stem(faithful$waiting)

2.3 �߽ɰ� ���� ����

data()
x <- stackloss$stack.loss ;x

mean(x)
var(x)
sd(x)
quantile(x, c(0.1,0.25,0.5,0.95))
fivenum(x)
summary(x)
boxplot(x)


2.4 �̺��� �ڷ�� ������

x <- faithful$eruptions
y <- faithful$waiting
plot(x,y)
cor(x,y)




4.4.2 ǥ�����Ժ���

���Ժ���ǥ�� �̿�


X ~ N(mu,sigma^2) �� ��,

pnorm(x, mu, sigma) = P(X <= x)

qnorm(��, mu, sigma) : alpha=P(X<=x)�� �����ϴ� x
 
pnorm(2,0,1)
qnorm(0.05, 0,1)




4.5.3 �߽ɱ�������


x=floor(runif(2500,0,10)); x  
    # 0���� 9������ ������ ���Ϻ����� 2,500�� ����

hist(x)
mean(x)  # E(X) = 4.5�� ������
sd(x)  # s.d.(X)= 2.87�� ������


y = array (x, c(500,5)) ;y  
# 2,500���� ������ ũ�Ⱑ 5�� ���� 500���� ����

xbar = apply(y,1,mean); xbar
    # ũ�� 5�� ǥ������ ǥ������� ���Ͽ� 500���� ǥ����� ���� 

hist(xbar)
mean(xbar)  # ǥ������� ������� E(X) = 4.5�� ������
sd(xbar)  # ǥ������� ǥ�������μ� s.d.(X) /��(5 )= 1.28�� ������

4.5.5 ����Ȯ���� �� Q-Q plot

x <- rnorm(20, 5, 3); x
qqnorm(x)



6.2 ���� ��ǥ�� ���� II ? ���Ը�����  
 
A <- c(79.98, 80.04, 80.02, 80.04, 80.03, 80.03, 80.04, 79.97,
       80.05, 80.03, 80.02, 80.00, 80.02) ;A

B <- c(80.02, 79.94, 79.98, 79.97, 79.97, 80.03, 79.95, 79.97);B

boxplot(A,B) 

t.test(A,B, var.equal=T) 
	# usual two-sample t-test
t.test(A,B) 
	#Welch's two sample t-test (assuming unequal variances)
t.test(A,B, var.equal=F) 
	#Welch's two sample t-test (assuming unequal variances)


6.3 ��ü�� (Matched Pair Comparisons)

x <- c(70, 80, 72, 76, 76, 76, 72, 78, 82, 64, 74, 92, 74, 68, 84)
y <- c(68, 72, 62, 70, 58, 66, 68, 52, 64, 72, 74, 60, 74, 72, 74)

# Method I
t.test (x,y, paired=T, conf.level=0.95)

#Method II
d <- x-y
t.test(d)


6.4 �� ������� �� (Comparisons Between Two Population Proportions)

# ������ 1 : ����Ƚ�� , ����Ƚ�� 
# ������ 2 : ����Ƚ�� , ����Ƚ�� 

prop.test (x=c(88,126), n=c(100,150))


7.4 ȸ�͸����� ���յ�

x <- c(3, 3,  4, 5,  6,  6,  7,  8,  8,  9)
y <- c(9, 5, 12, 9, 14, 16, 22, 18, 24, 22)
plot(x,y) 

cor(x,y)

# �ܼ�����ȸ�͸����� ����
fit <- lm(y~x)
summary(fit)
# �� ����ġ�� ������ �˰� ���� ��
resid (fit)
rr <- y - fitted(fit); rr

# ȸ�Ͱ���� �˰� ���� ��
coef(fit)
fit$coefficients

# ȸ�Ͱ���� �ŷڱ���
confint(fit, level=0.95)

# ȸ�͸����� ANOVA
anova(fit)

#�������� ȸ�������� ���ÿ� �׸��� ���� ��
plot(x,y)
abline(fit)


# R�� �̿��Ͽ� 2���� ��鿡�� �׸� �׸��� 

data()
faithful
x <- faithful$eruption
y <- faithful$waiting

plot(x,y)
plot(x,y, xlab=��eruption��, ylab=��waiting��, main=��faithful data��, xlim=c(0, 7), ylim=c(30,100))

x1 <- x[1:136]; x1
x2 <- x[137:272]; x2
y1 <- y[1:136] ; y1
y2 <- y[137:272] ; y2

plot(c(x1,x2), c(y1,y2), type="n")
points(x1, y1, col="red")
points(x2, y2, col="blue")
abline(lm(y1~x1))
abline(lm(y2~x2))
abline(lm(y~x))


7.5 ���߼���ȸ�͸��� (Multiple Linear Regression Model)

data()
stackloss

y <- stackloss$stack.loss ; y
x1 <- stackloss$Air.Flow ; x1
x2 <- stackloss$Water.Temp ; x2
x3 <- stackloss$Acid.Conc. ; x3
X <-cbind(x1,x2,x3) ; X

pairs(X) # pairwise scatterplot matrix of covariates

stackfit <- lm(y ~ x1 + x2 + x3)  # model fitting

plot(stackfit) # 4 basic plots 
			- residual vs fitted
			- normal qq plot
			- standardized residual vs fitted
			- Cook's distance

summary(stackfit) # basic estimation results

anova(stackfit) # analysis of variance table

deviance(stackfit) # RSS

deviance(lm(y~1))  # SST

residuals(stackfit) # y - y^hat

vcov(stackfit) # variance-covariance matrix for beta^hat

coef(stackfit) # beta^hat

step(stackfit) # stepwise regression with AIC


8. ������ �ڷ��� �м� (Analysis of Categorical Data)

8.2
x<-matrix(c(773,231,238,59),nrow=1,ncol=4); x
chi<-chisq.test(x,p=c(9/16,3/16,3/16,1/16)); chi

chi$observed
chi$expected
chi$residuals


8.3
x<-matrix(c(31,17,109,122),nc=2); x
chi<-chisq.test(x,correct=FALSE); chi

chi$observed
chi$expected
sum((chi$observed-chi$expected)^2/chi$expected)
chi$statistic


#����ǥ
x<-c(31,17,109,122)

group<-gl(2,1,4,labels=c("case","control")); group

infection<-gl(2,2,labels=c("yes","no")); infection

table<-xtabs(x~group+infection); table

chisq.test(table,correct = FALSE)


8.4
x<-c(5,5,3,7,15,23,17,17)
cholesterol<-gl(2,4,labels=c("220�̸�","220�̻�")); cholesterol

bloodpressure<-gl(4,1,8,labels=c("127�̸�","127~146","146~166","166�̻�")); bloodpressure

table<-xtabs(x~cholesterol+bloodpressure); table
chisq.test(table)



9. �л�м� (Analysis of Variance)

9.2

#�Ͽ���ġ �л�м�(oneway.test)

a<-c(64,72,68,77,56,95)
b<-c(78,91,97,82,85,77)
c<-c(75,93,78,71,63,76)
d<-c(55,66,49,64,70,68)

data<-data.frame(a,b,c,d); data

data.stack<-stack(data); data.stack

oneway.test(values~ind, data=data.stack, var.equal=T)
boxplot(values~ind, data=data.stack)

#�Ͽ���ġ �л�м�(aov)
type<-c("a","a","a","a","a","a","b","b","b","b","b","b","c","c","c","c","c","c","d","d","d","d","d","d")
y<-c(64,72,68,77,56,95,78,91,97,82,85,77,75,93,78,71,63,76,55,66,49,64,70,68)

type.factor<-as.factor(type); type.factor
data.aov<-aov(y~type.factor); data.aov
summary(data.aov)



9.3

type<-c("a","a","a","b","b","b","c","c")
y<-c(92.4,91.6,92.8,91.3,91.0,91.7,93.1,93.5)
type.factor<-as.factor(type)
data.aov<-aov(y~type.factor)
summary(data.aov)
boxplot(y~type.factor)


#���� t-�ŷڱ���
t<-qt(1-(0.05/(2*3)),8-3); t
c((92.267-91.333)-t*0.464*sqrt(1/3+1/3),(92.267-91.333)+t*0.464*sqrt(1/3+1/3))
c((92.267-93.300)-t*0.464*sqrt(1/3+1/2),(92.267-93.300)+t*0.464*sqrt(1/3+1/2))
c((91.333-93.300)-t*0.464*sqrt(1/3+1/2),(91.333-93.300)+t*0.464*sqrt(1/3+1/2))


#�����ŷڱ���
t<-qt(1-(0.05/2),8-3); t

c((92.267-91.333)-t*0.464*sqrt(1/3+1/3),(92.267-91.333)+t*0.464*sqrt(1/3+1/3))
c((92.267-93.300)-t*0.464*sqrt(1/3+1/2),(92.267-93.300)+t*0.464*sqrt(1/3+1/2))
c((91.333-93.300)-t*0.464*sqrt(1/3+1/2),(91.333-93.300)+t*0.464*sqrt(1/3+1/2))



10. ���� ����� (Nonparametric Statistics)

10.1

a<-c(31.8,39.1)
b<-c(35.5,27.6,21.3)
test<-wilcox.test(a,b,alternative="greater",correct=FALSE); test


10.2

a<-c(16.4,10.3,15.8,16.5,12.5,8.3,12.1,10.1,12.9,12.6,17.3,9.4)
length(a)
b<-c(14.3,9.8,16.9,17.2,10.5,7.9,12.4,8.6,13.1,11.6,15.5,8.6)
length(b)
t<-62
n<-12
z<-(t-n*(n+1)/4)/sqrt(n*(n+1)*(2*n+1)/24); z
pnorm(z,lower.tail=FALSE)

#��ȣ��������
wilcox.test(a,b,alternative="greater",paired=TRUE)


10.3

x<-c(6,9,2,8,5)
y<-c(8,10,4,7,3)
cor.test(x,y,method="spearman")

binom.test(3,5,alternative="greater")


��� �� ����

two sample test

t.test # Student��s t test (comparing two means with normal errors)
prop.test  # binomial test (comparing two proportions)
var.test # Fisher��s F test (comparing two variances with normal errors)
wilcox.test # Wilcoxon rank test (comparing two means with non-normal errors)

11. ���ǽ���� ����� �ٻ�

#����ī���� ������� pi ����ϱ�

N <- c(100, 500, 1000, 10000, 100000, 1000000)
pi_hat <- 0

for(i in 1: length(N)){
n <- N[i]
U1 <- runif(n,0,1)
U2 <- runif(n,0,1)
radius <- 1

	result <- ifelse(U1^2+U2^2 < 1, 1, 0)
	theta <- seq(0,pi/2,length=361)
	col <- ifelse(result == 1,4,2)

plot(U1 ,U2,col=col ,xlim=c(0,1) ,ylim=c(0,1),xlab="X",ylab="Y")
lines(x = radius * cos(theta), y = radius * sin(theta))

pi_hat[i] <- 4*mean(result)
}

(rbind(N,pi_hat))

#����ī���� �������� pi ����ϱ�

g <- function(x) sqrt(1-x^2)
N <- c(100, 500, 1000, 10000, 100000, 1000000)
result <- 0

for(i in 1 : length(N)) {

n <- N[i]
U <- runif(n,0,1)
result[i] <- 4*mean(g(U))

}

result


# ��ư-���� �ݺ���


l_deriv <- function(theta){
n <- length(X) 
y <- sum(log(X))- n*psigamma(theta)
}
# psigamma(theta) : gamma(theta)'/gamma(theta)

# theta�� ���� ǥ�� ����
X <- rgamma(100,10,1)



# Newton-Raphson iteration
h <- 1e-07
e <- 1e-07
theta_pre = 0
theta_new = 0.1
t=0
process <- cbind(t=0,theta_pre=0,theta_new=0.1,diff=0.1)
while(abs(theta_new-theta_pre)>=e){
theta_pre <- theta_new
l_deriv2 <- (l_deriv(theta_pre+h)-l_deriv(theta_pre))/h
theta_new <- theta_pre -l_deriv(theta_pre)/l_deriv2
t=t+1
process <- rbind(process,data.frame(t=round(t,1),theta_pre=theta_pre,theta_new=theta_new,diff=abs(theta_new-theta_pre)))
}
process






