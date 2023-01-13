#1
#Random sample of 100 species names from vector of 5 species names
Spec_names<-sample(c("Felis bingus","Felis lilacus","Alois gorus","Babius busteria","Polka dotdeadius"),size=100,replace=T)

#2
#Random sample of 100 values for limb width
Limb_width<-sample(rnorm(1000,mean=8,sd=2),size=100,replace=F)

#3
#Random sample of 100 values for limb length
Limb_length<-sample(rnorm(1000,mean=30,sd=6),size=100,replace=F)

#4
#Random sample of 100 values for observer
Observer_names<-sample(c("Sam B","Mike R","Lee N"),size=100,replace=T)

#5
#Combining vectors into data frame object
LimbData<-data.frame(Organism=Spec_names,Limb_width=Limb_width,Limb_length=Limb_length,Observer=Observer_names)

#Exporting data frame to csv
write.csv(LimbData,"measurements.csv", row.names=FALSE)
