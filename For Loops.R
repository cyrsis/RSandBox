# Simple for loop which prints integers
for (n in 1:10) {
  print(paste("The number is",n))
}

# This loop assigns variables within the inner-code
for (n in 1:10) {
  n_sq <- n^2
  print(paste("The squared number is",n_sq))
}

# If statement nested inside loop
for (n in 1:10) {
  n_sq <- n^2
  print(paste("The squared number is",n_sq))
  if (n==10) 
    {print("The loop is done!")}
}

# Too many brackets:
for (n in 1:10) {
  print(paste("The number is",n))
}}

# Too few brackets:
for (n in 1:10) {
  print(paste("The number is",n))

# Skip a condition:
for (n in 1:10) {
  if(n==5) {next}
  print(paste("The number is",n))
}
  
# Break on a condition:
for (n in 1:10) {
  print(paste("The number is",n))
  if(n==5) {break}
}
