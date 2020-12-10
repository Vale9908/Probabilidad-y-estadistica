#Análisis de datos en scala Likert

install.packages("likert")
install.packages("ggplot2")
library(likert)
library(ggplot2)

#para este ejercicio vamos a utilizar la matriz de datos
#de los resultados de la prueba PISA en 2009

data("pisaitems")
#Le damos un nuevo nombre a la matriz de datos

pisavale<-pisaitems
#Exploramos la matriz de datos
names(pisavale)
typeof(pisavale)
str(pisavale)

#visualizamos los valores que componen una variable
head(pisavale$CNT)   
head(pisavale$ST26Q01)

#buscamos los valores perdidos
anyNA(pisavale)

#numero total de datos perdidos en la matriz de datos 
sum(is.na(pisavale)) 
#eliminacion de filas con datos perdidos 
#y creamos una nueva matriz
pisa2vale<-na.omit(pisavale)
#verificamos que la nueva matriz no tenga valores perdidos
anyNA(pisa2vale)

head(pisa2vale)
#Empezamos a trabajar con nuestra nueva matriz de datos


#--------VARIABLE 26--------
#Agrupamiento de items


names(pisa2vale)
items26<-pisa2val[,18:24] 
head(items26[1:7,1:7])


#Renombramos las etiquetas de respuesta
levels(items26)<-c("no se que es",
  "Nunca o casi nunca",
  "Varias veces al mes",
  "Varias veces a la semana", "varias veces al día")

names(items26)<-c("Leer correos electrónicos",
                  "Chatear en línea",
                  "Leer noticias online",
                  "Usando un diccionario en línea o
                  enciclopedia",
                  "Buscando información en línea para
                  aprender sobre un tema en particular",
                  "Participar en un grupo online
                  discusiones o foros",
                  "Buscando practicas
                  información en línea")
l26val1<-likert(items26)

#Generamos el grafico de barras
plot(l26val1,type="bar",centered=FALSE)

#Grafico de barras con porcentajes
install.packages("plyr")
library(plyr)

plot(l26val1,type="bar",centered=TRUE, plot.percents=TRUE)
