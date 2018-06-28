data(Cars93)
attach(Cars93)
model<-lm(Weight~MPG.city+EngineSize+Horsepower+Passengers)
