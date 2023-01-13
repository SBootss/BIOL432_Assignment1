library(dplyr)

#import data from csv and add new column calculating volume from limb-width and limb-volume, estimating volume with assumption each limb is a cylinder
read.csv("measurements.csv") %>%
  mutate(Volume=(pi*Limb_length*(Limb_width/2)^2)) %>%
  write.csv("measurements.csv")

