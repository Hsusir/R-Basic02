
####��ƾ�ƻP�]�w
#install.packages("ggplot2")
rm()  #�M���Ҧ����� 
data(iris)
library(graphics)
library(ggplot2)

setwd("d:/Rdata Practice/R BasicLab") #�]�w�u�@��

################[�Ĥ�����].����

#5-1.Simple Plots-Bar plot
x=sample(1:150,50) #�q1~150���H���D��50�ӼƦr
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


#5-6.�p�G�ڷQ�n�e�ܦh�i�Ϧb�@�ӭ����W
par(mfrow=c(2,2))
plot(iris[x,5])
plot(Petal.Width~Petal.Length,data=iris)
boxplot(Sepal.Length~Species,data=iris)
hist(iris[, 1], breaks = 4)

dev.off()#��ϫ��M��

################[�Ĥ�����].R-Markdown
