#CREAR UN VECTOR SOBRE VALORES AL AZAR
#EJERCICIO 1. CREACIÓN DE DATA FRAMES

#Cargar/establecer valores 
Control <- c(1, 5, 9)
T1 <- c(11,13,15)
T2 <- c(20,29,30)

#Crear un data frame (marco de datos)
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


