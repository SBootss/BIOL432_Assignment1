library(dplyr)

#import data from csv
read.csv("measurements.csv") %>%
  #add new column calculating volume from limb-width and limb-volume, estimating volume with assumption each limb is a cylinder
  mutate(Volume=(pi*Limb_length*(Limb_width/2)^2)) %>%
  #export new csv including calculated limb volume
  write.csv("measurements.csv", row.names=F)

