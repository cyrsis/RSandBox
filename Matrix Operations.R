## Matrix Operations
A<-matrix(c(30,32,31,27,36,72,60,78,67,71,55,57,56,55,49),ncol=3)
colnames(A)<-c("Fairbanks","San Francisco","Chicago")
rownames(A)<-paste("3/",12:16,sep='')

B<-matrix(c(88,85,83,81,78,62,61,54,60,65,90,92,91,89,90),ncol=3)
colnames(B)<-c("Los Angeles","Seattle","Honolulu")
rownames(B)<-paste("3/",12:16,sep='')