# Versión Jupyter Notebook
# https://nbviewer.jupyter.org/github/carlosal1015/Statistics-and-probability/blob/master/Inferential%20statistics/notebook/lab1_Carlos_Aznaran.ipynb
# Primera tarea de Estadística Inferencial
# Nombre: Carlos Aznarán Laos

# Pregunta 1
numbers = rnorm(16)
AA = matrix(
  data = numbers,
  nrow = 4,
  ncol = 4,
  byrow = TRUE,
  dimnames = list(
    c("Fila 1", "Fila 2", "Fila 3", "Fila 4"),
    c("Columna 1", "Columna 2", "Columna 3", "Columna 4")
  )
)
AA
print("El tipo de dato es")
print(class(AA))
new_object <- as.vector(c(AA[1, ], AA[ , 1]))
print("Hemos creado un")
print(class(new_object))
print("a partir de la matriz pedida.")
new_object

# Pregunta 2
civil = c('C', 'S', 'C', 'S', 'C', 'S', 'S')
my_factor = factor(civil, labels = c('C', 'S'))
my_factor

table(my_factor)

poisson = rpois(n = 16, lambda = 0.5)
A1 = matrix(
  data = poisson,
  nrow = 4,
  ncol = 4,
  byrow = TRUE,
  dimnames = list(
    c("Fila 1", "Fila 2", "Fila 3", "Fila 4"),
    c("Columna 1", "Columna 2", "Columna 3", "Columna 4")
  )
)
A1

xi_cuadrado = rchisq(n = 16, df = 3, ncp = 0.5)

A2 = matrix(
  data = xi_cuadrado,
  nrow = 4,
  ncol = 4,
  byrow = TRUE,
  dimnames = list(
    c("Fila 1", "Fila 2", "Fila 3", "Fila 4"),
    c("Columna 1", "Columna 2", "Columna 3", "Columna 4")
  )
)
A2

gamma = rgamma(n = 16, shape = 1, scale = c(1:16))

A3 = matrix(
  data = gamma,
  nrow = 4,
  ncol = 4,
  byrow = TRUE,
  dimnames = list(
    c("Fila 1", "Fila 2", "Fila 3", "Fila 4"),
    c("Columna 1", "Columna 2", "Columna 3", "Columna 4")
  )
)
A3

as.data.frame(A1)
as.list(A2)
as.factor(A3)

# Pregunta 4
exam_1 <- c(7, 6, 8)
exam_2 <- c(9, 6, 8)
homework <- c(8, 7, 9)
students <- c('Antonio', 'Berenice', 'Carlos')

grades <- data.frame(students, exam_1, exam_2, homework)
grades

print("Mostrar las notas de Antonio:"); grades[1, 2:4]
print("Mostrar las notas de Berenice:"); grades[2, 2:4]
print("Mostrar las notas de Carlos:"); grades[3, 2:4]

print("Mostrar las notas del primer examen:"); grades[2]
print("Mostrar las notas del segundo examen:"); grades[3]
print("Mostrar las notas de la tarea:"); grades[4]

print("Mostrar la nota máxima de Antonio:"); max(grades[1, 2:4]) 
print("Mostrar la nota máxima de Berenice:"); max(grades[2, 2:4])
print("Mostrar la nota máxima de Carlos:"); max(grades[3, 2:4])

print("Mostrar el promedio de notas de Antonio:"); as.vector(rowMeans(grades[-1]))[1]
print("Mostrar el promedio de notas de Berenice:"); as.vector(rowMeans(grades[-1]))[2]
print("Mostrar el promedio de notas de Carlos:"); as.vector(rowMeans(grades[-1]))[3]

summary(mtcars)
str(mtcars)
class(mtcars$vs)
# Autos con menos de 6 cilindros
mtcars[mtcars$cyl<6,]

# Más detalle en http://rpubs.com/angie_angie/465175