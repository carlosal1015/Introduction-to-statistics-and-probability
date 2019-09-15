###############################################################################################
##### Data Frame
###############################################################################################

## Es un arreglo bidimensional que se utiliza para almacenar conjuntos de datos.
## En este caso las columnas representan variables y las filas las observaciones, a diferencia de una matriz 
## en este caso las columnas de un data frame pueden ser de distinto tipo. Además es posible asignar nombre 
## a las columnas y a través de estos se puede acceder a los datos de las columnas. 

setwd("E:/UNI/estadistica_inferencial/data_peru")

### 1. CREACION DE UN DATA FRAME
###############################################################################################

## usaremos los siguientes datos como insumos

x=c(1,2,3,4,5)

z=c("A","B","C","D","E")

w=c(FALSE,FALSE,TRUE,TRUE,TRUE)

## Podemos crear un data frame utilizando la funcion data.frame()

datos=data.frame(x,z,w)

datos

## accedemos a la columna w del data frame datos

datos$w

## otra forma de acceder a la columna w

datos[,3]

## ubicar las filas donde x es mayor a 2

datos[datos$x>2,]


### 2. DATA FRAMES USANDO LA DATA DE R
###############################################################################################

## R ofrecedatos para practicar


## mostrar la data que ofrece R

data()

## Selecionar y visualizar una de las tantas datas que ofrece R, con la funcion View()

View(esoph) #Smoking, Alcohol and (O)esophageal Cancer

## mostrar el tipo de objeto que representa la data selecionada 

class(esoph)

## creando un data frame con la data disponible

cancer=data.frame(esoph)
cancer

### 3. LECTURA DE DATOS 
###############################################################################################

## Existen diversas funciones para la lectura de un conjunto de datos, una de las más sencillas 
## es read.csv("archivo_a_leer.csv"), el cual lee un archivo en formato csv y crear un objeto de tipo data frame


## indica la direccion de donde se guardar y leera por defecto la data

setwd("E:/UNI/estadistica_inferencial/data_peru")

## lectura de un archivo csv llamado info_peru.csv

# sep indica en base a que signo va separar los datos
# header indica si debe colocar las cabeceras 

peru=read.csv("info_peru.csv", sep = ",", header = TRUE)   

# que objeto es peru

class(peru)

# visualizar el data frame peru
View(peru)

### 4.  GUARDAR UN DATA FRAME  DE R EN UN  ARCHIVO DE TIPO CSV
###############################################################################################

## Debe usar la funcion write.csv()

## guardaremos el data frame creado en el punto 1, llamado datos

write.table(datos,file = "E:/UNI/estadistica_inferencial/datos.csv", sep = ",", row.names = F)

## otra forma de guardar

write.csv(datos,file = "E:/UNI/estadistica_inferencial/datos.csv", row.names = F)


## otra forma de guardar

datos= as.data.frame(cbind(x,z,w)) 
datos

datos$x=as.numeric(datos$x) # declaro que tipo de objeto es esta columna

datos$z=as.character(datos$z) # declaro que tipo de objeto es esta columna

datos$w=as.logical(datos$w) # declaro que tipo de objeto es esta columna

write.table(datos,file = "E:/UNI/estadistica_inferencial/datos.csv", sep = ",", row.names = F)






