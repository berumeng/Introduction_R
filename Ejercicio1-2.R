#EJERCICIO 1. CREACION DE VECTORES

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

#EJERCICIO 2. CREAR VECTORES SOBRE PELÍCULAS

#Crear vectores sobre películas
pelicula <- c("Sherk 1", "Sherk 2", "Sherk 3", "Sherk 4")

#Crear vector numérico
calificacion <- c(7.9, 7.2, 6.1, 6.3)

#Crear un vector lógico sobre si la película fue hecha posterior a 2005
posterior_2005 <- c(FALSE, FALSE, TRUE, TRUE)

#Seleccionar la película Sherk 3

#Seleccionar película Sherk 1 y Sherk 4
pelicula[c(1,4)]

#Seleccionar pelicula posterior a 2005
pelicula[posterior_2005]

#Seleccionar película de puntuación menor a 7 (PUEDEN CREAR OTRO OBJETO, O BIEN USAR CONDICIONALES)
puntuacion_menor <- calificacion < 7 
puntuacion_menor
calificacion[puntuacion_menor]
pelicula[puntuacion_menor]