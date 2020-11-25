#generar numero aleatorios para una muestra de 35 personas en una 
#población de 73 alumnas/os del 5to semestre de la LEP BENV

sample(x, side, replace=True/FALSE)

#Ejemplo
sample(1:73,35, replace = FALSE)
sample(1:70,34, replace=FALSE)


#Ejercicios

#1.1- Calcula el tamaño de muestra para una poblacion de 
#83 alumnas y alumnos que se encuentran en primer grado
#de la Licenciatura en Educación Primaria de la BENV.

#1.2.- Una vez que obtengas el tamaño de la muestra, 
#selecciona el número de lista de las personas que formaran
#parte de la muestra.

#1.3.- Crea un vector llamado muestra con los números de 
#lista de las personas que forman parte de la muestra.

#N=83 alumnos 
#n=68 alumnos (68*0.57=39)


sample(1:83,39, replace = FALSE)

muestra<- c( 44, 37, 16, 77, 50, 78, 29, 64, 49, 62,  2, 42, 55,  8, 70, 21, 43, 71, 41, 74, 40, 13,  5,  1, 63,
             25, 58, 73, 19, 83, 24, 51, 59,  3, 60, 53, 57, 67, 15)


#2.- Repite el ejercicio anterios ahora para una poblacion
# de 90 alumnas y alumnos de integran el segundo año de la
#licenciatura en Educación Primaria de la BENV.

#N=90 alumnos
#n=73 alumnos (73*0.57=42)
sample(1:90,42, replace = FALSE)
muestraval<- c(4, 23,  5, 61, 81, 84, 30, 67, 77, 45, 85,  7, 44, 25, 50, 83, 90, 10, 72, 57, 66, 58, 41, 39, 16,
               15, 31, 51, 78, 22, 88, 35,  1, 73, 38, 79, 76, 14, 17, 34, 32, 28)


#3.- Determina el número e identifíca a las personas que participarán
#en un estudio de seguimiento de egresados de la generación
#2015-2019 de las 5 licenciaturas de la BENV.


#N= 305 egresados de la generacion 2015-2019.
#n=170...

#Primaria
#coeficiente de estrato= 0.55
#estrato de primaria= 78 personas egresadas.
#N=  78 personas 
#n=  65 personas (65*0.55=36)

sample(1:78,36, replace = FALSE)
muestraval1<- c(10, 37, 62, 77, 34,  4,  7, 39, 19, 41,  6, 75, 30, 59, 22, 15, 23, 33, 42, 18, 60, 36, 32,  1, 63,
                57,  8,  2, 40, 14, 67, 29, 25, 70, 46,  3)

#Preescolar: 84 personas egresadas.
#N=84 personas
#n=69 personas (69*0.55= 38)

sample(1:84,38, replace = FALSE)
muestraval2<- c(32, 84, 51, 60,  7,  4, 18, 49, 37, 67, 50, 41, 66, 71, 53, 40, 23, 43, 81, 27, 47, 30, 26, 36, 21,
                73, 11, 15, 72, 14,  9, 83, 45, 64, 42, 20, 44, 62)

#Física: 35 personas egresadas.
#N=35 personas
#n=32 personas  (32*0.55= 18)

sample(1:35,18, replace = FALSE)
muestraval3<- c(2, 26, 22, 18, 30, 15, 35, 34, 17, 13,  5,  1, 12, 32, 29,  4, 23, 25)

#Telesecundaria: 83 personas egresadas.
#N=83 personas
#n=68 personas (68*0.55= 38)

sample(1:83,38, replace = FALSE)
muestraval4<-c(29, 72, 40, 75, 46, 64, 35, 53, 22,  7, 31, 43, 24, 14, 17, 82, 76, 49, 32,  1, 81, 73, 55, 77, 57,
               48, 63, 39, 10, 15, 71, 58, 37, 16, 47, 66, 59, 61)

#Especial: 25 personas.
#N= 25 personas
#n= 24 personas  (24*0.55= 13)

sample(1:25,13, replace = FALSE)

muestraval5<-c(14, 10, 25,  8,  7,  2,  1, 21,  3, 12,  9, 23, 11)

