library(readxl)
exam = read.csv("./teacher/Data/csv_exam.csv", fileEncoding = "euc-kr")
View(exam)   #전체 테이터 프레임 보여주기
head(exam)   #앞에서부터 6개 데이터 프레임 보여주기
tail(exam)   #뒤에서부터 6개 데이터 프레임 보여주기
head(exam, 10) # 앞에서부터 원하는 개수만큼 보여주기
tail(exam, 10) # 뒤에서부터 원하는 개수만큼 보여주기

summary(exam) # 요약
max(exam $ math) #변수에서 최대값
min(exam $ english)#변수에서 최소값

install.packages("ggplot2")
mpg = as.data.frame(ggplot2::mpg)
View(mpg)

dim(mpg)

install.packages("dplyr")
library(dplyr)
df_raw = data.frame(var1=c(1,2,3), var2=c(4,5,6))
df_raw
df_new = df_raw
df_new
typeof(df_new)

df_new = rename(df_new, v2=var2)
df_new$var_sum = df_new$var1 + df_new$v2 
df_new$var_sum
df_new
