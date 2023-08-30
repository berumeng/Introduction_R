setwd("/Users/berumen/Desktop/UAN/Clases/Posgrado/CBAP/2020/Análisis_visualización_datos_R/")
library(dplyr)
library(tidyr)
mydata = read.csv("sampledata.txt")

#Ver cuantos datos tengo
sample_n(mydata, 3)
#Conservar solo filas distintas
x1=distinct(mydata)
#conservar filas distintas con base a la columna Index
#.keep_all TRUE, que conserve las demas variables (columnas)
x2=distinct(mydata, Index, .keep_all = TRUE)
#conservar filas distintas con base a las variables (dos columnas) Index y Y2010
x2=distinct(mydata, Index,Y2010, .keep_all = TRUE)

#SELECT, seleccionar solo las variables Index, y de State hasta Y2008 (: significa hasta)
mydata2 = select(mydata, Index, State:Y2008)

#select, el símobolo "menos" (-) significa que elimine una variable
mydata11=select(mydata, -Index, -State)
mydata12=select(mydata, c(Index, State))

#seleccionar con base a la función "starts_with"
mydata3 = select(mydata, starts_with("Y"))
#seleccionar variables que contengan "I" en el nombre
mydata4 = select(mydata, contains("I"))

#cambiar el nombre de la variable Index por letras
#colocar el nuevo nombre de la variable
mydata6=rename(mydata, Letras=Index)

#uso de filter
#Crear un nuevo marco de datos que contenga Las LETRAS A
# DOBE IGUAL (==) es igual a, 
mydata7= filter(mydata, Index=="A")

#el operador %in% se usa para seleccionar múltiples elementos de fila
mydata8 = filter(mydata, Index %in% c("A","C"))

#filtrar, incluyendo la condición "Y" usando &
mydata9=filter(mydata, Index %in% c("A", "C") & Y2002 >= 1300000 )

#| Significa O... en el criterio de seleccion
mydata99 = filter(mydata, Index %in% c("A", "C") | Y2002 >= 1300000)

#Símbolo !, es el contrario de lo que indica...es decir
#todo menos A y C
mydata10 = filter(mydata, !Index %in% c("A", "C"))

#USO del operador PIPE %>%
#Seleccionar 10 observaciones al azar de las variables "Index" y "State"
dt = sample_n(select(mydata, Index, State),10)

dt = mydata %>% select(Index, State) %>% sample_n(10)

#EXTRAER LOS DOS VALORES TOP DE LAS FILAS A, C, I...
#group by__ agruparlo por INDEX, para que sepa elegir el valor
t = mydata %>% 
  filter(Index %in% c("A", "C","I")) %>% 
  group_by(Index) %>% 
  do(head( . , 2))


t1 = mydata %>%
  group_by(Index)%>%
  summarise(Mean_2014 = mean(Y2014, na.rm=TRUE),
            Mean_2015 = mean(Y2015, na.rm=TRUE)) %>%
  arrange(desc(Mean_2015))

#mutate, agrega una variable (columna)
mydata100 = mutate(mydata, change=Y2015/Y2014)

#Seleccionar el estado que genere mayor ingreso
out = mydata %>% 
  group_by(Index) %>% 
  filter(min_rank(desc(Y2015)) == 1) %>%
  select(Index, State, Y2015) 

  
# INNER JOIN
df1 = data.frame(ID = c(1, 2, 3, 4, 5),
                   w = c('mama', 'betty', 'corina', 'doroteo', 'eduardo'),
                   x = c(1, 1, 0, 0, 1),
                   y=rnorm(5),
                   z=letters[1:5])
df2 = data.frame(ID = c(1, 7, 3, 6, 8),
                 a = c('zote', 'betty', 'kota', 'doroteo', 'lineo'),
                 b = c(1, 2, 3, 0, 4),
                 c =rnorm(5),
                 d =letters[2:6])

#unir marco de datos
#INNER INNER JOIN regresa filas cuando hay match en ambas tablas usando ID como variable
df3 = inner_join(df1, df2, by = "ID")

#LEFT JOIN regresa TODAS las filas de la tabla "izquierda" aunque no haya match en la derecha
df4 = left_join(df1, df2, by = "ID")

#Transponer
df5 = pivot_wider(df3,
  names_from = "w", values_from = "ID")

#COMBINAR DATAFRAMES
df1=data.frame(ID = 1:6,  x=letters[1:6])
df2=data.frame(ID = 7:12, x=letters[7:12])

#Transponer
df6=pivot_wider(df1, names_from = "x", values_from = "ID")

#combina dos sets de datos con las filas
xy = bind_rows(df1,df2)
xy = rbind(df1,df2)

#combina dos sets de datos con columnas
xy = bind_cols(df1,df2)
xy2 = cbind(df1,df2)