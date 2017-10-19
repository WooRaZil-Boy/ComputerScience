pnorm(2,0,1) #pnorm(x, mu, sd) : 뮤를 0, sd를 1로 하면 정규 분포.  P(X ≤ x) : (probability norm)
qnorm(0.9772499,0,1) #qnorm(alpha, mu, sd) : alpha = P(X ≤ x)를 만족하는 x : (quantile norm)

#central limit theorem
x=floor(runif(2500, 0, 10)) #runinf(random uniform : 랜덤 균일분포). 0과 10 사이에서 2500개
hist(x)
mean(x) #E(X) = 4.5와 유사
sd(x) #sd(X) = 2.87와 유사

y=array(x, c(500, 5)) #2500개의 정수를 크기가 5인 벡터 500개 생성
xbar=apply(y, 1, mean) #크기 5인 표본에서 표본평균을 구하여 500개의 표본평균 생성
hist(xbar)
mean(xbar) #표본평균의 기대값으로 E(X) = 4.5와 유사
sd(xbar) #표본평균의 표준편차로 sd(X)/sqrt(5) = 1.28와 유사



