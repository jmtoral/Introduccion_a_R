# Crear un data frame con número aleatorios

set.seed(2019)

base1 <- data.frame(
  x1 = runif(10000, min=0, max=1),
  x2 = runif(10000, min=0,max=10),
  x3 = runif(10000, min=0, max=4)
)

write.csv(base1, "base1.csv")

# Gráfica sencilla

plot(pressure)

plot(base1$x1, base1$x2)


# Estadística

summary(base1) # Tendencia central

cor(base1$x1, base1$x2) # Correlación 

# Regresión lineal
model1 <- lm(x1 ~ x2, data = base1)

model1 <- lm(base1$x1 ~ base1$x2)

summary(model1)


colnames(mtcars)

model2 <- lm(mpg ~ hp + cyl + gear, data=mtcars)

summary(model2)

model3 <- lm(mpg ~ ., data=mtcars)

summary(model3)




## Llamar una base

base1 <- read.csv("~/sesion_1/base1.csv")

base1 <- read.csv("base_completa.csv")

base2 <- read.csv("Becas_al_Extranjero_Ene-Dic_2015.csv", 
                  fileEncoding = "WINDOWS-1252")

bob_ross <- read.csv("bob-ross.csv")
























