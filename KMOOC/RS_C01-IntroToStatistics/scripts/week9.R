A <- c(79.98, 80.04, 80.02, 80.04, 80.03, 80.03, 80.04, 79.97,
       80.05, 80.03, 80.02, 80.00, 80.02)
length(A)

B <- c(80.02, 79.94, 79.98, 79.97, 79.97, 80.03, 79.95, 79.97)
length(B)

boxplot(A,B) 
t.test(A,B) #Welch's two sample t-test (assuming unequal variances)
t.test(A,B, var.equal=F) #Welch's two sample t-test (assuming unequal variances)
t.test(A,B, var.equal=T) # usual two-sample t-test


#쌍체 비교
x <- c(70, 80, 72, 76, 76, 76, 72, 78, 82, 64, 74, 92, 74, 68, 84)
y <- c(68, 72, 62, 70, 58, 66, 68, 52, 64, 72, 74, 60, 74, 72, 74)

# Method I
t.test (x,y, paired=T, conf.level=0.95)

#Method II
d <- x-y
t.test(d)

## 두 모비율의 비교
prop.test (x=c(88,126), n=c(100,150)) 
#100번 중 88번 성공, 150번 중 126번 성공

prop.test(x=c(110, 90), n=c(200, 200))
