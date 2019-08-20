x <- faithful$eruptions

hist(x)
hist(x, freq = FALSE)					# histogram area = 1
plot(density(x))						# basic smooth histogram
hist(x, freq = F); lines(density(x))	# superimposes the two
stem(x)									# basic stem and leaf plot
stem(x, scale = 1)