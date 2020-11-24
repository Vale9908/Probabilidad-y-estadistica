
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

(muestra<-sample(1:83,55, replace = FALSE))


#2.- Repite el ejercicio anterios ahora para una poblacion
# de 90 alumnas y alumnos de integran el segundo año de la
#licenciatura en Educación Primaria de la BENV.

#N=90 alumnos
#n=59 alumnos (73*0.81=59)
(muestra<-sample(1:90,59, replace = FALSE))


#3.- Determina el número e identifíca a las personas que participarán
#en un estudio de seguimiento de egresados de la generación
#2015-2019 de las 5 licenciaturas de la BENV.

#Primaria: 78 personas egresadas.
#N=  78 personas 
#n=  54 personas (65*0.83=54)

(muestra<-sample(1:78,54, replace = FALSE))

#Preescolar: 84 personas egresadas.
#N=84 personas
#n=56 personas (69*0.82= 56)

(muestra<-sample(1:84,56, replace = FALSE))
#Física: 35 personas egresadas.
#N=35 personas
#n=29 personas  (32*0.91= 29)

(muestra<-sample(1:35,29, replace = FALSE))

#Telesecundaria: 83 personas egresadas.
#N=83 personas
#n=55 personas (68*0.81= 55)

(muestra<-sample(1:83,55, replace = FALSE))

#Especial: 25 personas.
#N= 25 personas
#n= 23 personas  (24*0.96= 23)

(muestra<-sample(1:25,23, replace = FALSE))

