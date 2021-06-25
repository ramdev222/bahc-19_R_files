install.packages("ggplot")
install.packages("readxl")
update.packages('ggplot')
update.packages('readxl')

library(readxl) #update if its not working use update.package('readxl')
library(ggplot2) #you may want to update if not working use update.package('ggplot')

data2 <- read.csv("Output_bahc-19_v2.csv") #Data 1 is overrated
beijing <- read.csv("Beijing_2021-06-24_CN03-E9.csv")
nagoya <- read.csv("Nagoya_2021-06-25_JP03-E9.csv")
singapore <- read.csv("Singapore_2021-06-24_SG01-E9.csv")

head(data2) #test

p1 <- ggplot(data2, aes(time, group = 1)) + 
 # coord_cartesian(ylim=c(0.3,1.5)) +
  geom_line(aes(y = measurement1, colour = "Nagoya")) + 
  geom_line(aes(y = measurement2, colour = "Singapore")) +
  geom_line(aes(y = measurement3, colour = "Beijing"))
p1 #test

#OUTPUT
p1 + theme(axis.text.x = element_text(face="italic", 
                                     size=6, angle=90)) +
  ggtitle("Activity (car/cargo)") +
  xlab("Date") +
  ylab("Car Density")

#indifidual data
#BEIJING AREA
pbeijing <- ggplot(beijing, aes(time, measurement, group = 1)) +
  geom_line()
pbeijing + theme(axis.text.x = element_text(face="italic", 
                                            size=6, angle=90)) +
  ggtitle("Beijing Activity (car/cargo)") +
  xlab("Date") +
  ylab("Car Density")

#NAGOYA AREA
pnagoya <- ggplot(nagoya, aes(time, measurement, group = 1)) +
  geom_line()
pnagoya + theme(axis.text.x = element_text(face="italic", 
                                            size=6, angle=90)) +
  ggtitle("Nagoya Activity (car/cargo)") +
  xlab("Date") +
  ylab("Car Density")

#SINGAPORE AREA
singaporep <- ggplot(singapore, aes(time, measurement, group = 1)) +
  geom_line()
singaporep + theme(axis.text.x = element_text(face="italic", 
                                            size=6, angle=90)) +
  ggtitle("Singapore Activity (car/cargo)") +
  xlab("Date") +
  ylab("Car Density")
