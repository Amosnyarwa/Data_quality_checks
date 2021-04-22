library(tidyverse)
library(lubridate)
install.packages("ggplot2")
library(ggplot2)
library("dplyr")

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
time_duration <- difftime(as.POSIXct(df$start, format= "%H:%M:%S"), as.POSIXct(df$end, format="%H:%M:%S"),
         unit="mins"
         )

# Create histogram showing time duration

ggplot() + geom_rect(data=df, aes(ymin=df$start, ymax=df$end,
                                  xmin=df$end, xmax=df$start))




