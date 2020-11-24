
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
#n=55 alumnos (68*0.81=55)

sample(1:83,55, replace = FALSE)

muestra<- c( 68, 54, 15, 18, 72, 35, 57, 31, 53, 16, 30, 8, 19, 62, 71, 75, 24, 64, 14,  5,  4, 51, 50, 33, 74,
            34, 82, 67, 12, 58, 52, 76, 21, 28, 55, 17, 44, 59, 26, 80,  1, 10, 70, 23, 11, 13, 56, 38, 77, 39,
            73, 43, 61, 46, 47)
#2.- Repite el ejercicio anterios ahora para una poblacion
# de 90 alumnas y alumnos de integran el segundo año de la
#licenciatura en Educación Primaria de la BENV.

#N=90 alumnos
#n=59 alumnos (73*0.81=59)
sample(1:90,59, replace = FALSE)
muestraval<- c(1, 79, 6, 36, 59, 40, 31, 37, 28, 62, 77, 80, 44,  9, 26, 87, 84, 72, 81, 39, 58, 27,  2, 68, 50,
 13, 63,  5, 67, 73, 64, 45, 16,  3, 17, 11, 66, 90, 10, 60, 56, 34, 70, 78, 52, 88, 41, 55, 83, 75,
 49, 12,  7, 61, 32, 82, 43, 54, 14)


#3.- Determina el número eidentifíca a las personas que participarán
#en un estudio de seguimiento de egresados de la generación
#2015-2019 de las 5 licenciaturas de la BENV.

#N= 805 egresados de la generacion 2015-2019.
#n=260 ...
#Primaria
#coeficiente de estrato= 0.32
#estrato de primaria= 78 personas egresadas.
#N=  78 personas 
#n=  65 personas (65*0.32=21)

sample(1:78,21, replace = FALSE)
muestraval1<- c(58, 19, 17, 38, 13, 16,  4, 48, 28, 30, 20, 60, 69, 62, 33, 47, 67, 78, 57, 34, 12)

#Preescolar: 84 personas egresadas.
#N=84 personas
#n=69 personas (69*0.32= 22)

sample(1:84,22, replace = FALSE)
muestraval2<- c(67, 40,  6, 16, 68, 39, 74, 19, 71, 84, 47, 28, 80, 50, 65, 78, 11, 64, 42,  2, 27, 33)

#Física: 35 personas egresadas.
#N=35 personas
#n=32 personas  (32*0.91= 11)

sample(1:35,11, replace = FALSE)
muestraval3<- c(29, 31, 20,  3,  9, 15, 35, 24, 10, 14, 28)

#Telesecundaria: 83 personas egresadas.
#N=83 personas
#n=68 personas (68*0.32= 22)

sample(1:83,22, replace = FALSE)
muestraval4<-c( 30, 35,  3, 33, 21, 12,  2, 37, 83, 11, 64, 24, 80, 61,  7, 51, 45, 47, 82, 55, 46, 10)

#Especial: 25 personas.
#N= 25 personas
#n= 24 personas  (24*0.32= 8)

sample(1:25,8, replace = FALSE)

muestraval5<-c(9,  7, 18,  6,  4, 19, 24, 22)
