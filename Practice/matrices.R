
#matrix
data <- 1:20
data
A <- matrix(data,4,5)
A

B<- matrix(data,4,5,byrow=T)
B

#rbind
r1 <- c("i","love","you")
r2 <- c("do","you","love","me")
r3 <- c(1,4,3)
C <- rbind(r1,r2,r3)
C

#cbind
c1 <- c("i","love","you")
c2 <- c("do","you","love","me")
c3 <- c(1,4,3)
D <- cbind(r1,r2,r3)
D

C[2,3]
D[2,3]

E<- 1:5
E
names(E)<- c("a", "b","c","d","e")
E
names(E)<-NULL
E

F<-rep(3:6,each=3)
F
G<-matrix(F,3,3)
G
colnames(G)<-NULL
G
rownames(G)<-NULL
G
rownames(G)

round(FieldGoals/Games,2)
t(round(MinutesPlayed/Games)) #transpose matrix

Games
Games[1:3,3:8]
Games[c(3:10),]
Games[,c("2006","2008")]
is.matrix(Games[1])
is.vector(Games[1,5])

Games[1,,drop=FALSE]
Games[1,5,drop=FALSE]


Data<-MinutesPlayed[1,,drop=FALSE]
matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players[1], col=c(1:4,6), pch=15:18)
Data

#creating a new function
Games
myplot<-function(data,row=1:10){
Data<-data[row,,drop=FALSE]
matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players[row], col=c(1:4,6), pch=15:18)
}
myplot(Games,3:7)
myplot(MinutesPlayed/Games,3)
