city<-data.frame(
  city=I(c("Chicago","Seattle","New York","San Francisco", "Los Angeles")),
  state=I(c("IL","WA","NY","CA","CA")),
  population=c(2715000,634535,8337000,825863,3858000),
  coastal=c(F,F,T,T,T)
  )
weather<-data.frame(
  city=I(c("Chicago","Washington","Seattle","New York","Kansas City","Atlanta","San Francisco", "Los Angeles")),
  average_high=c(57,62,58,57,59,63,64,72),
  average_low=c(50,55,53,49,50,59,57,68),
  inch_snow=c(T,T,F,T,T,F,F,F)
  )