### 일표본(One sample) t-test ###
library(psych)
# two-sided test: alternative = c("two.sided")
# right-sided test: alternative = c("greater")
# left-sided test : alternative = c("less")

#01. 데이터 불러오기
height <- read.csv("c:/height", header = TRUE, na.strings = ".")
str(height)
height<-round(height,2) #소수점 2자리로 반올림

# 02. 기봍통계치 확인 : describe(psych패키지 이용)

attach(height) # 객체연결 (attach -> detach) 얘 쓰면 앞으로 ost4weight대신 그냥 weight할 수 O

install.packages("psych")
library(psych)
describe(height)

# 03. 그래프 그리기(박스그래프, 히스토그램)

opar <- par(no.readonly = TRUE) # 디폴트 par 값을 미리 할당 --> par(opar)
par(mfrow = c(1,2)) #화면 분할
boxplot(height)
hist(height, breaks = 1, col = "red", xlab= "키", ylab = "만 명", ylim = c(0,5), 
     main = "학생 키에 대한 히스토그램 및 정규분포")
par(opar)


# 04. 통계분석
options("scipen" = 20) #지수 표기법 수정 : 2.2e-4 =0.00022

t.test(height, alternative = c("two.sided"), mu = 150, conf.level = 0.95)


# 05. 통계결과 그래프

mu = 150
se =2 #표본이므로 sd대신에 se사용

data <-rnorm(1000, mu, se)
data <-sort(data)
plot(data, dnorm(data, mu, se), type = "l", main = "학생들 키(Mu =150) 검정",
     xlim =c(120, 180))
abline(v = mu, col = "green", lty = 5)
abline(v = mu + 1.96*se, col = "blue", lty=10)
abline(v = mu - 1.96*se, col = "blue", lty=10)
abline(v = 167.6, col = "red", lty =10)


