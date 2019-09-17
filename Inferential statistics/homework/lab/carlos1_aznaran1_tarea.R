# Datos personales: Carlos Alonso Aznarán Laos
# Curso: Estadística Inferencial
###############################################

setwd("/home/carlosal1015/Git_Projects/R/Statistics-and-probability/Inferential statistics/homework/lab")



# Pregunta 1:
# Crear un marco de datos de 5 columnas y 10 filas.
# Guardar el marco de datos.
# Se crea un marco de datos con la información:
# Nombre del conductor: Carácter
# Sexo del conductor: 
# Edad del conductor
# Estado civil del conductor:
# Fuma o no
write.csv(data.frame(
  conductor = c("Luis", "José", "José", "José", "Jorge", "Víctor", "Victor", "Carlos", "Eddy", "Eddy"),
  sexo = c("M", "M", "M", "M", "M", "F", "F", "F", "F", "F"),
  edad = c(21:30),
  civil = c(F, F, F, F, F, F, F, F, F, F),
  fuma = c(F, F, F, F, F, F, F, F, F, F)),
        file = "carlos1_aznaran1_1.csv", row.names = F, fileEncoding = "UTF-8")
# Pregunta 2:
# Seleccione un marco de datos y explique lo que ofrece dicho dato.
print("Vamos a tomar un marco de datos a partir de alguno proporcionado por R")
print("Listamos los marcos de datos disponibles")
data()
print("Decidimos emplear el marco de datos del número de pasajeros de una aerolínea comercial entre 1949-1960")
my_data  <- AirPassengers
class(my_data)
str(AirPassengers)
summary(AirPassengers)

write.csv(iris3, file = "carlos1_aznaran1_2.csv", row.names = TRUE, fileEncoding = "UTF-8")
# Pregunta 3:
# Abrir el archivo "info_peru.csv".

