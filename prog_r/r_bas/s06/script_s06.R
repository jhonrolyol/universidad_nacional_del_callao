

rm(list = ls())


x <- 1

class(x)
mode(x)
length(x)

A <- "Facultad"
valor <- TRUE
l <- 1i

mode(A); mode(valor); mode(l)
class(A); class(valor); class(l)


# Vectores numéricos

x<-c(1,2,3,4,5)
x
y<-c(4,x,8)
y

# Aritmética vectorial
z <- 5:15
sum(z)
mean(z)
max(z)

# Secuencias en vectores
s<-2*1:15
s

seq(from=2,to=30,by=2)
seq(2,30,2)


rep(x=1:4, times=c(2,2,2,2))
rep(x=1:4, times=c(2,1,2,1))
rep(x=1:4, each=2)

# Vectores lógicos
x<-c(1,4:8,10:5,7) 
x

x>5
x==5

# Operadores lógicos
##      Simbolo Expresa        
## "<"     "menor"        
## "<="    "menor o igual"
## ">"     "mayor"        
## "=="    "igual"        
## "!="    "diferente"    
## "&"     "intersección" 
## "|"     "unión"        
## "!"     "negación"


# Puedo transfomar un vector lógico en un vector numérico

z<-c(1:4,NA,6:3,NA)
z

x<-is.na(z)
x


complete.cases(z)
x
as.numeric(x)

# Vectores de texto
nombres<-c("Andrés","Pedro","Ana")
apellido<-c("López","Ortega","Perez")
paste(nombres,apellido)
paste(nombres,1:3,sep = ":")


# Filtrar elementos de un vector
edad <- c(15, 19, 13, NA, 20,NA)
edad[3] # filtrar elemento 3
edad[c(2, 5)] # filtrar elementos 2 y 5
edad[-3] # filtrar todo, menos el elemento 3
edad[-c(2, 5)] # filtrar todo, menos los elementos 2 y 5
edad[!is.na(edad)] #filtra todo sin datos NA


# Ejercicios




# Matrices
mimatriz <- matrix(data=1:20, nrow=4, ncol=5, byrow=FALSE)
mimatriz

# Filtros en matrices
mimatriz[3, 4] # Filtros de elementos
mimatriz[, 5] # Filtro de columna
mimatriz[, -c(2, 4)] # Filtro quitando columnas 2 y 4




idalumno<-1:6
calificacion<-c(90,92,89,69,70,90)
matriz1<-rbind(idalumno,calificacion)


alumno7<-c(7,80,6)
alumno8<-c(8,90,6)

matriz2<-cbind(alumno7,alumno8)
matriz2

# Arrays o arreglos
miarray <- array(data=letters[1:16], dim=c(2, 4, 2))
miarray


set.seed(300) # Semilla

calif<-rnorm(24,90,5) # Vector aleatorio
calif




dim(calif) # No tiene dimensiones

dim(calif)<-c(6,4) #Le doy dimensiones
calif

# Ejercicios

# Data frame o marco de datos
miDf01 <- data.frame(
  numbers = c(1, 2, 3, 4), 
  logicals = c(TRUE, TRUE, FALSE, TRUE), 
  characters = c("a", "b", "c", "d")
)
print(miDf01)


# Filtros en data frame
mimarco$deporte #se filtra la variable deporte

mimarco[, 2]

mimarco[["deporte"]]

mimarco[c("deporte", "edad")]

# Función subset
subset(mimarco, subset=deporte == TRUE) # Quienes practican deporte

subset(mimarco, subset=edad >= 17) #Mayores de 17 años

subset(mimarco, 
       subset=edad < 20, 
       select=c('deporte', 'comic_fav')) #deporte y comic de los menores de 20 años 

# Listas

mivector <- runif(n=5)
matriz2 <- matrix(data=1:10, ncol=5)
milista <- list(E1=mivector, E2=matriz2, E3=mimarco)
milista


milista <- list(E1=mivector, E2=matriz2, E3=mimarco)
milista[[3]][,2]


milista$E3[3]

# Ejercicios








