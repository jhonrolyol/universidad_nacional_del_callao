

# Cleaning ----------------------------------------------------------------
  rm(list = ls())


# Install packages --------------------------------------------------------

  install.packages("readxl")
  install.packages("psych")
  

# Load library ------------------------------------------------------------

  library(readxl)
  library(psych)

# Load data ---------------------------------------------------------------

  Identidad <- read_excel("s11/Identidad.xlsx")
  View(Identidad)

  attach(Identidad)
  F <- Identidad[,6:39]
  P <- data.frame(F)
  P
  

# Alpha -------------------------------------------------------------------
  alpha(P)

