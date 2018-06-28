# A simple while loop:
n=0
while (n<10) {
  n<-n+1
  print(n)
}

# An infinite loop:
n=1
while (n<10) {
  print(paste(n,Sys.time()))
}

# A way to avoid an infinite loop:
n=1
t1<-Sys.time()
while (n<10) {
  if((Sys.time()-t1)>10) {break}
  print(paste(n,Sys.time()))
}

# A repeat loop, which requires a break condition. 
n=1
repeat{
  n<-n+1
  print(mean(rnorm(100)))
  if (n>=100) {break}
}



