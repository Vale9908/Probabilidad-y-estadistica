#paquete a utilizar
install.packages("userfriendlyscience")
library(userfriendlyscience)

#Exploramos la matriz de datos

dim(BD_Likert_csv_BD_Likert_csv)
names(BD_Likert_csv_BD_Likert_csv)
str(BD_Likert_csv_BD_Likert_csv)
typeof (BD_Likert_csv_BD_Likert_csv)

#valores perdidos
anyNA (BD_Likert_csv_BD_Likert_csv)
#localizar los valores perdidos
which(is.na(BD_Likert_csv_BD_Likert_csv))

BD_Likert_csv_BD_Likert_csv2<-na.omit(BD_Likert_csv_BD_Likert_csv)
#pasar los constructos a una tabla


attach (BD_Likert_csv_BD_Likert_csv2)
constructo1<-data.frame(A1,A2,A3,A4,A5,A6,A7,A8)
constructo2<-data.frame(B1,B2,B3,B4)
constructo3<-data.frame(C1,C2,C3,C4,C5,C6)
constructo4<-data.frame(D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13)
constructo5<-data.frame(E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,E11)
constructo6<-data.frame(F1,F2,F3,F4,F5,F6,F7,F8)
constructo7<-data.frame(G1,G2,G3,G4,G5,G6,G7,G8)
constructo8<-data.frame(H1,H2,H3,H4)



#Calculamos el alfa de Cronbach para cada
#uno de los constructos

scaleReliability(constructo1)
scaleReliability(constructo2)#buscar la funcion en google.. inR
scaleReliability(constructo3)
scaleReliability(constructo4)
scaleReliability(constructo5)
scaleReliability(constructo6)
scaleReliability(constructo7)
scaleReliability(constructo8)

#localizar los datos p. con names
#localizar el coeficiente del constructo 2,6 y 8
#construccion de constructos con el paquete dplyr
#libreria
names((BD_Likert_csv_BD_Likert_csv2))
const2<-select (BD_Likert_csv_BD_Likert_csv2,18,28,29,45)
const6<-select (BD_Likert_csv_BD_Likert_csv2,12,14,19,20,34,51,61,62)
const8<-select (BD_Likert_csv_BD_Likert_csv2,4,8,9,10)

#coeficiente alfa de C con paquete psych
alpha (const2)
alpha (const6)
alpha (const8)
