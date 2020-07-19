#데이터의 유형 : 수치형, 문자형, 논리형, 복수수 형

a1 = 3
a2 = "love"
a3 = TRUE
a4 = 3-2i


is.character(a1)
is.character(a2)

x1 = c(1,"Love", TRUE, 2+3i)
x1

s1 = 10
s2 = "Hello"
s3 = FALSE



v1 = c(1, 3, 5)
v2 = c(10, 30, 50)
v3 = c(v1, v2)
v3


library(ggplot2)

mean(diamonds$price)
mean(diamonds$price, trim = 0.05)
diff(range(diamonds$price))
library(psych)
describe(diamonds)
summary(diamonds)

boxplot(diamonds$price)
by(diamonds$price , diamonds$cut, summary )

describeBy(diamonds$price, diamonds$cut,mat=T)

barplot( table(diamonds$cut , diamonds$color ),
legend.text = levels(diamonds$cut ), args.legend =list(x= "topright"))

barplot(table(diamonds$cut , diamonds$color ), beside=TRUE,
legend.text =levels(diamonds$cut ), args.legend =list(x= "topright"))

plot(diamonds$carat , diamonds$price)

library(ggplot2)
View(diamonds)
plot(diamonds[ , c("x", "y", "z")])
install.packages("corrplot")
library(corrplot)

cor.result = cor(diamonds[, c("x", "y", "z")])
corrplot(cor.result, method = "circle")
corrplot(cor.result, method = "square")
corrplot(cor.result, method = "ellipse")
corrplot(cor.result, method = "number")
corrplot(cor.result, method = "shade")
corrplot(cor.result, method = "color")
corrplot(cor.result, method = "pie")

corrplot.mixed(cor.result)

install.packages("scatterplot3d")
library(scatterplot3d)
scatterplot3d(diamonds$x, diamonds$y, diamonds$z)
install.packages("rgl")
library(rgl)
plot3d(diamonds$x, diamonds$y, diamonds$z)

