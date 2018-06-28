for (n in 1:1000) {
  m <- mean(rnorm(100))
  print(m)
}


means<-NULL
for (n in 1:1000) {
  m <- mean(rnorm(100))
  means <- rbind(means,m)
}
plot(means)

means <- NULL
system.time(
for (n in 1:20000) {
  m <- mean(rnorm(100))
  means <- rbind(means,m)
}
)

means <- numeric(length=20000)
system.time(
  for (n in 1:20000) {
    m <- mean(rnorm(100))
    means[n] <- m
  }
)

# Under the correct notation of vectorized operations, when possible,
# it will be much shorter to write and quicker. Let's
# look at an example of this:

# This function iteratively adds the square root of a series of integers together. 
sqsum <- NULL
for(i in 1:100) {
  sqsum <- sqsum+sqrt(i)
}

# Let's use system time:
sqsum <- NULL
system.time(
	for(i in 1:10000) {
		sqsum <- rbind(sqsum,sqrt(i))
	  if(i==10000) {
      sqsum<-sum(sqsum)}
	}
)

# And now on the vectorized form:
sqsum <- sum(sqrt(1:10000))

system.time(
  sqsum <- sum(sqrt(1:10000))
)
# Much faster, and code that is easier to read and write. Most 
# functions tend to be vectorized when possible for this reason.
