
# Vectores y Matrices -----------------------------------------------------
# Vector.- peso y edad de la misma dimensión ------------------------------
  # Vectores: peso, edad y mes
  #peso <- c(4.4, 5.4, 6.4, 3.2, 7.5, 3, 6.1, 3.1, 6.1, 7, 3.4)
  peso <- c(4.4, 5.4, 6.4, 3.2, 7.5, 3, 6.1, 3.1, 6.1, 7)
  edad <- c(1,2,3,4,5,6,7,8,9,1)
  mes <- c("ene", "feb", "mar", "abr", "may","jun","jul", 
           "ago", "sep","oct")
  # Tamaño del vector
  length(peso)
  length(edad)
  length(mes)
  # Suma
  suma <- peso + edad 
  suma
  # Media
  mean(peso)
  mean(edad)
  # Mediana
  median(peso)
  median(edad)
  # Desviación estandar
  sd(peso)
  sd(edad)
  # Data frame
  data.frame(peso, edad, mes)
  df <- data.frame(peso, edad, mes)
  df
  
