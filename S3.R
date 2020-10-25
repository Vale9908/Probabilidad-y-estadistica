
install.packages("datos")
library(datos)

flores<-(datos::flores)

?flores #ayuda
dim(flores) #dimension
names(flores) #nombre de las variables
str(flores) #tipo de variable
anyNA(flores) #dato perdido
typeof(flores) #el formato de matriz de datos
View(flores) #visualizacion de la tabla (data frame)
flores_1<-as.data.frame(flores) #convertimos la matriz

summary(flores_1) #calculando las estadisticas descriptivas

#calcularemos la moda, primero tenemos que instalar
#paquete modeest y abrir la libreria
install.packages("modeest")
library(modeest)

#la funcion que utilizaremos para identificar la moda
#es mfv ()
mfv(flores_1$Largo.Sepalo)
mfv(flores_1$Ancho.Sepalo)
mfv(flores_1$Largo.Petalo)
mfv(flores_1$Ancho.Petalo)
mfv(flores_1$Especies)
#calculamos la varianza de cada una de las variables
#cuantitativas #diferencia entre cada valor y la moda
var(flores_1$Largo.Sepalo)
var(flores_1$Ancho.Sepalo)
var(flores_1$Largo.Petalo)
var(flores_1$Ancho.Petalo)
#calcular la desviacion estandar para las variables 
#cuantitativas # raiz cuadrada de la varianza
sd(flores_1$Largo.Sepalo)
sd(flores_1$Ancho.Sepalo)
sd(flores_1$Largo.Petalo)
sd(flores_1$Ancho.Petalo)


#calculamos el error
mean_1<-mean(flores_1$Largo.Sepalo)
error_1<-(flores_1$Largo.Sepalo-(mean_1))
error_1

#coeficiente de variacion
#instalar FinCal
install.packages ("FinCal")
library(FinCal)

#calculamos coeficiente de variacion
coefficient.variation(sd=sd(flores_1$Largo.Sepalo),
                      avg=mean(flores_1$Largo.Sepalo))
#interpretacion: el largo del sépalo de las 3 especies tiene
#un coeficiente de variacion del 0.14, lo multiplicamos por 100 y obtenemos
# el 14%, es decir, la variable largo del sépalo tiene un coeficiente de
#variación del 14% con respecto a la media.
#realizado en la consola

# se construiran los graficos

install.packages("tidyverse")
library("tidyverse")

install.packages("RColorBrewer")
library("RColorBrewer")

#Grafico de barras

#construccion de la tabla
attach(flores_1)
tabla_especies<-table(flores_1$Especies)

# visualizamos la variable x que contiene la columna de Especies
tabla_especies

# Especificamos la paleta de colores que vamos a utilizar
color = c("deepskyblue3", "greenyellow", "plum2")

# Construimos el gráfico de la variable x
barplot(tabla_especies, xlab="Especies", ylab="Frecuencias" ,
          main="Gráfico de barras de Especies", col=color)
#Boxplot
boxplot <- ggplot(flores_1, aes(factor(Especies),
                                     Largo.Sepalo, fill=Especies)) +
  geom_boxplot () +
  ggtitle("Boxplot del Largo del sepalo") +
  xlab("Especies") +
  ylab("Largo.Sepalo")
# visualizamos el gráfico
boxplot

# Diagrama de dispersión 1
dispersion_1<-ggplot(flores_1, aes(x=Largo.Petalo, y=Largo.Sepalo , color=Especies)) +
  geom_point()
#visualizacion del grafico
dispersion_1

# Diagrama de dispersión 2
attach(flores)
par(mfrow=c(1, 1))
dispersion_2<-plot(flores$Largo.Petalo, flores$Ancho.Petalo, pch=19,
                       col="purple",
                       xlab="Largo del pétalo",
                       ylab="Ancho del pétalo")
#diagrama de dispersion 3
dispersion_3<-ggplot(flores, aes(x=flores$Largo.Sepalo, y=flores$Ancho.Sepalo, 
                                 colour=Especies))+
  geom_point(alpha=.9)+
  xlab("Largo del sépalo")+
  ylab("Ancho del sépalo")

#visualizamos el gráfico
dispersion_3

#Diagrama de dispersion múltiple
pairs(flores[,1:4],pch=19,
      col=c("blue","green","orange")[flores[,5]])


#Histograma 1, visualizando la variable largo del pétalo

ggplot(flores,aes(x=Largo.Petalo))+
  geom_histogram(binwidth=0.1, col="black", fill="green", alpha=0.4)+
  xlab("Largo del pétalo")+
  ylab("Frecuencia")+
  ggtitle("Histograma del largo del pétalo")
#Histograma 2
par(mfrow=c(1,3))

hist(flores[1:50,3],main="Largo del pétalo (setosa)",
     xlab="",ylab="Frecuencias",col="red",breaks = "Sturges")+
  
  hist(flores[51:100,3],main="Largo del pétalo (versicolor)",
       xlab="", ylab="Frecuencias", col="blue",breaks = "Sturges")

hist(flores[101:150,3],main="Largo del pétado (virginica)",
     xlab="",ylab="Frecuencias", col="green",breaks = "Sturges")


