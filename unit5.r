##########2,3 Question 
#Read and get data into R
#install.packages("readr")

setwd("D:/.Learn/.R script") #step1 set path directory
data=read.csv("datasets/sample_csv.csv",header = TRUE,sep = ",") # load csv file
data
#    X0 First.Name  Last.Name Gender       Country Age       Date   Id
# 1   1      Dulce      Abril Female United States  32 15/10/2017 1562
# 2   2       Mara  Hashimoto Female Great Britain  25 16/08/2016 1582
# 3   3     Philip       Gent   Male        France  36 21/05/2015 2587
# 4   4   Kathleen     Hanner Female United States  25 15/10/2017 3549
# 5   5    Nereida    Magwood Female United States  58 16/08/2016 2468
# 6   6     Gaston      Brumm   Male United States  24 21/05/2015 2554
# 7   7       Etta       Hurn Female Great Britain  56 15/10/2017 3598
# 8   8    Earlean     Melgar Female United States  27 16/08/2016 2456
# 9   9   Vincenza    Weiland Female United States  40 21/05/2015 6548
# 10 10     Fallon    Winward Female Great Britain  28 16/08/2016 5486
# 11 11    Arcelia     Bouska Female Great Britain  39 21/05/2015 1258
# 12 12   Franklyn     Unknow   Male        France  38 15/10/2017 2579

#import 4Question XML
#install.packages("XML") #step1 install XML package
library("XML") #step2 load liabrary

xml_doc=xmlTreeParse("datasets/sample_xml.xml") # load xml file
xml_root=xmlRoot(xml_doc) # load xml document into root 
xml_list=xmlToList(xml_root)
xml_df=data.frame(xml_list)
xml_df

library(XML)

# LOADING TRANSFORMED XML INTO R DATA FRAME
doc<-xmlParse("datasets/sample_xml.xml")
xmldf <- xmlToDataFrame(nodes = getNodeSet(doc, "//record"))
View(xmldf)

#### load df from web data
library(httr)

# Define the API endpoint
url <- "https://jsonplaceholder.typicode.com/posts"
# Make a GET request
response <- GET(url)
# Check if the request was successful
if (status_code(response) == 200) {
  # Parse the content as JSON
  data <- content(response, "parsed")
  # Print the data
  print(data)
} else {
  print("Failed to retrieve data")
}

#6Question  json to df
#install.packages("jsonlite")
library("jsonlite")
json_data <- fromJSON("datasets/sample_json.json")
json_df <- data.frame(json_data)
json_df




####7. load data from database to df
#install.packages("RMySQL")
library(RMySQL)
# Load the MySQL database driver
drv <- dbDriver("MySQL")
# Connect to the database
con <- dbConnect(drv, user = "root", password = "pdk789", dbname
= "dinu", host = "localhost")
# Load the data into a data frame
df <- dbGetQuery(con, "SELECT * FROM record
")
df
dff=as.data.frame(df)
dff