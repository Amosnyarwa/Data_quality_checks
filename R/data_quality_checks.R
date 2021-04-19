library(tidyverse)
library(lubridate)

# Load data set
getwd()

df <- read_csv(file = "inputs/20190807.csv")

# Check column names
colnames(df)
dim(df)


df %>% select(start, end)

# Check start time classification
class(df$start)
class(df$end)

# filtering the dataset based on start date of 7th Aug 19
df %>% 
  filter(start=="7-Aug-19")
