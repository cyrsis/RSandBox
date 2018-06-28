# Here is a recursive function:
fib <- function(n) {
  if(n>2) {
    c(fib(n-1),sum(tail(fib(n-1),2)))
  } else if (n>=0) {
    rep(1,n)
  }
}
fib(1)
fib(2)
fib(10)

# Recursion can be slow:
system.time(fib(20))
# Should only be used when performance is not compromised
# and when coding this way is natural. 

# Here is another version that is much faster as it only returns a single
# value and doesn't bind together groups of objects like in the previous
# example:
fib <- function(n) {
  if(n==0){
    return(0)
  }
  if(n==1){
    return(1)
  }
  return(fib(n-1)+fib(n-2))
}
# Example came from http://dirk.eddelbuettel.com/blog/2011/09/08/ 
# Written by Dirk Eddelbuettel

# This code is recursive and also runs fast:
factorial <- function(x){
  if(x==1) {
    return(1)
  } else {
    return(x*factorial(x-1))
  }
}
factorial(10)
factorial(250)

# If you set up recursion in your program, avoid using functions like
# c(), rbind(), or cbind(). Returning single numerical values is much
# faster and won't so easily cause a crash. 
