
# Llamar base mtcars

mtcars <- mtcars

mtcars

# Caballos de fuerza
caballos_de_fuerza <- mtcars$hp

plot(mtcars$hp, mtcars$mpg)


# Construir una base de datos de 10 elementos
## Una vairable numérica
## Una variable de texto (caracter)
## Una variable lógica


### 1. Variable numérica

set.seed(1990)

codigo_auxilio <- ceiling(runif(10, min=8, max=20))

codigo_auxilio


### 2. Variable de texto


nombres <-  c("Miguel", "Arturo", "Enrique", "Carlos", "Martha", 
              "Lucía", "Lourdes", "Shakira", "Queen B", "Raúl")

nombres

class(nombres)



### 3. Variables lógicas o boolean


decision <- c(TRUE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, TRUE, FALSE, TRUE)

decision

sum(decision)


### 4. Constuir mi base


base_completa <- data.frame(codigo_auxilio, nombres, decision)


### 5. Explorar con RBase

head(base_completa, 5)

str(base_completa)

summary(base_completa)

colnames(base_completa)

## 6. Explorar matricial



base_completa$codigo_auxilio # Toda la variable

base_completa$codigo_auxilio[1] # El primer elemento de la primer variable

base_completa$codigo_auxilio[8] # El octavo elemento de la primer variable


#OBJETO[observaciones, columnas]

base_completa[8,1] # El octavo elemento de la primer variable

base_completa[10,3]


# Guardar en un archivo

write.csv(base_completa, "base_completa.csv", fileEncoding = "WINDOWS-1252")
  





















