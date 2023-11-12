


# SESION 2
# 1.- CON LOS VECTORES:NOMBRE, EDAD, PESO CONSTRUIR UN DATA FRAME 
  nombre <- c("juan", "pp", "iñaky", "amparo",
              "mariano", "juancar", "fulano", "elefante")
  edad <- c(23, 24,   45,	67,	32,	56,	78,	45)
  peso <- c(34, 34,  56,	78,	34,	56,	76,	87)
  caseid <- c(1:8)
  
  df1<- data.frame(caseid, nombre, edad, peso) 
  df1


# Ampliar un dataframe:  con los vectores diabetes, estado 
  
  diabetes <- c("Tipo1", "Tipo1", "Tipo2", "Tipo2",
                "Tipo1", "Tipo1", "Tipo2", "Tipo1")
  estado <- c("bueno", "malo", "bueno", "bueno", 
              "bueno", "malo", "bueno", "malo")
  df2 <- data.frame(df1, diabetes, estado)
  
  # Extra: Crear un tabla cruzada.
  
  table(df$diabetes, df$estado)
  
 # Funciones attach(),para acceder más fácilmente
  






