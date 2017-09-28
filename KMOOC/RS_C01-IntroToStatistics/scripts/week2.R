########## 2-1 ##########
#####frequency table
a <- rep("A", 1520)
b <- rep("B", 770)
c <- rep("C", 510)
x <- c(a, b, c) #vector
table(x)

y <- as.matrix(table(x))
freq = y[,1]
relative_freq <- freq/sum(y)
relative_freq
z <- cbind(freq, relative_freq) #column bind
z




#####pie chart
x <- c(1520, 770, 510)
y <- round(x/sum(x)*100, digits=1) #digits : 소수점 첫째자리에서 반올림
y

lab <- c("A", "B", "C")
lab

w <- paste(lab, "(", y, "%", ")") #paste : 붙여넣기
w

pie(x, labels = w, main = "pie chart")



#####Excercise
x <- c(1, 1, 1, 3, 0, 0, 1, 1, 1, 0, 2, 2, 0, 0, 0, 1, 2, 1, 2, 0, 0, 1, 6, 4, 3, 3, 1, 2, 4, 0)
y <- as.matrix(table(x))
y

freq = y[,1]
freq

rel_freq <- freq/sum(freq)
rel_freq

csum = cumsum(freq) #누적합
csum

c_rel_freq = csum/sum(freq) #누적 상대도수
c_rel_freq

z <- cbind(freq, rel_freq, csum, c_rel_freq)
z



#####histogram
data() #load default data
hist(faithful$waiting) #자료명$변수명
#계급의 개수는 10개 내외(10 ~ 20)가 적절하다.



###### stem-and-leaf plot
stem(faithful$waiting)


########## 2-2 ##########
x <- stackloss$stack.loss
x

mean(x)
var(x)
sd(x)

s <- sort(x)
s

length(x)
quantile(x, c(0.1, 0.25, 0.5, 0.95)) #백분위수
fivenum(x) #min, Q1, Q2, Q3, max
summary(x)
boxplot(x) #range = 1.5 (default)
boxplot(x, range = 0) #deleted whisker
boxplot(x, range = 1.0)



########## 2-3 ##########
x <- faithful$eruptions
y <- faithful$waiting
plot(x, y) #scatter plot
cor(x, y) #sample correlation