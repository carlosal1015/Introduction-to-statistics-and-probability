require(fastR)
require(lattice)
require(Hmisc)
help(choose)

x <- c(1, 2, 3, 4, 5)
sum(x)
log(x)
y <- c(1, -7, 8, 9, 0)
plot(x, y)

A <- c("juan", "m", "enano", "casa")
number <- c(1, "hola")
number# va de mayor jerarquia

logico <- c(FALSE, TRUE, FALSE, TRUE, FALSE)
logico

new <- c(FALSE, "0.5", "string")
new

u <- c(1, 2, 3, 4, 5)
u^2
(1+u)**2
(1+u)**2/(2-sqrt(u))

u >= 4

(u >= 4) | (u > 2)
alphabetic <- c("A", "B", "C", "D")
alphabetic
alphabetic > "A"
alphabetic == "A"

# Buscar la cadena mat'o. Nombre m'as comunes de 
# Las personas sordomudas se pueden comunicar con una camara.

M = matrix(c(1:9), nrow = 3, ncol = 3)

M_a = matrix(c(1:9), nrow = 2, ncol = 3)


M_b = matrix(c(1:9), nrow = 4, ncol = 4, byrow = TRUE)

# cbind()

M_b

help("matrix")


A <- matrix(c(1:6), nrow = 2, ncol = 3)
A
B <- matrix(c(1:6), nrow = 2, ncol = 3)
B
A+B
A-B
A*B
A
help("matrix")
C <- t(B)
# Multiplicacion usual de matrices
F <- A%*%C
det(F)
# Inversa de F
solve(F)

# Graficando una distribuci'on normal
mu = 5
sigma = 2
curve(dnorm(x, mean = mu, sd = sigma), -2, 12, n = 101) # x no se carga, para que tome todos los puntos
a <- seq(from = 2, to = 8, by = 0.01)
a
f_a <- dnorm(x = a, mean = mu, sd = sigma)
help("polygon")
polygon(c(2, a, 8), c(0, f_a, 0), col = "gray")
# Por ejemplo, se tiene un IC = [2, 8], l = IC[1], u = IC[2].

# Data frame
x <- c(1:10) # Vector numerico
y <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J") # Vector de caracteres
z <- c(FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, TRUE) # Vector de logicos
# Los data frame es el x_0

# Pedir certificado
# Chatbots, base de datos.

datos <- data.frame(x, y, z)
datos
# Cuando usar datos categoricos
# La estadistica crea distribuciones

# Solo hay que trabajar
datos$x
typeof(datos$z)
datos[, 3] # Columna z
datos[ (datos$x > 3) & (datos$z == TRUE), ]

datos1 <- datos[datos$x > 3,]
datos1
datos2 <- datos1[ datos1$z == TRUE, ]
datos2