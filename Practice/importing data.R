
#method1
stats <-read.csv(file.choose())
stats

#Method2

#windows
setwd("C:\\Users\\chait\\OneDrive\\Documents\\R\\Practice")
getwd()
stats <- read.csv("P2-Demographic-Data.csv")
stats

#mac
setwd("/Users/chait/OneDrive/Documents/R/Practice")
getwd()
stats <- read.csv("P2-Demographic-Data.csv")
stats