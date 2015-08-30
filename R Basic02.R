
####資料整備與設定
#install.packages("ggplot2")
rm()  #清除所有物件 
data(iris)
library(graphics)
library(ggplot2)

setwd("d:/Rdata Practice/R BasicLab") #設定工作區

################[第五部份].劃圖

#5-1.Simple Plots-Bar plot
x=sample(1:150,50) #從1~150中隨機挑選50個數字
plot(iris[x,5])

y=table(iris[x,5])
barplot(y,horiz=TRUE,las=1)

#5-2.Simple Plots-Pie
pie(y)

#5-3.Simple Plots-Scatter Plot
plot(iris[,3:4])
plot(Petal.Width~Petal.Length,data=iris)

plot(iris[,1:3])
plot(~Sepal.Length+Sepal.Width+Petal.Length,data=iris)

#5-4.Simple Plots-Box plot
plot(iris[,5],iris[,1])

boxplot(iris[,1]~iris[,5])
boxplot(Sepal.Length~Species,data=iris)

boxplot(iris[,1:2])

#5-5.Simple Plots-Histgram
hist(iris[, 1], breaks = 4)


#5-6.如果我想要畫很多張圖在一個頁面上
par(mfrow=c(2,2))
plot(iris[x,5])
plot(Petal.Width~Petal.Length,data=iris)
boxplot(Sepal.Length~Species,data=iris)
hist(iris[, 1], breaks = 4)

dev.off()#把圖型清除

################[第六部份].R-Markdown

