data("faithful")
help("faithful") # Cómo crear la ayuda a partir de un dataset.
attach(faithful) # Carga los nombres de faithful en R
names(faithful)

length(eruptions) # Cuan grande es la data
hist(eruptions,20)
mean(eruptions)
sd(eruptions)

emean = mean(eruptions)
esd = sd(eruptions)

sum(eruptions > emean - esd & eruptions < emean + esd)
sum(eruptions > emean - esd & eruptions < emean + esd)/length(eruptions)
# emacs()

library(ggplot2)

ggplot(mpg, aes(displ, hwy, colour = class)) +
  geom_point()

Numbers = c(3, 2, 1, 4, 3)
Numbers
Numbers + 22

sqrt(Numbers + 22)

plot(Numbers)
hist(Numbers)

data("airquality")
attach(airquality)
names(airquality)
hist(Ozone)
