#EJERCICIO 5.
#Media, mediana y moda
Tarsus <- c(22.3, 19.7, 20.8, 20.3, 20.8, 21.5, 20.6,
            21.5)
Head <- c(31.2, 30.4, 30.6, 30.3, 30.3, 30.8, 32.5,
            NA)
Wt <- c(9.5, 13.8, 14.8, 15.2, 15.5, 15.6, 15.6,
          15.7)
 
Wingcrd <- c(59, 55, 53.5, 55, 52.5, 57.5, 53, 55)

sum(Head)
sum(Head, Wt)

#¿Sale bien el resultado?

#La opcion ‘‘na.rm = TRUE’’ sum retorna un resultado bueno
sum(Head, na.rm = TRUE)

#Formatos de datos
#Marco de datos
Example1 = data.frame(Wingcrd,Tarsus, Head, Wt)
#Realizar un boxplot para ver los datos
boxplot(Example1)
#matriz
matriz = as.matrix(cbind(Wingcrd,Tarsus, Head, Wt))
#Combinar variables en columna
Z <- cbind(Wingcrd, Tarsus, Head, Wt)
#cbind combinar varibles en una columna
#Acceder a valores de la primer columna
Example1[,1]
#Alternativamente, usar:
Example1[1 : 8, 1]

#Usar $ para acceder a variable... COLUMNA
mean(Example1$Tarsus)
median(Example1$Tarsus)
max(Example1$Tarsus)
min(Example1$Tarsus)

#OTRA
mean(Example1$Head, na.rm = TRUE)

#Guardar lo que hemos realizado
#¿Como saber en donde se guardará? 
#Ruta de trabajo en donde nos encontramos
getwd()

#Guardar separado por comas
write.table(Example1,
            file = "MaleSquid3.txt",
            sep = "")

#Guardar separado por tabs
write.table(Example1,
            file = "MaleSquid3.txt",
            sep = "\t")

