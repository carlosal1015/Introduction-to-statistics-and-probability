sample(0:1,15,rep=T)
FlipCoin = function(n) sample(0:1,n,rep=T)
e1 = FlipCoin(30)
e1
sum(e1 == 0)
sum(e1 == 0)/30
sum(e1 == 1)
sum(e1 == 1)/30

hist(e1, breaks = c(-0,5,0.5,1.5), prob = T)

# Use R para simular un experimento de lanzamiento de una moneda 100 veces. Imprima el histograma relativo como arriba con su nombre en ella.

# Ecneutre la frecuencia relativa de caras y sellos en su experimento y llene la tabla de la siguiente página.

# Repita 2 para el lanzamiento de una moneda 500 veces.

sample(1:6, 20, rep=T)
RollDie = function(n) sample(1:6, n, rep = T)
d1 = RollDie(50)
d1
sum(d1 == 3)
sum(d1 == 3)/50
hist(d1, breaks = c(0.5,1.5,2.5,3.5,4.5,5.5,6.5), prob=T)

# Use R para simular un experimento de lanzamiento de dados 200 veces. Imprima el histograma relativo y escriba su nombre en él.
# Encuentre la frecuencia relativa de los números del 1 a 6 en su experimento y llene en la tabla en la siguiente página.

# Repita 2 para el lanzamiento del dado 1000 veces
