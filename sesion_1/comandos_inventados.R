# Termomix

library(mexicana)


## 1. Hervir el agua

agua <- "H2O"

agua_hirviendo <- hervir(agua)

## 1.a. Objetos


numeros <- c(1,4,6,8)

sum(numeros)

mean(numeros)

# 2. Infusionar con jamaica

agua_hirviendo_con_jamaica <- hervir(agua, infusion="jamaica")

# 2.a

numeros_na <- c(1,4,6,8, NA)

sum(numeros, na.rm = TRUE)

mean(numeros, na.rm = TRUE)


# Enfríar

agua_helada_con_jamaica <- añadir(agua_hirviendo_con_jamaica, elemento="hielos")




