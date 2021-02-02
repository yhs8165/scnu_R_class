city = c("서울","부산","대구","인천","광주","대전","울산")
pm25 = c(14    ,   9  ,  11  ,  13   ,  11  ,  9   ,  8)
lat = c(37.56793, 35.18, 35.87705, 37.45773, 35.16033, 36.35057, 35.53987)
lon = c(126.9781, 129.075, 128.6007, 126.7022, 126.8514, 127.3848, 129.3115)

plot(x=lon, y=lat,pch=19,cex=pm25*0.3, col=rgb(1,0,0,0.3),xlim=c(123, 133),ylim=c(34.5,38.5),xlab="경도",ylab="위도")
text(x=lon, y=lat, labels=city)


install.packages("readxl")
library(readxl)
test = read_excel("./teacher/Data/excel_exam.xlsx")
View(test)
