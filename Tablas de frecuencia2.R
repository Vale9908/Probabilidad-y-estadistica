#Tema: Tabla de frecuencias

#1.- Leer la matriz de datos
data (iris)

#2- Exploramos la matriz de datos 
names (iris)

#3 Explorar la dimension de la matriz 
dim (iris)

#4 identificar los tipos de variables 
str(iris)

#5 detecta si hay valores perdidos
anyNA (iris)

#6 explorar una variable
iris$Species

iris$Sepal.Length

#7.- Revisamos el tipo de matriz de datos

typeof(iris)

#8.- Convertimos la matriz de datos a un data frame y despues agrupamos los valores para la  variable Petal. Lenght y se calcula la frecuencia absoluta

tabla_PL<-as.data.frame(table(PL = iris$Petal.Lenght))

#9.- Mostramos la tabla de contingencia para la variable PL con su respectiva frecuencia absoluta

tabla_PL

#10.- Se construye la tabla de frecuencias completas redondeando las frecuencias absolutas a 3 decimales

transform(tabla_PL,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3), 
          RelAc=round(cumsum(prop.table(Freq)),3))

#11.- Agruparemos las variables en 10 clases y se calcula la frecuencia absoluta

tabla_clases<-as.data.frame(table
                            (Petal.lenght =factor
                              (cut(iris$Petal.Length,
                                   breaks = 9))))

#12.- visualizamos la tabla de clases

tabla_clases

#13 Contribucion de la tabla de frecuencias completa redondeando las frecuencias relativas a 3 decimales

transform(tabla_clases, 
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))