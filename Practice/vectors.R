____<-c()//c is combine
MyFirstVector <- c(2,3,8,100) # c is combine
MyFirstVector
is.numeric(MyFirstVector)
is.integer(MyFirstVector)
is.double(MyFirstVector)

V2 <- c(3L,2L,10L,0L)
V2

V3 <- c("a", "235", "Hello", 7)
V3

seq(3,10)
z<-seq(3,10,2)
z

rep(3,10)
d<- rep(10,5)
d
a<-rep("a",10)
a

c<- c(80,20)
c
rep(c,10)

g <- c("a", "b", "c", "d", "e")
g

g[3]
g[-2]
g[2:5]
g[c(2,3)]
g[6]
g[2:7]


vector1 <- c(1,2,3,4,5,6,7,8)
vector2 <- c(7,8,9,10,11,12)
add <-vector1+vector2
add
sub<-vector1-vector2
sub
greaterthan<-vector1>vector2
greaterthan
lesstha<-vector1<vector2
lesstha

x<-rnorm(5)
x

for(i in x){
  print(i)
}

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

for(j in 1:5){
  print(x[j])
}

N<-10
a<-rnorm(N)
b<-rnorm(N)
c<-a*b
c
