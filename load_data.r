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
df[1:3,]  ##########subsetting by row
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
df[1:3,c("id","first_name","last_name")] #######subsetting by row and column
#     id first_name last_name
# 1 1562      Dulce     Abril
# 2 1582       Mara Hashimoto
# 3 2587     Philip      Gent
df=read.table("datasets/sample_txt.txt",header=TRUE,sep=",")
df[df$age<30,]  ###subsetting using logical conditions
#    X0 first_name last_name gender       country age       date   id
# 2   2       Mara Hashimoto Female Great Britain  25 16/08/2016 1582
# 4   4   Kathleen    Hanner Female United States  25 15/10/2017 3549
# 6   6     Gaston     Brumm   Male United States  24 21/05/2015 2554
# 8   8    Earlean    Melgar Female United States  27 16/08/2016 2456
# 10 10     Fallon   Winward Female Great Britain  28 16/08/2016 5486
# 14 14     Marcel Zabriskie   Male Great Britain  26 21/05/2015 2587
# 16 16   Shavonne       Pia Female        France  24 21/05/2015 1546
# 18 18   Lauralee   Perrine Female Great Britain  28 16/08/2016 6597
# 19 19     Loreta    Curren Female        France  26 21/05/2015 9654
# 25 25     Lester   Prothro   Male        France  21 15/10/2017 6574
# 26 26     Marvel      Hail Female Great Britain  28 16/08/2016 5555
# 27 27    Angelyn      Vong Female United States  29 21/05/2015 6125
# 28 28  Francesca Beaudreau Female        France  23 15/10/2017 5412
# 30 30      Carla  Trumbull Female Great Britain  28 21/05/2015 3264
# 33 33       Jona   Grindle Female Great Britain  26 21/05/2015 6458
# 36 36       Nena    Hacker Female United States  29 15/10/2017 8563
# 37 37     Kelsie   Wachtel Female        France  27 16/08/2016 8642
# 38 38        Sau      Pfau Female United States  25 21/05/2015 9536
# 41 41     Tommie Underdahl   Male United States  26 16/08/2016 3265
# 43 43      Angel     Sanor   Male        France  24 15/10/2017 3259
# 45 45     Weston   Martina   Male United States  26 21/05/2015 6540
# 47 47     Felisa      Cail Female United States  28 16/08/2016 6525
# 50 50   Rasheeda    Alkire Female United States  29 16/08/2016 6125

df=read.table("datasets/sample_tsv.tsv",header = TRUE,sep = "\t")
df
#   sl_no first_name  last_name gender       country age       date   id
# 1      1      Dulce      Abril Female United States  32 15/10/2017 1562
# 2      2       Mara  Hashimoto Female Great Britain  25 16/08/2016 1582
# 3      3     Philip       Gent   Male        France  36 21/05/2015 2587
# 4      4   Kathleen     Hanner Female United States  25 15/10/2017 3549
# 5      5    Nereida    Magwood Female United States  58 16/08/2016 2468
# 6      6     Gaston      Brumm   Male United States  24 21/05/2015 2554
# 7      7       Etta       Hurn Female Great Britain  56 15/10/2017 3598
# 8      8    Earlean     Melgar Female United States  27 16/08/2016 2456
# 9      9   Vincenza    Weiland Female United States  40 21/05/2015 6548
# 10    10     Fallon    Winward Female Great Britain  28 16/08/2016 5486
# 11    11    Arcelia     Bouska Female Great Britain  39 21/05/2015 1258
# 12    12   Franklyn     Unknow   Male        France  38 15/10/2017 2579

dim(df)  #[1] 50  8
head(df)
#   sl_no first_name last_name gender       country age       date   id
# 1     1      Dulce     Abril Female United States  32 15/10/2017 1562
# 2     2       Mara Hashimoto Female Great Britain  25 16/08/2016 1582
# 3     3     Philip      Gent   Male        France  36 21/05/2015 2587
# 4     4   Kathleen    Hanner Female United States  25 15/10/2017 3549
# 5     5    Nereida   Magwood Female United States  58 16/08/2016 2468
# 6     6     Gaston     Brumm   Male United States  24 21/05/2015 2554
str(df)
# 'data.frame':	50 obs. of  8 variables:
#  $ sl_no     : int  1 2 3 4 5 6 7 8 9 10 ...
#  $ first_name: chr  "Dulce" "Mara" "Philip" "Kathleen" ...
#  $ last_name : chr  "Abril" "Hashimoto" "Gent" "Hanner" ...
#  $ gender    : chr  "Female" "Female" "Male" "Female" ...
#  $ country   : chr  "United States" "Great Britain" "France" "United States" ...
#  $ age       : int  32 25 36 25 58 24 56 27 40 28 ...
#  $ date      : chr  "15/10/2017" "16/08/2016" "21/05/2015" "15/10/2017" ...
#  $ id        : int  1562 1582 2587 3549 2468 2554 3598 2456 6548 5486 ...


#merging dataframe
df1=read.table("datasets/sample_tsv.tsv",header = TRUE,sep = "\t")
df2=df1[c("id","first_name","last_name","country")]
merge_df=merge(df1,df2,by="id")
merge_df
dim(merge_df)  #[1] 66 11
head(merge_df)
#     id sl_no first_name.x last_name.x gender     country.x age       date
# 1 1258    11      Arcelia      Bouska Female Great Britain  39 21/05/2015
# 2 1546    16     Shavonne         Pia Female        France  24 21/05/2015
# 3 1562     1        Dulce       Abril Female United States  32 15/10/2017
# 4 1582     2         Mara   Hashimoto Female Great Britain  25 16/08/2016
# 5 2154    40        Chase      Karner   Male United States  37 15/10/2017
# 6 2456     8      Earlean      Melgar Female United States  27 16/08/2016
#   first_name.y last_name.y     country.y
# 1      Arcelia      Bouska Great Britain
# 2     Shavonne         Pia        France
# 3        Dulce       Abril United States
# 4         Mara   Hashimoto Great Britain
# 5        Chase      Karner United States
# 6      Earlean      Melgar United States
str(merge_df)
# 'data.frame':	66 obs. of  11 variables:
#  $ id          : int  1258 1546 1562 1582 2154 2456 2468 2554 2564 2567 ...
#  $ sl_no       : int  11 16 1 2 40 8 5 6 21 39 ...
#  $ first_name.x: chr  "Arcelia" "Shavonne" "Dulce" "Mara" ...
#  $ last_name.x : chr  "Bouska" "Pia" "Abril" "Hashimoto" ...
#  $ gender      : chr  "Female" "Female" "Female" "Female" ...
#  $ country.x   : chr  "Great Britain" "France" "United States" "Great Britain" ...
#  $ age         : int  39 24 32 25 37 27 58 24 37 36 ...
#  $ date        : chr  "21/05/2015" "21/05/2015" "15/10/2017" "16/08/2016" ...
#  $ first_name.y: chr  "Arcelia" "Shavonne" "Dulce" "Mara" ...
#  $ last_name.y : chr  "Bouska" "Pia" "Abril" "Hashimoto" ...
#  $ country.y   : chr  "Great Britain" "France" "United States" "Great Britain" ...