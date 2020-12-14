help (Distributions)
#activar el paquete stats

#Distribución binomial
#problema 1

#solucion1
# Probabilidad de escoger una respuesta correcta de 5 posibles
#p= 1/5

# Espacio muestral (12 preguntas en total)
#n=12

#Probabilidad de tener 4 respuestas correctas elegidas aleatoriamente
#k= 4

#Función en R
dbinom(4, size=12, prob=0.2)
#0.1328756

#solucion2
#Para encontrar la probabilidad de tener cuatro o menos respuestas correctas de forma aleatoria se utiliza la
#función dbinom con k=0,1,2,3,4.
#calcular la probabilidad
sum(dbinom(0:4, 12, 0.2))
#0.9274445

#solucion3
#encontrar la probabilidad de tener dos o tres respuestas correctas
sum(dbinom(2:3,12,0.2))
#0.519691

#problema2
# Probabilidad que tiene el iphone 11S de resultar defectuoso
#p= 0.005

# Espacio muestral (25 articulos)
#n=25

#Probabilidad de que una caja elegida al azar contenga un Iphone 11S
#defectuoso
#k=1

dbinom(1, size=25, prob=0.005)
# 0.1108317
#-----------------------------------------------------------------------------------------

#Distribucion poisson

# Probabilidad de que 35 alumnos lleguen en
#15 minutos a la entrada de la escuela
# x= número de alumnos
# lamda= tiempo de llegada.

#x=35
#lamda=15

dpois(35,15)
#0.4310664 e-05

# Probabilidad de que 50 alumnos lleguen en
#15 minutos a la entrada de la escuela

#x=50
#lamda=15

dpois(50,15)
#0.6413142e-12

#probabilidad de que a la escuela 
#lleguen 34 alumnos en 5 minutos
#x=34 alumnos
#lamda=5 minutos
dpois(34,5)
#0.1328444e-16

#la probabilidad de que a la salida de la escuela, 
#se encuentren 60 alumnos en 5 minutos
#x=60 alumnos
#lamda=5 minutos
dpois (60,5)
#0.7023491e-42

#probabilidad de que a la salida de la escuela, 
#se encuentren 120 alumnos en 5 minutos
#x= 120 alumnos
#lamda= 5 minutos
dpois (120,5)
#0.7577645e-117
#------------------------------------------------------------