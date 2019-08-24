# Librerías
library(stats)
library(base)
##library(stargazer)
library(tidyverse)


# Datos

base_completa <-  read.csv("base_completa.csv")

## Filtrar con RBase

base_completa[which(base_completa$codigo_auxilio > 15),]

#base_completa %>% 
 # filter(codigo_auxilio > 15)

base_completa[which(base_completa$codigo_auxilio > 15 &
                    base_completa$nombres == "Queen B"),]

#base_completa %>% 
 # filter(codigo_auxilio > 15,
  #       nombres == "Queen B")

## Indexation method

base_completa[,2:3]
base_completa[,c(1,3)]



## Nuevas variables con RBase

base_completa$is.beyonce <- grepl("Queen", 
                                  base_completa$nombres)



base_completa$id <- seq(from=1, to=10, 1)

# Eliminar

base_completa$X <- NULL

# Cambiar el orden
base_completa[2,3]

base_completa <- base_completa[,c(5,1,2,3,4)]

# Cambiar el nombre

colnames(base_completa)[5] <- "es_esta_Beyonce"

base_completa %>% 
  rename("is.Beyonce" = "es_esta_Beyonce")



# Clasificación

base_completa$grupo <- grepl("a|A", 
                              base_completa$nombres)

table(base_completa$grupo)



# Crear una nueva variable con operación

base_completa$logaritmos <- log(base_completa$codigo_auxilio)

base_completa$suma_random <- base_completa$codigo_auxilio + 
                             base_completa$logaritmos



