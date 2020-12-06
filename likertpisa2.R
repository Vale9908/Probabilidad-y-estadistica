#Análisis de datos en scala Likert

install.packages("likert")
install.packages("ggplot2")
library(likert)
library(ggplot2)

#para este ejercicio vamos a utilizar la matriz de datos
#de los resultados de la prueba PISA en 2009
#que se encuentra precargada en el paquete likert
#mediante el comando data
data("pisaitems")

#Le damos un nuevo nombre a la matriz de datos

pisaval<-pisaitems

#Exploramos la matriz de datos
names(pisaval)
typeof(pisaval)
str(pisaval)


#visualizamos los valores que componen una variable
head(pisaval$CNT)   
head(pisaval$ST24Q01)  

#buscamos los valores perdidos
anyNA(pisaval)#lo mismo que hicimos en el alfa cronbach para eliminar los d.p.
#numero total de datos perdidos en la matriz de datos 
sum(is.na(pisaval)) 
#eliminacion de filas con datos perdidos 
#y creamos una nueva matriz
pisa2val<-na.omit(pisaval)
#verificamos que la nueva matriz no tenga valores perdidos
anyNA(pisa2val)

head(pisa2val)

#Empezamos a trabajar con nuestra nueva matriz de datos


#--------VARIABLE 24--------
#Agrupamiento de items
names(pisa2val)
items24<-pisa2val[,2:12] 
head(items24[1:6,1:6])

#Renombramos las etiquetas de respuesta
levels(items24)<-c("Completamente en desacuerdo",
                   "En desacuerdo",
                   "De acuerdo",
                   "Completamente de acuerdo")
#no se cambio el idioma de las respuestas en los graficos
#colocar los nombres a los indicadores

names(items24)<-c("Leo si es necesario",
                  "Leer es de mis pasatiempos favoritos",
                  "Me gusta hablar de libros con otras personas",
                  "Encuento dificil terminar un libro",
                  "Me siento feliz sí recibo un libro como regalo",
                  "Para mi, leer es una pérdida de tiempo",
                  "Disfruto ir a una librería o bilioteca",
                  "Leo sólo para obtener la información que necesito",
                  "No puedo estar sentado leyendo por más de 5 minutos",
                  "Me gusta expresar mi opinion sobre un libro cuando lo he leído",
                  "Me gusta intercambiar libros con mis amigas-os")


l24val1<-likert(items24)

#Generamos el grafico de barras
plot(l24val1,type="bar",centered=FALSE)

#Grafico de barras con porcentajes
install.packages("plyr")
library(plyr)

plot(l24val1,type="bar",centered=TRUE, plot.percents=TRUE)#interpretarlo es mas fácil


#Grafico de barras ordenado
plot(l24val1,group.order = colnames(items24))

#Grafico de densidad

likert.density.plot(l24val1,facet=TRUE,bw=0.5, 
                    legend = "Gráfico de densidad")

#gráfico de calor
plot(l24val1, type="heat") 

#----- Variable 25-----

#agrupamiento de items
items25<-pisa2val[,substr(names(pisa2val),1,5)=='ST25Q'] 



#identificar las respuestas de agrupamiento
#y generamos una nueva variable.
names(items25)<-c("Revistas","Libros de Comics","Ficcion",
                  "Libros de no ficcion","Periodicos")
#si se cambio el idioma de los indicadores en los graficos
l25val2<-likert(items25)

#visualizamos los niveles en los que se agrupan
#los indicadores
head(l25val2)

#Generamos el gráfico de barras de las respuestas en conjunto.
plot(l25val2, type="bar", centered=FALSE)

#Grafico de barras con porcentajes
install.packages("plyr")
library(plyr)

plot(l25val2,type="bar",centered=TRUE, plot.percents=TRUE)

#Grafico de media y sd
#Activar la funcion plot.likert
#se encuentra en un script alterno.


plot.likert(as.numeric(pisa2val$ST24Q01),
            left="Completamente en desacuerdo",
            right="Completamente de acuerdo",
            plot.median=TRUE,
            plot.sd=TRUE)
        
#el grafico se genero al activar la funcion plot.likert con el script de Sasha W, 
#lo encontre en R bloggers que me redirecciono  a R crastinate, copie, pegue en un script nuevo y active la funcion.
#sinceramente no sabia debia modificar algo mas antes de activarlo, así que me arriesgue y lo active tal cual y se generó el grafico
