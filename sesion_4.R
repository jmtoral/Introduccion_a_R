### Sesión 4: Geografías y Spotify
### Autor : Manuel Toral
### Fecha: 11 de abril de 2020

##### Bibliotecas


#install.packages("pacman")
#install.packages("tmap") # Está paquetería generó algunos problemas en su instalación, más adleante usaremos leaflet.
#install.packages("spData") # Esta paquetería causó problemas en su instalación. Proponer la instalación en fuente.

library(pacman)

pacman::p_load(
  tidyverse, # Caja de herramientas
  sf, #sp
  ggalt, # Gráficas alternativas
  hrbrthemes, # un tema lindo para las gráficas
  wesanderson # La paleta de colores de Wes Anderson
)



#################### GEOGRAFÍAS

#### Datos geográficos

cuadrantes <- st_read("cuadrantes/cuadrantes.shp") %>% 
  rowid_to_column()

#cuadrantes_escritorio <-  st_read("C:\\Users\\LENOVO\\Desktop\\cuadrantes/cuadrantes.shp")


#######

cuadrantes %>% 
  ggplot() +
  geom_sf()

#### Polígono No. 1
ggplot() +
  geom_sf(data = cuadrantes, aes(fill= rowid==1)) 

as.character(cuadrantes$geometry[1])

glimpse(cuadrantes)


##### Coropleta (Choropleths)

cuadrantes %>% 
  ggplot(aes(fill=alcaldia)) +
  geom_sf()

##### Ejericicio !

### URL: https://datos.cdmx.gob.mx/explore/dataset/alcaldias/download/?format=shp&timezone=America/Mexico_City&lang=es

alcaldias <- st_read("alcaldias/alcaldias.shp")

alcaldias %>% 
  ggplot() +
  geom_sf()



cuadrantes %>% # Llama a los "de la base"
  ggplot() + #Establece el espacio estético
  geom_sf() + # El signo de más añade otra capa
  geom_sf(data = alcaldias, fill="transparent", size=1.2)


edos <- st_read("dest2018gw/dest2018gw.shp")

edos %>% 
  ggplot()+
  geom_sf()

#### Datos numéricos en mapa

set.seed(3)

numeros <- tibble(
  rowid = 1:847,
  numero.1 = runif(847, min = 0, max= 100),
  numero.2 = rnorm(847, mean = 50, sd= 20)
)

mean(numeros$numero.2)
sd(numeros$numero.2)
hist(numeros$numero.2)

mean(numeros$numero.1)
sd(numeros$numero.1)
hist(numeros$numero.1)

###### Unirlos a una geografías
#install.packages("viridis")
library(viridis)


cuadrantes %>% 
  left_join(numeros, by="rowid") %>% 
  ggplot() +
  geom_sf(aes(fill=numero.2)) +
  scale_fill_viridis()

## ?: Agrupar por alcaldías
cuadrantes %>% 
  left_join(numeros, by="rowid") %>% 
  group_by(alcaldia) %>% 
  summarise(suma = sum(numero.2)) %>% 
  ggplot() +
  geom_sf(aes(fill=suma)) +
  scale_fill_viridis()


##### Geografías con puntos
library(readr)
homicidios <- read_csv("carpetas-de-investigacion-pgj-de-la-ciudad-de-mexico.csv")



url <- "https://datos.cdmx.gob.mx/explore/dataset/carpetas-de-investigacion-pgj-de-la-ciudad-de-mexico/download/?format=csv&disjunctive.ao_hechos=true&disjunctive.delito=true&refine.delito=HOMICIDIO+POR+ARMA+DE+FUEGO&timezone=America/Mexico_City&lang=es&use_labels_for_header=true&csv_separator=%2C"
homicidios <-  read_csv(url)


homicidios %>% 
  ggplot(aes(x=longitud, y=latitud)) +
  geom_point()+
  coord_equal()


#### Proyectar puntos en geografía

cuadrantes %>% 
  ggplot() +
  geom_sf() +
  geom_point(data = homicidios, aes(x=longitud, y= latitud),
             size=0.4) 
 
cuadrantes %>% 
  ggplot() +
  geom_density2d(data = homicidios, aes(x=longitud, y= latitud),
                 size=0.4, color = "navyblue") +
  stat_density2d(data = homicidios, aes(x=longitud, y= latitud, fill=..level.., alpha=..level..),
                 size=0.01, bins = 10, geom = "polygon")+
  theme_void() +
  guides(fill=FALSE, alpha = FALSE) +
  ylim(19.1, 19.6) +
  scale_fill_viridis(option = "inferno")+
  geom_sf(fill="transparent")


########################### Asociar una serie de puntos a una geografía


homicidios.geo <- st_as_sf(homicidios %>% na.omit(),
                           crs= 4326,
                           coords = c("longitud", "latitud"))


### ¿Cómo contar los puntos "dentro" de cada cuadrante?

cuadrantes <- cuadrantes %>% 
  mutate(suma_homicidios = lengths(st_intersects(cuadrantes, homicidios.geo)))


colores <- wes_palette("Zissou1", 5, "continuous")

cuadrantes  %>% 
  ggplot() + #### No es "obligatorio" el mapping (aes) por que geom_sf lo asume como dado.
  geom_sf(aes(fill=suma_homicidios)) +
  scale_fill_gradientn(colours = colores) + #gradient"N"
  geom_sf(data = alcaldias, fill="transparent", size=1.2)+
  geom_sf_text(data = cuadrantes %>% 
                 group_by(sector) %>% 
                 summarise(suma_homicidios = sum(suma_homicidios)), aes(label=sector),
               size=2) 
  

ggsave("mapa_cuadrantes.png", width = 15, height = 20)

install.packages("ggspatial")
library(ggspatial)

cuadrantes  %>% 
  ggplot() + #### No es "obligatorio" el mapping (aes) por que geom_sf lo asume como dado.
  geom_sf(aes(fill=suma_homicidios)) +
  scale_fill_gradientn(name= "Homicidios totales",colours = colores) + #gradient"N"
  geom_sf(data = alcaldias, fill="transparent", size=1.2)+
  geom_point(data = homicidios, aes(x=longitud, y=latitud), 
          size=0.1, alpha =0.2) +
  theme_void() +
  labs(title = "Homicidios con arma de fuego en la ciudad de México",
       subtitle = "Georreferenciados por cuadrante, de 2010 a 2019",
       caption="Fuente: datos.cdmx.gob.mx") +
  theme(plot.title = element_text(hjust=0.5),
        plot.subtitle = element_text(hjust=0.5)) +
  annotation_north_arrow(location="bl", which_north ="true",
                         style = north_arrow_fancy_orienteering, 
                         pad_y = unit(0.5, "in")) +
  annotation_scale()

ggsave("mapa_cuadrantes_puntos.png", width = 15, height = 20)



