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

#EJERCICIO 4. CREACIÓN DE DATA FRAMES

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

##DATOS COVID EN NAYARIT 2020###

#TEPIC
#ACTIVOS 332
#DEFUNCIONES 233
#RECUPERADOS 2270

#SANTIAGO
#Activos	48
#Defunciones	57
#Recuperados	302

#CREAR UN/DOS/TRES OBJETOS CON LOS DATOS DE ARRIBA
Tepic <- c("Activos", "Defunciones", "Recuperados")
Tepic_casos <- c(332, 233, 2270)
Santiago <- c("Activos", "Defunciones", "Recuperados")
Santiago_casos <- c(48, 57, 302)

#marco datos
TEPIC1 = data.frame(Tepic, Tepic_casos)
SANTIAGO1 = data.frame(Santiago, Santiago_casos)

#COMANDO HACEN ACTIVOS, DEFUNCIONES, RECUPERADOS DE TODOS
Sumatoria <- Tepic_casos + Santiago_casos
Sumatoria

#¿CUANTO ES LA SUMATORIA DE EL NÚMERO DE CASOS ACTIVOS EN AMBOS MUNICIPIOS?
Tepic_1 <- ("Activos")
Tepic_activo <- (332)
Santiago_1 <- ("Activos")
Santiago_activo <- (48)

Casos_activos <- Tepic_activo + Santiago_activo
Casos_activos

#¿CUANTO ES LA SUMATORIA DEL NÚMERO DE CASOS DEFUNCIONES EN AMBOS MUNICIPIOS?
Tepic_2 <- ("Defunciones")
Tepic_defunciones <- (233)
Santiago_2 <- ("Defunciones")
Santiago_defunciones <- (57)

Casos_defunciones <- Tepic_defunciones + Santiago_defunciones
Casos_defunciones

#¿CUANTO SUMAN LOS RECUPERADOS (SANTIAGO Y TEPIC)?
Tepic_3 <- ("Recuperados")
Tepic_recuperados <- (2270)
Santiago_3 <- ("Defunciones")
Santiago_recuperados <- (302)

Casos_recuperados <- Tepic_recuperados + Santiago_recuperados
Casos_recuperados

#SUMATORIA RAPIDA
Casos_activos_sumatoria = Tepic_casos [1] + Santiago_casos [1]
Casos_activos_sumatoria
