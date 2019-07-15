
getwd()
setwd("C:\\Users\\chait\\Documents\\Data-R\\Practice")
DmMovie <- read.csv("Section6-Homework-Data.csv")
DmMovie
head(DmMovie)
colnames(DmMovie) <-c("Day","Director","Genre","Movie","Date","Studio","Adjusted","Budget","Gross","Imdb","Rating","Overseas","Overseas%","Profit","Profit%","Runtime","US","GrossUS")
head(DmMovie)
str(DmMovie)
library(ggplot2)
#ggplot(data=DmMovie,aes(x=Genre)) + geom_bar()
filter1<-(DmMovie$Genre== "action") | (DmMovie$Genre=="adventure") | (DmMovie$Genre=="animation") | (DmMovie$Genre=="comedy") | (DmMovie$Genre=="drama")
filter1
filter2<- (DmMovie$Studio=="Buene Vista Studios") | (DmMovie$Studio=="Fox") |(DmMovie$Studio=="Paramount Pictures") | (DmMovie$Studio=="Sony")| (DmMovie$Studio=="Universal") | (DmMovie$Studio=="WB")
filter2
Final<- DmMovie[filter1 & filter2,]
Final
head(Final)
summary(Final)
str(Final)
a <- ggplot(data=Final, aes(x=Genre, y=GrossUS))
a+geom_jitter(aes(size=Budget,colour=Studio,outlier.colour=NA)) + 
  geom_boxplot(alpha=0.5) + xlab("Genre") + ylab("Gross US") + 
  ggtitle("Domestic Gross by Genre") + 
  theme(axis.title.x = element_text(colour="Blue", size="20"),
        axis.title.y = element_text(colour="Red", size="20"),
        axis.text.x = element_text(size="10"),
        axis.text.y = element_text(size="10"), 
        plot.title = element_text(size = 30,family="Comic Sans MS"))
              