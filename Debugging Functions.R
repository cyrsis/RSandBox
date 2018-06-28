# To step through the code in a function, use debug with
# the function of interest as an argument. Then run the function.
debug(mean)
mean(1:10)

# "Enter" goes to next line in function code
# "c" runs the rest of the code. If you are in a loop, this will run the rest.
# "Q" quits the debugging
# Finish with undebug so that the function is no longer flagged:
undebug(mean)

# Browser is another way to step through code:
numbers <- numeric(length=10)
for(i in 1:10) {
  browser()
  numbers[i]<-i
}
# This is a good way to "pause" code that is running, and allows
# you to inspect objects at each pause. It won't work inside of functions,
# but works just fine everywhere else.

# We can use these browsers inside condition statements:
numbers <- numeric(length=10)
for(i in 1:10) {
  if(i==6) {browser()}
  numbers[i]<-i
}

# We can set up R to call the browser() function if any error when
# programming:
options(error=browser)
# However, only do this when you have errors. It has undesierable side effects
# if left on. To switch back:
options(error=NULL)

# Lastly, here is an example using "traceback" which comes
# from http://www.inside-r.org/r-doc/base/traceback:
foo <- function(x) {print(x);bar(x)}
bar <- function(x) {x + a.variable.which.does.not.exist}
foo(2)
traceback()
# This is helpful when you have lots of loops and nested code.

