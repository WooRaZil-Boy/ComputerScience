## 점추정

통계적 추론(Statistical Inferences) :  모집단으로부터 표본을 추출하여 모집단의 특성을 나타내는 모수 (알려져 있지 않은 상수)에 대한 여러 가지 정보를 얻기 위한 일련의 과정

통계적 추론 = 추정(estimation) + 가설검정 (test of hypotheses)

추정(estimation)
- 점 추정 (point estimation)
- 구간 추정 (interval estimation)

![week6_1.png](week6_1.png)

#### 모평균 𝝁에 대한 점 추정치 X bar의 성질

![week6_2.png](week6_2.png)


#### 모분산 𝝈제곱에 대한 점 추정치 s제곱의 성질

![week6_3.png](week6_3.png)

#### 모비율 𝒑에 대한 점 추정치 𝒑 hat의 성질

![week6_4.png](week6_4.png)

## 구간추정 1 대표본

![week6_5.png](week6_5.png)     
** 참고 : 𝜶는 신뢰수준 (level of confidence)이라 하며, 흔히 0.01, 0.05, 또는 0.1의 값을 가진다.    
𝛼 = 0.01 ⇒ 99% 신뢰구간      
𝛼 = 0.05 ⇒ 95% 신뢰구간      
𝛼 = 0.10 ⇒ 90% 신뢰구간     

![week6_6.png](week6_6.png)    

#### 모평균 𝝁에 대한 𝟏𝟎𝟎(𝟏−𝜶)% 신뢰구간

![week6_7.png](week6_7.png)      
![week6_8.png](week6_8.png)     
![week6_9.png](week6_9.png)     

#### 모비율 𝒑에 대한 𝟏𝟎𝟎(𝟏−𝒑)% 신뢰구간

![week6_10.png](week6_10.png)     
![week6_11.png](week6_11.png)     
![week6_12.png](week6_12.png)     
![week6_13.png](week6_13.png)     

## 구간추정 2 정규모집단

정규분포를 따른다고 가정할 수 있을 때의 구간 추정

![week6_14.png](week6_14.png)     


#### Student’s t-분포

![week6_15.png](week6_15.png)       
표본분산인 경우, 1개의 자유도를 잃게 된다.
왜냐하면 표본분산을 계산 할 때 Xi에 표본평균을 빼서 제곱하는데, 표본분산을 계산하기 위해서는 n개의 값으로부터 표본평균이라는 값이 주어져야 계산을 할 수 있다. 즉 표본평균을 계산하는데 1개의 자유도를 잃게 된다. 따라서 이런 제약조건 때문에 1이라는 제약조건의 개수를 빼준 n-1로 나누어준 것.

#### 정규모집단에서 모평균 𝝁에 대한 𝟏𝟎𝟎(𝟏−𝜶)% 신뢰구간

![week6_16.png](week6_16.png)      

- t : 0에 대하여 대칭   
- d.f가 커지면 N(0, 1) (표준정규분포)에 가까워 진다.
- t분포의 꼬리는 N(0, 1) (표준정규분포)보다 더 두껍다. (t-분포는 heavy-tailed distribution)

![week6_17.png](week6_17.png)      

![week6_18.png](week6_18.png)      
![week6_19.png](week6_19.png)      
