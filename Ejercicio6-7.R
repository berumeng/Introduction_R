# EJERCICIO 6. Unir dos datasets 
#Merge

#Colocar la ruta de trabajo con setwd
#el setwd es personal (independiente, de cada persona)
setwd("/Users/berumen/Desktop/UAN/Clases/Licenciatura/Biología/bio_a_de_datos/Ago_dic21")  # on Mac

#marco de datos
#Autores
authors <- data.frame( 
  name = c("kapil", "sachin", "Rahul","Nikhil","Rohan"), 
  nationality = c("US","Australia","US","UK","India"), 
  retired = c("Yes","No","Yes","No","No"))
#libros
books <-data.frame(  
  name = c("C", "C++","Java","php",".net","R"), 
  title = c("Intro to C","Intro to C++",  
            "Intro to java", "Intro to php",  
            "Intro to .net", "Intro to R"), 
  author = c("kapil", "kapil","sachin", "Rahul", 
             "Nikhil","Nikhil"))

#Unir los dos marcos de datos por nombre y autor
merge_sin_nada = merge(authors, books)

merge_name <- merge(authors, books, by.x = "name", by.y = "author") 

#Guardar estos datos
#exportarlo como formato .txt
write.table(merge_name, file = "Tabla1_autores.txt", sep = "\t") #sep = "\t" significa separado por tabs 

#Exportar 
write.table(merge_name, file = "Merge_excercise6.txt", sep = "\t")

#EJERCICIO 7. 
#Establecer la ruta de trabajo
setwd("/Users/berumen/Desktop/bio_a_de_datos/Ago_dic21") 

#Leer el archivo squid.txt
Squid <- read.table(file = "squid.txt", header = TRUE)

#Nombre de los encabezados
names(Squid)
#Tipo de 
str(Squid)

#Signo $
Squid$GSI
Squid[ , 6]
#Media (promedio de GSI)
mean(Squid$GSI)

#Acceder a un subset de datos
#Columna "Sex" el 1 significa masculino, 2 significa femenino
#Seleccionar columna "Sexo" de uno de los data.frame creados
Squid$Sex
#Selecciona los valores únicos de la columna elegida
unique(Squid$Sex)

#Crear un vector llamado Sel que tenga misma longitud que variable sex
#Valores son TRUE (verdaderos) si el sexo es igual a 1
#Valores son Falso si no es igual a uno
#Sirve para seleccionar FILAS
Sel <- Squid$Sex == 1
SquidM <- Squid[Sel, ]
SquidM

#Guardarlo como vector en SquidM.
#[] ya que estamos seleccionando filas de Squid
#como vamos a querer los valores de Sel, debe ir antes de una coma
#OTRA FORMA, COMBINANDO TODO EN UNA SOLA LÍNEA
SquidM <- Squid[Squid$Sex == 1, ]
SquidM

#HACER EL DE MUEJERES
SquidF <- Squid[Squid$Sex == 2, ]
SquidF

#Exportar los archivos a la computadora
#1
write.table(SquidM, file = "MaleSquid.txt", sep = " ", quote = FALSE, append = FALSE, na = "NA")
#2
write.table(SquidM, file = "MaleSquid.txt", sep = ",", quote = TRUE, append = FALSE, na = "NA")

#Leer archivos llamados squid
Sq1 <- read.table(file = "squid1.txt", header = TRUE)
Sq2 <- read.table(file = "squid2.txt", header = TRUE)

#Uso del comando MERGE
#Combinar dos set de datos con un común identificador 
SquidMerged <- merge(Sq1, Sq2, by = "Sample")
SquidMerged

#OTRA FORMA
#Uso comando MERGE
#Agregar opcion all=TRUE para que si 
#tiene un valor al menos una columna, se tome en cuenta
SquidMerged2 <- merge(Sq1, Sq2, by = "Sample", all = TRUE)
SquidMerged2

#DESVIACIÓN ESTÁNDAR DE MERGED2
sd(SquidMerged2$GSI, na.rm=TRUE)
