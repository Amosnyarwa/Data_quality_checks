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


# Calculate time difference
difftime(as.POSIXct(df$start, format= "%H:%M:%S"), as.POSIXct(df$end, format="%H:%M:%S"),
         unit="mins"
         )
