

  datos<-c(265, 197, 349, 280, 265, 200, 221, 265, 261, 278,
           205, 286, 317, 242, 254, 235, 174, 262, 248, 250,
           263, 274, 242, 260, 281, 246, 248, 271, 260, 265,
           307, 243, 258, 321, 294, 328, 263, 245, 274, 270,
           220, 231, 276, 228, 223, 296, 231, 301, 337, 298,
           268, 267, 300, 250, 260, 276, 334, 280, 250, 257,
           260, 281, 208, 299, 308, 264, 280, 274, 278, 210,
           234, 265, 187, 258, 235, 269, 265, 253, 254, 280,
           299, 214, 264, 267, 283, 235, 272, 287, 274, 269,
           215, 318, 271, 293, 277, 290, 283, 258, 275, 251)
# Y luego graficamos:
  

  hist(datos, main="Histograma",
       col="lightblue",border="darkblue",
       ylab = "Eje de las Ordenadas", 
       xlab = "Eje de las Abcisas")
  


# Histograma de Densidad

  hist(datos, main="Histograma",col="red",border="skyblue",
       ylab = "Eje de las Ordenadas", 
       xlab = "Eje de las Abcisas",prob=TRUE)
  lines(density(datos),lwd=2.5,col="darkgreen")
  



# Diagrama de barras
  
  datos<-c(3, 5, 5, 4, 5, 5, 3, 5, 3, 5, 4, 1, 3, 3, 5,
           1, 5, 5, 5, 5, 5, 5, 4, 4, 2, 5, 5, 4, 4, 5,
           4, 4, 4, 4, 5, 4, 5, 5, 5, 5, 5, 4, 5, 3, 3, 
           4, 4, 5, 5, 4, 5, 5, 4, 3, 3, 5, 4, 5, 5, 3, 
           3, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 4, 5, 
           4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5)
  
  tabla<-table(datos)
  
  barplot(tabla, main = "Gráfico de Barras", 
          xlab = "Puntuación",
          ylab = "Frecuencia Absoluta", 
          col = "lightgreen", border = "darkgreen")

  
  
  barplot(prop.table(tabla), main = "Gráfico de Barras", 
          xlab = "Puntuación", 
          ylab = "Frecuencia Relativa", 
          col ="lightblue", border = "darkblue")
  
  
  
  # Gráficos circulares
  
  # Gráficos 2D
  etiquetas<-paste("Con puntuación ",
                   names(tabla),"\n hay ",
                   tabla, sep="")
  
  pie(tabla, main = "Gráfico Circular", 
      col = rainbow(length(tabla)),
      labels = etiquetas)
  
  # Gráficos 3D
  # Para ello debemos installar el paquete plotrix con:
  
  #install.packages("plotrix")
  library(plotrix)

  pie3D(tabla,main="Gráfico circular de puntuaciones",
        labels = names(tabla),
        col = rainbow(length(tabla)))
  
  
  # Diagrama de Pareto
  #install.packages("qcc")
  library(qcc)

  ## Warning: package 'qcc' was built under R version 4.0.2
  ## Package 'qcc' version 2.7
  ## Type 'citation("qcc")' for citing this R package in publications.
  Tabla<-pareto.chart(tabla, main="Diagrama de Pareto",
                      xlab="Puntuación", ylab="Frecuencia",
                      ylab2="Porcentaje Acumulado",
                      col=rainbow(length(tabla)))
  
  Tabla 
  
  
  # Diagrama de cajas
  
  iris
  attach(iris)
  summary(iris)
  boxplot(iris$Sepal.Width ~ iris$Species,
          col=rainbow(length(tabla)), 
          main="Diagrama de Cajas", 
          xlab = "Especie de Iris",
          ylab = "Ancho de Sépalo")
  
  # Diagrama de tallos y hojas
  dato<-iris[1:20,] #aleatoriamente 20.
  
  dato
  
  stem(dato$Sepal.Length)
  
  
  # Gráficos de dispersión
  # Matriz de diagramas de dispersión 
  
  color<-c(2,3,4)[unclass(iris$Species)]
  pairs(iris[1:2],
        main="Diagrama de Dispersión",
        pch=22, bg=color,
        labels=c("Largo de Sepalo","Ancho de Sepalo"),
        oma=c(4,4,6,12))
  par(xpd=TRUE)
  legend(0.8,0.7,c("Setosa","Versicolor","Virginica"), fill=c(2,3,4))
  
  
  # Ajemplos aplicados
  
  
  
  
  
  # Ejemplo 4
  
  library(ggplot2)
  library(magrittr)
  library(ggpubr)
          
          
  ggplot(iris,aes(x=Species,y=Sepal.Width, fill=Species)) +
    geom_boxplot()
  
  
  # Modoficar el color de cada caja
  ggplot(iris, aes(x=Species, y=Sepal.Width, fill=Species)) + 
    geom_boxplot() + 
    scale_fill_manual(values=c("red","blue","green"))
  
  # Otro
  ggplot(iris, aes(x=Species, y=Sepal.Width, fill=Species)) + 
    geom_boxplot() + 
    scale_fill_hue(l=40, c=35)
  
  # Ejemplo 5
  library(ggplot2)
  library(magrittr)
  library(ggpubr)
  ggviolin(iris, x="Species",y="Sepal.Width")
  
  # En forma horizontal
  ggviolin(iris, x="Species",
           y="Sepal.Width", 
           orientation="horiz")
  
  #Agregando la desviación estándar:
  ggviolin(iris, x="Species",
           y="Sepal.Width",
           add="mean_sd")
  
  #Agregamos el bloxpot:
  ggviolin(iris, x="Species",y="Sepal.Width", add="boxplot")
  
  
  # Otro con colores:
  ggviolin(iris, x="Species",
           y="Sepal.Width",
           color ="Species",
           palette=rainbow(3),
           add="mean_sd")
  # Otro:
  ggviolin(iris, x="Species",
           y="Sepal.Width",
           fill="Species",
           palette=rainbow(3),
           add="boxplot")
  
  
  
  
  
  
  
  
