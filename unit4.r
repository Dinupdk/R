############## 1Question Dataframes
df = data.frame(name=c("name1","name2","name3")
,age=c(25,30,35),
course=c('course1',"course2","course3"))
# output
print(df)
print.table(df)
print("   ")
print.data.frame(df)

#############2question Access only columns 
df = data.frame(name=c("name1","name2","name3")
,age=c(25,30,35),
course=c('course1',"course2","course3"))

print(df$name)
print(df[['name']])

############# adding new columns 
df = data.frame(name=c("name1","name2","name3")
,age=c(25,30,35),
course=c('course1',"course2","course3"))
df$id=c(1,2,3)
print(df)

#### subsetting
df = data.frame(name=c("name1","name2","name3")
,age=c(25,30,35),
course=c('course1',"course2","course3"))
subset(df,age>26)

################3Question sort
df = data.frame(
  name=c("name1","name2","name3"),
  age=c(45,30,35),
  course=c('course1',"course2","course3")
)
print(df[order(df[['age']])])
print(df[order(df$age)])

####### filter 
df = data.frame(
  name=c("name1","name2","name3"),
  age=c(45,30,35),
  course=c('course1',"course2","course3")
)
class(df$age)
# filter(df,age>26)
print(df[order(df$age)])

######## merging
df1 = data.frame(
  id=c(1,2,3),
  name=c("name1","name2","name3"),
  age=c(45,30,35),
  course=c('course1',"course2","course3")
)
df2=data.frame(
  id=c(1,2,3),
  score=c(90,80,70)
)
print(merge(df1,df2,by='id'))

###################### grouping
library(dplyr)
df = data.frame(
  id=c(1,2,3),
  name=c("name1","name2","name3"),
  age=c(45,30,35),
  sex=c('m','fe','m'),
  score=c(90,80,70),
  course=c('course1',"course2","course3")
)
print(group_by(df,sex))


df <- data.frame(
  ID = 1:5,
  Name = c("Alice", "Bob", "Charlie", "David", "Eva"),
  Age = c(25, 30, 35, 40, 45),
  Salary = c(50000, 60000, 70000, 80000, 90000)
)

#print(df)
# Subset rows where Age is greater than 30
subset_df <- subset(df, Age > 30)
print(subset_df)
# Subset specific columns
subset_columns <- subset(df, select = c(Name, Salary))
print(subset_columns)



# Filter rows where Salary is greater than 60000
library(dplyr)
filtered_df <- df %>% filter(Salary > 60000)
print(filtered_df)







############################## 4Question functions in data frame

df <- data.frame(
  Id = 1:11,
  Name = c("Alice", "Bob", "Charlie", "David", "Eva","name6","name7",'name8',"name9","name10","name11"),
  Age = c(25, 30, 35, 40, 45, 25, 30, 35, 40, 45,50),
  Salary = c(50000, 60000, 70000, 80000, 90000, 50000, 60000, 70000, 80000, 90000,1111)
)
print(head(df)) #top 6 i.e ->id 1,2,3,4,5,6
print(tail(df)) #bottom 6 ie -> id 6,7,8,9,10,11
print(dim(df))  #11rows  4 columns
print(nrow(df)) #total number of rows # 11 rows
print(ncol(df)) #total number of columns # 4 columns
print(names(df)) #column names  "Id"     "Name"   "Age"    "Salary"
print(colnames(df))  #"Id"     "Name"   "Age"    "Salary"
print(summary(df))
#       Id           Name                Age            Salary     
#  Min.   : 1.0   Length:11          Min.   :25.00   Min.   : 1111  
#  1st Qu.: 3.5   Class :character   1st Qu.:30.00   1st Qu.:55000  
#  Median : 6.0   Mode  :character   Median :35.00   Median :70000  
#  Mean   : 6.0                      Mean   :36.36   Mean   :63737  
#  3rd Qu.: 8.5                      3rd Qu.:42.50   3rd Qu.:80000  
#  Max.   :11.0                      Max.   :50.00   Max.   :90000  
print(subset(df,Age<40,))
#   Id    Name Age Salary
# 1  1   Alice  25  50000
# 2  2     Bob  30  60000
# 3  3 Charlie  35  70000
# 6  6   name6  25  50000
# 7  7   name7  30  60000
# 8  8   name8  35  70000
print(merge(df,df,by="Id"))
#    Id  Name.x Age.x Salary.x  Name.y Age.y Salary.y
# 1   1   Alice    25    50000   Alice    25    50000
# 2   2     Bob    30    60000     Bob    30    60000
# 3   3 Charlie    35    70000 Charlie    35    70000
# 4   4   David    40    80000   David    40    80000
# 5   5     Eva    45    90000     Eva    45    90000
# 6   6   name6    25    50000   name6    25    50000
# 7   7   name7    30    60000   name7    30    60000
# 8   8   name8    35    70000   name8    35    70000
# 9   9   name9    40    80000   name9    40    80000
# 10 10  name10    45    90000  name10    45    90000
# 11 11  name11    50     1111  name11    50     1111

#####dplyr
df <- data.frame(
  Id = 1:11,
  Name = c("Alice", "Bob", "Charlie", "David", "Eva","name6","name7",'name8',"name9","name10","name11"),
  Age = c(25, 30, 35, 40, 45, 25, 30, 35, 40, 45,50),
  Salary = c(50000, 60000, 70000, 80000, 90000, 50000, 60000, 70000, 80000, 90000,1111)
)
library(dplyr)
filter(df,df$Age<40)

#   Id    Name Age Salary
# 1  1   Alice  25  50000
# 2  2     Bob  30  60000
# 3  3 Charlie  35  70000
# 4  6   name6  25  50000
# 5  7   name7  30  60000
# 6  8   name8  35  70000


select(df,Id, Name, Age)
#    Id    Name Age
# 1   1   Alice  25
# 2   2     Bob  30
# 3   3 Charlie  35
# 4   4   David  40
# 5   5     Eva  45
# 6   6   name6  25
# 7   7   name7  30
# 8   8   name8  35
# 9   9   name9  40
# 10 10  name10  45
# 11 11  name11  50
arrange(df, Age, desc(Age))
#    Id    Name Age Salary
# 1   1   Alice  25  50000
# 2   6   name6  25  50000
# 3   2     Bob  30  60000
# 4   7   name7  30  60000
# 5   3 Charlie  35  70000
# 6   8   name8  35  70000
# 7   4   David  40  80000
# 8   9   name9  40  80000
# 9   5     Eva  45  90000
# 10 10  name10  45  90000
# 11 11  name11  50   1111
summarize(df, mean_value = mean(Age, na.rm = TRUE))
#   mean_value
# 1   36.36364
# # A tibble: 11 × 4
# # Groups:   Age [6]


mutate(df, year_salary = Salary * 12)
#    Id    Name Age Salary year_salary
# 1   1   Alice  25  50000      600000
# 2   2     Bob  30  60000      720000
# 3   3 Charlie  35  70000      840000
# 4   4   David  40  80000      960000
# 5   5     Eva  45  90000     1080000
# 6   6   name6  25  50000      600000
# 7   7   name7  30  60000      720000
# 8   8   name8  35  70000      840000
# 9   9   name9  40  80000      960000
# 10 10  name10  45  90000     1080000
# 11 11  name11  50   1111       13332

##############5Question dim,nrow,ncol,str,summary
df <- data.frame(
  Id = 1:11,
  Name = c("Alice", "Bob", "Charlie", "David", "Eva","name6","name7",'name8',"name9","name10","name11"),
  Age = c(25, 30, 35, 40, 45, 25, 30, 35, 40, 45,50),
  Salary = c(50000, 60000, 70000, 80000, 90000, 50000, 60000, 70000, 80000, 90000,1111)
)
dim(df) #11  4
nrow(df) #11
ncol(df) # 4
str(df)
# 'data.frame':	11 obs. of  4 variables:
#  $ Id    : int  1 2 3 4 5 6 7 8 9 10 ...
#  $ Name  : chr  "Alice" "Bob" "Charlie" "David" ...
#  $ Age   : num  25 30 35 40 45 25 30 35 40 45 ...
#  $ Salary: num  50000 60000 70000 80000 90000 50000 60000 70000 80000 90000 ...
summary(df)
#        Id           Name                Age            Salary     
#  Min.   : 1.0   Length:11          Min.   :25.00   Min.   : 1111  
#  1st Qu.: 3.5   Class :character   1st Qu.:30.00   1st Qu.:55000  
#  Median : 6.0   Mode  :character   Median :35.00   Median :70000  
#  Mean   : 6.0                      Mean   :36.36   Mean   :63737  
#  3rd Qu.: 8.5                      3rd Qu.:42.50   3rd Qu.:80000  
#  Max.   :11.0                      Max.   :50.00   Max.   :90000 

##################### 6 names,head,tail,edit
df <- data.frame(
  Id = 1:11,
  Name = c("Alice", "Bob", "Charlie", "David", "Eva","name6","name7",'name8',"name9","name10","name11"),
  Age = c(25, 30, 35, 40, 45, 25, 30, 35, 40, 45,50),
  Salary = c(50000, 60000, 70000, 80000, 90000, 50000, 60000, 70000, 80000, 90000,1111)
)
names(df) #[1] "Id"     "Name"   "Age"    "Salary"
head(df) #
#  Id    Name Age Salary
# 1  1   Alice  25  50000
# 2  2     Bob  30  60000
# 3  3 Charlie  35  70000
# 4  4   David  40  80000
# 5  5     Eva  45  90000
# 6  6   name6  25  50000
tail(df)
#    Id   Name Age Salary
# 6   6  name6  25  50000
# 7   7  name7  30  60000
# 8   8  name8  35  70000
# 9   9  name9  40  80000
# 10 10 name10  45  90000
# 11 11 name11  50   1111
edit(df)

