###############################################################################################
##### Data Frame
###############################################################################################

## Es un arreglo bidimensional que se utiliza para almacenar conjuntos de datos.
## En este caso las columnas representan variables y las filas las observaciones, a diferencia de una matriz
## en este caso las columnas de un data frame pueden ser de distinto tipo. Además es posible asignar nombre
## a las columnas y a través de estos se puede acceder a los datos de las columnas.

setwd("/home/carlosal1015/Git_Projects/R/Statistics-and-probability/Inferential statistics/homework/lab")

### 1. CREACIÓN DE UN DATA FRAME
###############################################################################################

## Usaremos los siguientes datos como insumos.

x <- c(1, 2, 3, 4, 5)

z <- c("A", "B", "C", "D", "E")

w <- c(FALSE, FALSE, TRUE, TRUE, TRUE)

## Podemos crear un data frame utilizando la función data.frame()

datos <- data.frame(x, z, w); datos

## Accedemos a la columna w del data frame datos.

datos$w

## Otra forma de acceder a la columna w.

datos[, 3]

## Ubicar las filas donde x es mayor a 2.

datos[datos$x>2, ]


### 2. DATA FRAMES USANDO LA DATA DE R
###############################################################################################

## R ofrece datos para practicar.


## Mostrar la data que ofrece R.

data()


## Selecionar y visualizar una de las tantas datas que ofrece R, con la función View().

View(esoph) # Smoking, Alcohol and (O) esophageal Cancer

## Mostrar el tipo de objeto que representa la data selecionada.

class(esoph)

## Creando un data frame con la data disponible.

cancer <- data.frame(esoph); cancer

### 3. LECTURA DE DATOS 
###############################################################################################

## Existen diversas funciones para la lectura de un conjunto de datos, una de las más sencillas
## es read.csv("archivo_a_leer.csv"), el cual lee un archivo en formato csv y crear un objeto de tipo data frame.


## Indica la dirección dónde se guardará y leerá por defecto la data.

setwd("/home/carlosal1015/Git_Projects/R/Statistics-and-probability/Inferential statistics/homework/lab")

## Lectura de un archivo csv llamado info_peru.csv.

# sep indica en base a que signo va separar los datos.
# header es el parámetro lógico para incluir la cabecera.

peru = read.csv("info_peru.csv", sep = ",", header = TRUE, encoding = "UTF-8")

# ¿Qué objeto es peru?

class(peru)

# Visualizar el data frame peru.
View(peru)

### 4. GUARDAR UN DATA FRAME DE R EN UN ARCHIVO DE TIPO CSV
###############################################################################################

## Debe usar la función write.csv()

## Guardaremos el data frame creado en el punto 1, llamado datos.

write.table(datos, file = "datos.csv", sep = ",", row.names = F)

## Otra forma de guardar.

write.csv(datos, file = "datos.csv", row.names = F, fileEncoding = "UTF-8")

## Otra forma de guardar

datos <- as.data.frame(cbind(x, z, w)); datos

datos$x = as.numeric(datos$x) # Declaro qué tipo de objeto es esta columna.

datos$z = as.character(datos$z) # Declaro qué tipo de objeto es esta columna.

datos$w = as.logical(datos$w) # Declaro qué tipo de objeto es esta columna.

write.table(datos, file = "datos.csv", sep = ",", row.names = F)