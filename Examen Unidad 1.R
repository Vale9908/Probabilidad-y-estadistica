#Examinación de la unidad 1, inserta el código para
#activar lo que se te indica. Guarda tu script y envíalo
#por classroom antes del martes.
#Importante: En caso de detectar plagio, se te anulará
#el apartado correspondiente.


#Vas a trabajar con la matriz de datos
#"millas" que se te proporciona a continuación.

millas<-datos::millas


#Realizar los siguientes pasos:
#1.- Explora la matriz de datos millas 
#valor: 5 puntos por comando correcto.
?millas
dim(millas)
names(millas)  
str(millas)
anyNA(millas)
typeof(millas)
View(millas)


#data frame millas_5
millas_5<-as.data.frame(millas)

#2.- Determina las medidas estadísticas descriptivas
#y de variablidad
#Importante: no calcules los errores.

summary(millas_5)
#instalar el paquete de modeest
install.packages("modeest")
library(modeest)

#identificar la moda de cada variable - mfv
#anotar la variable despues del signo de pesos
mfv(millas_5$fabricante)
mfv(millas_5$modelo)
mfv(millas_5$cilindrada)
mfv(millas_5$anio)
mfv(millas_5$cilindros)
mfv(millas_5$transmision)
mfv(millas_5$traccion)
mfv(millas_5$ciudad)
mfv(millas_5$autopista)
mfv(millas_5$combustible)
mfv(millas_5$clase)
#calcular la varianza de las variables cuantitativas
#no calculamos los cualitativos
var(millas_5$cilindrada)
var(millas_5$anio)
var(millas_5$cilindros)
var(millas_5$autopista)
var(millas_5$ciudad)

#calcular la desviacion standar
sd(millas_5$cilindrada)
sd(millas_5$anio)
sd(millas_5$cilindros)
sd(millas_5$autopista)
sd(millas_5$ciudad)

#calcular el coeficiente de variacion

install.packages("FinCal")
library(FinCal) 

coefficient.variation(sd=sd(millas_5$cilindrada),
                      avg=mean(millas_5$cilindrada))
coefficient.variation(sd=sd(millas_5$anio),
                      avg=mean(millas_5$anio))
coefficient.variation(sd=sd(millas_5$cilindros),
                      avg=mean(millas_5$cilindros))
coefficient.variation(sd=sd(millas_5$autopista),
                      avg=mean(millas_5$autopista))
coefficient.variation(sd=sd(millas_5$ciudad),
                      avg=mean(millas_5$ciudad))
install.packages("tidyverse")
library("tidyverse")

install.packages("RColorBrewer")
library("RColorBrewer")


#3.- Construye:

#A) Un gráfico de dispersión con las variables cilindrada y autopista
    #el color lo indica la variable clase. 
    #Valor Total: 20 puntos
    #(10 puntos por comando activado correcto).
    #(10 punto por la generación del gráfico).
dispersion_1<-ggplot(millas_5,aes(x=cilindrada, y=autopista, color=clase))+
    geom_point()
#ver el grafico 
dispersion_1


#B) Un gráfico boxplot con las variables transmisión y ciudad
    #El color lo indica la variable transmisión    
    #El título del gráfico es Transmisión de autos en ciudad
    #Coloca la etiqueta "Transmisión" en el eje x 
    #Coloca la etiqueta "Ciudad" en el eje y 
    #Valor Total: 20 puntos
    #(10 puntos por comando activado correcto).
    #(10 punto por la generación del gráfico del gráfico).

 
#Boxplot
boxplot<-ggplot(millas_5,aes(factor(transmision), 
                             ciudad, fill=transmision))+
    geom_boxplot()+
    ggtitle("Transmisión de autos en ciudad")+
    xlab("transmision")+
    ylab("ciudad")
#ver el grafico
boxplot


#C) Un gráfico de barras para la variable "cilindros" 
    #Valor Total: 20 puntos
    #(10 puntos por comando activado correcto).
    #(10 punto por la generación del gráfico).

#Construcción de la tabla 
attach(millas_5)
tabla_cilindros<-table(millas_5$cilindros)

#ver la variable x -columna cilindros
tabla_cilindros

#colores
color=c("cyan4","lightpink","darkturquoise","mediumpurple1")

#Construimos el gráfico de la variable x
barplot(tabla_cilindros,xlab="cilindros", ylab="frecuencias", 
        main="Gráfico de barras de cilindros", col=color)
