df=read.csv("datasets/mobile_sales (1).csv")
library(dplyr)
head(select(df,Date,MobileModel))