#CREACIÓN DE VECTORES/OBJETOS
#Ejercicio 1. Sumas y restas de objetos

#Vector y que sume dos valores
y = 2+6
y

### R FUNCIONA POR COLUMNAS
x<- c(1,2,3,4)
x

y<- c(5,6,7,8)
y

#RESULTADO DE SUMAR SIN ASIGNAR VECTOR/OBJETO
z=x+y
z

#RESULTADO DE SUMAR ASIGNADO UN OBJETO 
z<-x+y
z

#¿que tipo de clase es?
class(z)
#¿Cuántos valores tiene el objeto?
length(z)
#Seleccionar el segundo valor
z[2]


#CREAR UN VECTOR SOBRE VALORES AL AZAR
#EJERCICIO 2. CREACIÓN DE DATA FRAMES

#Cargar/establecer valores 
Control <- c(1, 5, 9)
T1 <- c(11,13,15)
T2 <- c(20,29,30)

#Crear un data frame 
firmeza_df <- data.frame(Control, T1, T2)

#Mostrar en consola
firmeza_df

#Cambiar nombre del data.frame
names(firmeza_df) <- c("Testigo", "Tratamiento 1", "Tratamiento 2")

#Cambiar nombre data.frame (filas)
rownames(firmeza_df) <- c("Día 1", "Día 2", "Día 3")

#Mostrar filas y/o columnas a partir de un marco de datos
firmeza_df[1:2] #2 filas
firmeza_df[,1:2] ######columas 1 y 2 (LA COMA ANTES es para columnas)
firmeza_df[1:2, 1,3] #primero filas, luego columnas


#CREAR UN VECTOR SOBRE VALORES AL AZAR
#EJERCICIO 3. CREACIÓN DE MATRIZ

#Cargar/establecer valores 
Control <- c(1, 5, 9)
T1 <- c(11,13,15)
T2 <- c(20,29,30)

#Crear una matriz
matriz_1 <- matrix(c(Control, T1, T2), nrow = 3, ncol = 3) 

#Imprimir, mostrar 
matriz_1

#Agregar nombre por columna a los datos de la matriz
colnames(matriz_1) <- c("DATOS 1", "DATOS 2", "DATOS 3")

#imprimir consola
matriz_1

#Cambiar nombre de filas
rownames(matriz_1) <- c("Octubre", "Noviembre", "Diciembre")

#Imprimir 
matriz_1

#Seleccionar UN VALOR
matriz_1 [2,3] #selecciona filas, luego columnas
matriz_1 [,1] #, columnas
matriz_1 ["Noviembre", "DATOS 3"]
matriz_1 ["Diciembre", "DATOS 3"]
matriz_1 ["Octubre", "DATOS 2"]



