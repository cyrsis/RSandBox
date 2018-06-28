# Let's revisit some information on boolean, or logical, objects.
boo<-c(T,F,T,T,F,T)

# Converts T to 1 and F to 0. 
as.numeric(boo)

# Simple logical statements:
num<-1:10
num[1]<5
num[6]<5
num[6]>=6

# Subsetting with simple logical statements:
num[num>8]
num[num>=8]
num[!(num>=8)]

# Multiple sets of the data population:
num[(num>=8)|(num<=3)]
num

# If statement general set up
# if (condition) {do this} else {otherwise do this}
if(num[1]>5) {print("Greater than 5")} else {print("Not greater than 5")}

state="Illinois"
if(state=='Georgia'){
  region<-"Southest"
} else {
  region<-"Midwest"
}

state="Illinois"
if(state=='Georgia'){
  region<-"Southest"
} else if(state=="Washington") {
          region<-"Pacific Northwest"
      } else {
        region<-"Midwest"
      }

# Vectorized if/else statement. Much more powerful.
states<-c("Illinois","Georgia","Washington")
regions<-ifelse(states=="Illinois","Midwest",ifelse(states=="Georgia","Southeast","Pacific Northwest"))

