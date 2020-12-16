help(pnorm)
#distribucion normal
#X es una variable normalmente distribuida con una media de 30 y una desviación
#estándar de 4.

#a) Para X= 40
#mean= 30
#sd= 4

#La Ζ estandarizada es:
#Z=40-30/4


#P (X < 40) = P(Z < 2.5)

pnorm(2.5)
#0.9937903

pnorm(40,mean=30, sd=4, lower.tail=TRUE)
#0.9937903

#b) Para X= 21
#Z= 21-30/4 =-2.25
#P=(X > 21)=P(Z > -2.25)
pnorm(-2.25)
#0.01222447
pnorm(21,mean=30, sd=4, lower.tail=TRUE)
#0.01222447

#c) para P(30 < x < 35).

pnorm(35,mean=30, sd=4, lower.tail=TRUE) - pnorm(30,mean=30, sd=4, lower.tail=TRUE)
#0.3943502
#------------------------------------------------------------------------------
#X es una variable normalmente distribuida con una media de 45 y una desviación
#estándar de 2.
  
#a)P(x < 75)
#mean= 45
#sd= 2

#La Ζ estandarizada es:
#Z=75-45/2= 15

#P (X < 75) = P(Z < 15)
pnorm(15) # =1
pnorm(75,mean=45, sd=2, lower.tail=TRUE) #=1

#b) P( x > 13)

#Z=13-45/2= -16
#P (X > 13) = P(Z > -16)
pnorm(-16)
#0.6388754e-57
pnorm(13, mean=45, sd=2, lower.tail = TRUE)
#0.6388754e-57

#c) para P(60 < x < 82).

pnorm(60,mean=45, sd=2, lower.tail=TRUE) - pnorm(82,mean=45, sd=2, lower.tail=TRUE)
#-0.318634e-13
#-----------------------------------------------------------------------------

#El ingreso a una determinada universidad...
n=1000
hist(rnorm(n,500,100),20, col= "blue")
abline(v=585, col=2)

# identificar la probabilidad de que la variable x sea menor a 585 
#y si esto será mayor a los resultados obtenidos por al menos el 70% de los estudiantes
#que tomaron el examen
#Es P( X < 585) > 70%?
pnorm(585,mean=500, sd=100)

0.8023375 *100
#80.23375

#El ingreso a la BENV se determina mediante el la prueba estandarizada EXANII-II...
n= 2600
hist(rnorm(n,1000,100),20, col= "blue")
abline(v=1185,col=2)

#identificar la probabilidad de que la variable x sea menor a 1185
#y si esto será a mayor los resultados obtenidos por al menos el 90% de
#los estudiantes que tomaron el examen
#Es P(X<1185)>90%?
pnorm(1185,mean=1000, sd=100)
0.9678432*100
#96.78432
#-----------------------------------------------------------------------------------------
#prueba de hipótesis - tesis
set.seed(10)
x <-rnorm(100,10)
media <-10
test <- t.test (x,mu=10)
print (test)

# One Sample t-test

#data:  x
#t = -1.4507, df = 99, p-value = 0.15
#alternative hypothesis: true mean is not equal to 10
#95 percent confidence interval:
 # 9.676689 10.050213
#sample estimates:
 # mean of x 
#9.863451 

