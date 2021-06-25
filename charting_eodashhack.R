install.packages("ggplot")
install.packages("readxl")
update.packages('ggplot')
update.packages('readxl')

library(readxl) #update if its not working use update.package('readxl')
library(ggplot2) #you may want to update if not working use update.package('ggplot')

data2 <- read.csv("Output_bahc-19_v2.csv") #Data 1 is overrated

head(data2)

p1 <- ggplot(data2, aes(time, group = 1)) + 
  coord_cartesian(ylim=c(0.3,1.5)) +
  geom_line(aes(y = measurement1, colour = "Nagoya")) + 
  geom_line(aes(y = measurement2, colour = "Singapore")) +
  geom_line(aes(y = measurement3, colour = "Beijing"))
p1

p1 + theme(axis.text.x = element_text(face="italic", 
                                     size=6, angle=90))
