###############read csv file
##7Question
df=read.csv("datasets/sample_csv.csv",header = TRUE,sep = ",")
library(dplyr)
df

# read Excel file
library(readxl)
df=read_excel("datasets/sample_xl.xlsx")
df
df[1:3]

# read text file
df=read.table("datasets/sample_txt.txt",header=TRUE,sep=",")
df

############## subsetting 9 Question
df=read.table("datasets/sample_txt.txt",header=TRUE,sep=",")
df[1:3,]  #subsetting by row
#   X0 First.Name Last.Name Gender       Country Age       Date   Id
# 1  1      Dulce     Abril Female United States  32 15/10/2017 1562
# 2  2       Mara Hashimoto Female Great Britain  25 16/08/2016 1582
# 3  3     Philip      Gent   Male        France  36 21/05/2015 2587
df[1:3]  #subsetting by column
df[c("id","first_name","last_name")]
#    X0 First.Name  Last.Name
# 1   1      Dulce      Abril
# 2   2       Mara  Hashimoto
# 3   3     Philip       Gent
# 4   4   Kathleen     Hanner
# 5   5    Nereida    Magwood
# 6   6     Gaston      Brumm
# 7   7       Etta       Hurn
# 8   8    Earlean     Melgar
df=read.table("datasets/sample_txt.txt",header=TRUE,sep=",")
df[1:3,c("id","first_name","last_name")] #subsetting by row and column