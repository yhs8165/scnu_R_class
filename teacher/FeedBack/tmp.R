a<-1:5
b <- 6:3
b <- seq(1,10,length.out=4)
b
install.packages("readxl")
library(readxl)
data <- read_excel("test.xlsx")
View(data)
data <- read_excel("./data/excel_exam.xlsx", sheet=2)
data
data <- read_excel("./data/excel_exam.xlsx", sheet=2, col_names = F)
data
datacsv <- read.csv("./data/csv_exam.csv")
datacsv
class(datacsv$sex)
datacsv <- read.csv("./data/csv_exam.csv", stringsAsFactors = F)
datacsv
class(datacsv$sex)
