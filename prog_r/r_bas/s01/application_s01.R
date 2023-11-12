

# Crear un data frame usando vectores -------------------------------------
  # Vectores
  salario <- c(1200, 2300, 4000, 5600, 7200)
  sexo <- c("mujer", "varon", "mujer", "varon", "varon")
  nombre <- c("maria", "juan", "lucia", "pedro", "fernando")
  profesion <- c("profesora", "enfermero", "actriz", "doctor",
                 "ingeniero")
  # Data frame
  df <- data.frame(salario, sexo, nombre, profesion)
  df
  

# Vectores ----------------------------------------------------------------

  x <- c(1, 2, 3, 4, 5, 6, 7, 8)
  y <- c("juan", "pepe", "iñaky", "amparito", "mariano",
         "juancar", "fulano", "elefante")
  z <- c(TRUE, TRUE, FALSE, TRUE, FALSE, FALSE,
         TRUE, TRUE)
  
# Matrices ----------------------------------------------------------------
  
  matrix(data = NA, nrow = 2, ncol = 2, 
         byrow = F, dimnames = NULL) 
  matrix(data = 1:4, nrow = 2, ncol = 2, 
         byrow = F, dimnames = NULL)
  matrix(data = 5, nrow = 2, ncol = 2, 
         byrow = F, dimnames = NULL)
  

# Ejemplo -----------------------------------------------------------------

  diabetes <- c("Tipo1", "Tipo1", "Tipo2", "Tipo2",
                "Tipo1", "Tipo1", "Tipo2", "Tipo1")
  estado <- c("bueno", "malo", "bueno", "bueno",
              "bueno", "malo", "bueno", "malo")
  data.frame(diabetes, estado)

  
