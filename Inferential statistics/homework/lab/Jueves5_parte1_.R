###############################################################################################
##### Introducción a R
###############################################################################################


### OBJETOS
###############################################################################################

## R es un lenguaje orientado a objetos.

# Asignacion de valores
x <- 5  # Almacena 5 en x.

# Muestra el valor de x
x

### VECTORES
###############################################################################################

## Esta clase es numérica (numeric), carácter (character), lógica (logic) y compleja (complex).
## Se usa la función concatenación c(), que combina elementos para formar un vector.

x <- c(1, 2, 3, 4, 5)  # Numérico.
x

z <- c("A", "B", "C", "D", "E")  # Carácter.
z

w <- c(FALSE, FALSE, TRUE, TRUE, TRUE)  # Lógico.
w

## Acceso a los elementos del vector.

x[1] # Accede al primer elemento de x.

z[2:4] # Accede a los elementos de la posición 2 a la 4.

z[c(1, 3, 4)] # Accede al primer, tercer y quinto elemento.

z[w] # Accede a las posiciones donde w es TRUE.


### OPERACIONES
###############################################################################################

## Se realizan las operaciones usuales entre vectores suma (+), resta (-), multiplicación (*), división (/) y 
## potenciación (** o ^).
## También se usan las operaciones lógicas <,>,>= (mayor o igual), <= (menor o igual), == (igual), 
## != (diferente), | (o) y & (y).
## Se usa la función concatenación c(), que combina elementos para formar un vector.

x^2

(1 + x)**2/2 - sqrt(x)

x >= 4

x < 2

(x >= 4) | (x < 2)

z[(x >= 4) | (x < 2)]


### FUNCIONES
###############################################################################################

## sqrt() raíz cuadrada.
## abs() valor absoluto.
## sin(), cos(), tan() trigonométricas.
## asin(), acos(), atan() trigonométricas inversas.
## sinh(), cosh(), tanh() hiperbólicas.
## asinh(), acosh(), atanh() hiperbólicas inversas.
## exp(), log()  exponencial y logartimo natural.
## log10() logaritmo base 10.


### MATRICES
###############################################################################################

## Es un arreglo bidimensional, donde todos los elemntos son de la misma clase. 
## Se usara la función matrix() proporcionando un vector con los elementos de la matriz.
## y especificando el número de filas o columnas de la matriz.

M <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3); M

## La matriz M es llenada, por defecto, por columnas. Si se desea que el caso sea por filas, se 
## habilita dicha opción,

M = matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3, byrow = T); M

## Accediendo a los elementos de la matriz

M[, 2] # Accede a todos los elementos de la columna 2.

M[1:2, 1:2] # Accede a todos los elementos de las dos primeras filas y de las 2 primeras columnas

### OPERACIONES CON MATRICES
###############################################################################################

A <- matrix(c(5, 1, 1, 2), 2, 2)
B <- matrix(c(10, 2, 2, 9), 2, 2)

## Adición y sustracción de matrices.

C <- A + B
D <- A - B

## Multiplicación de Hadamard de matrices.

E <- A*b

## Multiplicación usual de matrices.

G <- A%*%B; G

### FUNCIONES SOBRE MATRICES
###############################################################################################

## Crear una matriz identidad 5x5.

I <- diag(5); I

## Determinante de una matriz

det(A)

## Inversa de una matriz cuadrada.

solve(A)