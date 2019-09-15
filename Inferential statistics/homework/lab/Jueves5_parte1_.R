###############################################################################################
##### Introduccion a R
###############################################################################################


### OBJETOS
###############################################################################################

## R es un lengiaje orientado a objetos.

# asignacion de valores
x<-5  # almacena 5 en x
x=5   # almacena 5 en x

# muestra el valor de x
x


### VECTORES
###############################################################################################

## Esta clase es numerica(numeric), caracter(character), logica(logic) y compleja(complex)
## Se usa la funcion concatenacion c(), que combina elementos para formar un vector

x=c(1,2,3,4,5)  # numerico
x

z=c("A","B","C","D","E")  # caracter
z

w=c(FALSE,FALSE,TRUE,TRUE,TRUE)  # logico
w

## Acceso a los elementos del vector

x[1] # accede al primer elemento de x

z[2:4] # accede a los elementos de la posicion 2 a la 4

z[c(1,3,4)] # accede al primer, tercer y quinto elemento

z[w] # accede a las posiciones donde w es true


### OPERACIONES
###############################################################################################

## Se realizan las operaciones usuales enre vectores suma(+), resta(-), multiplicacion(*), division(/) y 
## potenciacion (** o ^).
## Tambien se usan las operaciones logicas <,>,>= (mayor o igual), <= (menor o igual), == (igual), 
## != (diferente), | (o) y & (y).
## Se usa la funcion concatenacion c(), que combina elementos para formar un vector

x^2

(1+x)**2/2-sqrt(x)

x>=4

x<2

(x>=4)|(x<2)

z[(x>=4)|(x<2)]


### FUNCIONES
###############################################################################################

## sqrt() raiz cuadrada
## abs() valor absoluto
## sin(), cos(), tan() trigonometricas
## asin(), acos(), atan() trigonometricas inversas
## sinh(), cosh(), tanh() hiperbolicas
## asinh(), acosh(), atanh() hiperbolicas inversas
## exp(), log()  exponencial y logartimo natural
## log10() logaritmo base 10


### MATRICES
###############################################################################################

## Es un areglo bidimensional, donde todos los elemntos son de la misma clase. 
## Se usara la funcion matrix() proporcionando un vector con los elementos de la matriz
## y especificando el numero de filas o columnas de la matriz.

M=matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)
M

## La matriz M es llenada, por defecto, por columnas. Si se desea que el caso sea por filas, se 
## habilita dicha opcio,

M=matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3, byrow=T)
M

## Accediendo a los elementos de la matriz

M[,2] # accede a todos los elementos de la columna 2

M[1:2,1:2] # accede a todos los elementos de las dos primeras filas y de las 2 primeras columnas



### OPERACIONES CON MATRICES
###############################################################################################

A=matrix(c(5,1,1,2),2,2)
B=matrix(c(10,2,2,9),2,2)

## adicion y sustraccion de matrices

C=A+B
D=A-B

## multiplicaion de elemento a elemento de matrices

E=A*b

## multiplicacion usual de matrices

F=A%*%B
F

### FUNCIONES SOBRE MATRICES
###############################################################################################

## Crear una matriz identidad 5x5

I=diag(5)
I

## Determinante de una matriz

det(A)

## inversa de una matriz cuadrada

solve(A)
