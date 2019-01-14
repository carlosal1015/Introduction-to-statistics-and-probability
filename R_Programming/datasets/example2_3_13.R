library(MASS)
S <- expand.grid(X1 = 1:6, X2 = 1:6)
fractions((table(S$X1 + S$X2)/36))

set.seed(111)
sample(2:12, size = 10, replace = T, prob = c(1:6, 5:1)/36)

table(sample(2:12, size = 10000, replace = T, prob = c(1:6, 5:1)/36))/10000