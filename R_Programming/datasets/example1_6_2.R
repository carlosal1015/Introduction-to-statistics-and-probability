x <- c(rep(1, 100), rep(2, 9900))	# set the statistical population in x
y <- sample(x, size = 1000)			# set the sample size 100 in y
table(y)/length(y)					# compute the sample proportions