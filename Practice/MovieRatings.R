
setwd("C:\\Users\\chait\\Documents\\Data-R\\Practice")
getwd()
movie <- read.csv("P2-Movie-Ratings.csv")
movie
summary(movie)
str(movie)
library(ggplot2)
head(movie)
colnames(movie) <-c("Film","Genre","CriticRating","AudienceRating","Budget","Year")
movie$Year<-factor(movie$Year)

rating<-ggplot(data=movie, aes(x=CriticRating, y=AudienceRating, size=Budget,colour=Genre))+ geom_point()
rating

rating1 <-ggplot(data=movie, aes(x=CriticRating, y=AudienceRating, size=Budget,colour=Genre))
#point 
rating1+geom_point()
#line
rating1+geom_line()
#multiple layer
rating1+geom_point() + geom_line(size=1)
rating1+geom_point(aes(size=CriticRating,colour=Budget))

rating2 <-ggplot(data=movie, aes(x=Year, fill=Genre))
rating2 + geom_bar(colour="Black")

rating3<-ggplot(data=movie, aes(x= Budget, fill=Genre))
rating3 + geom_density(position="stack")

rating4<-ggplot(data=movie, aes(x= Genre, y=AudienceRating, colour=Genre))
rating4 + geom_boxplot()
rating4 + geom_boxplot() + geom_jitter()

rating5 <-ggplot(data=movie, aes(x=Budget))
rating5 + geom_histogram(binwidth = 10, aes(fill=Genre),colour= "Black") + 
  #facet_grid(Genre~Year,scales = "free") + 
  theme(axis.title.x = element_text(colour="DarkGreen", size=30), 
      axis.title.y = element_text(colour="Red", size=30),
    axis.text.x = element_text(colour="DarkGreen", size=20), 
    axis.text.y=element_text(colour="Red",size=10))

rating6<-ggplot(data=movie, aes(x= CriticRating, y=AudienceRating, 
                                colour=Genre))
rating6 + geom_point() +facet_grid(Genre~.)
rating6 + geom_point() +facet_grid(.~Year)
rating6 + geom_point() +facet_grid(Genre~Year) + geom_smooth()+ coord_cartesian(ylim=c(0,100))

