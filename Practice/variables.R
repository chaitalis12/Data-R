
#interger
a<- 4L
typeof(a)
a

#float
b<-2.5
typeof(b)
b

#charater
c<- "Hello"
typeof(c)
c

#complex
d<-1+2i
typeof(d)
d

#logical
e<- T
typeof(e)
e

f<- FALSE
typeof(f)
f

#addition
g<- a+b
g

#division
h<-a/b
h

#square root
i<-sqrt(a)
i

#adding text
greeting<-"hello"
name<-"world!!."
dialogue<-"How are you?"
message<-paste(greeting,name,dialogue)
message


#logical variable
#TRUE T
#FALSE F
#==
#<=
#>=
#<
#>
# !
#|
#!=
#&
#isTRUE(X)

4<5
100<10
4==5

j <- 4>5
j
typeof(j)

k<-!(5<1)
k

j | k
j&k
isTRUE(j)

#while loop
counter <-1
while(counter <12){
  print(counter)
  counter <- counter + 1
}

#for loop
for(i in 1:5){
 print("Hello" )
}

for(i in 5:10){
  print("Hello" )
}

#else if statement
rm(answer)
x<-rnorm(1)
if(x>1){
  answer<-("x is greater than 1")
}else if(x>=1){
  answer<-("x is between 1 and -1")
}else{
  answer<-("x is less than 1")
}










