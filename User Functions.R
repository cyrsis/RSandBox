# This is the general set up of a function:
# myfunction <- function(arg1, arg2, ... ){
#   statements
#   return(object)
# }

# A simple function which adds two arguments together:
f1 <- function(x, y){
  return(x+y)
}

# Add error handling:
f1 <- function(x, y){
  if(is.numeric(x)&is.numeric(y)){
    return(x+y)
  } else {
    print("NOT A NUMBER")
  }
}

# What if we want to return multiple variables?
f1 <- function(x, y){
  if(is.numeric(x)&is.numeric(y)){
    return(c(x+y, x-y, x*y, x/y))
  } else {
    print("NOT A NUMBER")
  }
}

# Or use list:
f1 <- function(x, y){
  if(is.numeric(x)&is.numeric(y)){
    list(x+y, x-y, x*y, x/y)
  } else {
    print("NOT A NUMBER")
  }
}

# Let's see what happens when we use vectors as input:
xvec<-c(1, 2, 3, 4, 5)
yvec<-c(6, 7, 8, 9, 10)
f1(xvec,yvec)

# We can look at the function code like this:
f1
# Or click on the function object in the Workspace. 
# We can get the arguments by using the formals function:
formals(f1)

# How about setting defaults?
f1 <- function(x=1, y=1){
  if(is.numeric(x)&is.numeric(y)){
    list(x+y, x-y, x*y, x/y)
  } else {
    print("NOT A NUMBER")
    warning("Numbers not used")
  }
}

f1()
args(f1)
f1('a',2)

