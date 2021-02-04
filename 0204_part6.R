library(dplyr)
library(ggplot2)

midwest = as.data.frame(ggplot2::midwest)
midwest= rename(midwest, total =poptotal,asian = popasian)
midwest
midwest$ratio = midwest$asian/midwest$total*100
hist(midwest$ratio)
midwest$group = ifelse(midwest$ratio > mean(midwest$ratio), "large","small")

table(midwest$group)

library(ggplot2)
qplot(midwest$group)
library(dplyr)
exam = read.csv("./teacher/Data/csv_exam.csv", fileEncoding = "euc-kr")
exam

exam %>% filter(class==1)
exam %>% filter(class ==3 |class ==5|class ==1)
exam %>% filter(class %in% c(1,3,5))

class1 = exam %>% filter(class ==1)

class2 = exam %>% filter(class ==2)

mean(class1$math)

mpg = as.data.frame(ggplot2::mpg)
mpg
filter(mpg$displ)
car1 = mpg %>% filter(mpg$displ <=4 )
car2 = mpg %>% filter(mpg$displ >=5 )


exam
exam %>% select(math,class,-english)
exam %>% filter(class ==1) %>%  select(english)
exam %>%  select(id,mat) %>% head
