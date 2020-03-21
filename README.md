# Sobre este repositorio

En este repositorio podrán encontrar todo el material que utilizaremos en el curso. Se irá actualizando constanemente y podrán descargarlo si así lo desean o clonarlo por medio de *GitHub*.

## Objetivo del curso

El presente curso tiene como objetivo enseñar a producir documentos profesionales basados en datos. Haciendo uso de la `R` para construir la sintaxis. Para poder producir un documento profesional, la persona debe poder manipular datos, visualizar y poder organizar estructuradamente un flujo de trabajo. 

## ¿ Cómo instalo (y uso) `R`?

Para este curso vamos a trabajar, desde el principio, con código en `R`. Es necesario tener **la última versión** de este lenguaje, al momento de escribir este repositorio ésta es la versión **3.6.1**, llamada *Action of the Toes*.

Para instalarlo, es necesario entrar a [*The Comprehensive R Archive Network*](https://cran.r-project.org/) y seguir las instrucciones para cada sistema operativo.

### MAC OSX

- Basta con descargar el archivo `.pkg` [de este link](https://cran.r-project.org/bin/macosx/R-3.6.1.pkg), descomprimir el archivo, abrir el archivo y seguir las instrucciones.

### Windows

- Basta con descargar el archivo `.exe` [de este link](https://cran.r-project.org/bin/windows/base/R-3.6.1-win.exe), abrir el archivo y seguir las instrucciones.

### Linux

En Terminal, escribir las siguientes dos líneas:

`sudo apt-get update`

`sudo apt-get install r-base`

## ¿Cómo instalar RStudio?

Para instalar RStudio (plataforma que usaremos para el uso de `R`), es necesario acudir a [esta página](https://www.rstudio.com/products/rstudio/download/) y seleccionar nuestro sistema operativo en el menú *Installers for Supported Platforms*. En el caso de Windows, [este](https://download1.rstudio.org/RStudio-1.1.463.exe) es el archivo, y en el caso de MAC OSX el archivo es [éste](https://download1.rstudio.org/RStudio-1.1.463.dmg).

Para Ubuntu, hay que correr estas líneas en Terminal:

`sudo apt-get install gdebi-core`

`wget https://download2.rstudio.org/rstudio-server-1.1.463-amd64.deb`

`sudo gdebi rstudio-server-1.1.463-amd64.deb`

## ¿Cómo instalo LaTeX?

Es importante tener LaTeX para crear documentos en PDF. Para instalarlo, hay que entrar a [este sitio](https://www.latex-project.org/get/) y seleccionar nuestro sistema operativo. Para MAC OSX [este](http://tug.org/cgi-bin/mactex-download/MacTeX.pkg) es el archivo a instalar, para Windows es [éste](https://miktex.org/download/ctan/systems/win32/miktex/setup/windows-x64/basic-miktex-2.9.6942-x64.exe) y para Ubuntu hay que seguir [estos pasos](http://tipsonubuntu.com/2016/09/16/install-tex-live-2016-ubuntu-16-04-14-04/).


## Textos, libros y materiales

### Para aprender R

Hay, realmente, miles de materiales excelentes para aprender `R`. En mi experiencia éstos han sido los más útiles.

- [**Wickham y Grolemund** - R for Data Science](https://r4ds.had.co.nz/): Este el libro sagrado de los que usamos `R` a través del `tidyverse`. Es el mejor y más completo libro para aprender a usar en lenguaje. Les recomiendo mucho terminarlo.
  
- [Cotton - Learning R A Step-by-Step Function Guide to Data Analysis](http://shop.oreilly.com/product/0636920028352.do)

- [Phillips - YaRrr! The Pirate’s Guide to R](https://ndphillips.github.io/piratesguide.html): Una guía introductoria (y bastante divertida) de aprender `R`. Altamente recomendable también para aprender métodos bayesianos. Yo aprendí `R` con este manual. Phillips también tiene gran material introductorio [en su canal de YouTube](https://www.youtube.com/watch?v=Vkv7-nw3wwU&list=PL9tt3I41HFS9gmeZFEuNrnu_7V_NFngfJ)

- [What They Forgot to Teach You About R - Bryan & Hester](https://whattheyforgot.org/)
  
- [Burns - R's Inferno](https://www.burns-stat.com/pages/Tutor/R_inferno.pdf): La premisa del autor es simple "si estás usando R y piensas que es un infierno, este libro es para ti".

- [Privé - Advanced R Course](https://privefl.github.io/advr38book/index.html):Un buen libro avanzado sobre el tema.

### Para resolver (y buscar dudas)

- [Stack Overflow](https://stackoverflow.com/): No hay de otra, **es crucial preguntar**.
  
- [Statistical tools for high-throughput data analysis](http://www.sthda.com/english/)

- [UC Business Analytics R Programming Guide](https://uc-r.github.io/)
  
- [Prabhakaran - Top 50 ggplot2 Visualizations - The Master List (With Full R Code)](http://r-statistics.co/Top50-Ggplot2-Visualizations-MasterList-R-Code.html)
  
- [Sebastián Garrido - Recursos para R](http://segasi.com.mx/cursos/recursos_r/recursos/index.html): "Segasi" ha recolectado un montón de recursos introductorios (y no tanto) en su página personal.

#### RMarkdown y otras herramientas

En este curso se pretende que podamos presentar resultados en reportes profesionales y muy elegantes que puean ser leídos (y usados) por cualquiera. Así, usaremos *Markdown* "con sabor" a `R` para generar código y resultados.

- [Xie, Allaire & Grolemund - R Markdown: The Definitive Guide](https://bookdown.org/yihui/rmarkdown/): La Guía definitiva para usar *Markdown* "con sabor" a R.
  
- [A simple guide to LaTeX - Step by Step](https://www.latex-tutorial.com/tutorials/): Si bien no usaremos *LaTeX* directamente, sí es importante tenerlo instalado y conocer su existencia y su sintaxis básica para usarla en *RMarkdown*.

### Para estadística en R

Este curso está construido con base en siguientes materiales:

- [Ismay & Kim - Statistical Inference via Data Science: A ModernDive into R and the Tidyverse](https://moderndive.netlify.com/index.html). 

- [Navarro - Learning statistics with R: A tutorial for psychology students and other beginners.](https://learningstatisticswithr.com/book/). El código del libro disponible [aquí](https://learningstatisticswithr.com/).
  
- [Hanck et al. - Introduction to Econometrics with R](https://www.econometrics-with-r.org/1-introduction.html)

- [Field et a. - Discovering Statistics Using R](https://uk.sagepub.com/en-gb/eur/discovering-statistics-using-r/book236067). Este libro es bastante didactivo, pero un poco infantil para lectorxs más maduros.

- [Sheather - A Modern Approach to Regression with R](https://www.springer.com/la/book/9780387096070). El código se encuentra [aquí](https://www.stat.tamu.edu/~sheather/book/).

- [James, et al. -  An Introduction to Statistical Learning with Applications in R](https://www-bcf.usc.edu/~gareth/ISL/). El PDF y el código se encuentran en el link.

- [Bruce & Bruce - Practical Statistics for Data Scientists 50 Essential Concepts](http://shop.oreilly.com/product/0636920048992.do): El código de este libro se encuentra en [este repositorio](https://github.com/andrewgbruce/statistics-for-data-scientists/tree/master/src).

- [Hastie, et al. - The Elements of Statistical Learning](https://web.stanford.edu/~hastie/ElemStatLearn/). El PDF y el código se encuentran en el link.
  
- [Teetor - R Cookbook Proven Recipes for Data Analysis, Statistics, and Graphics](http://shop.oreilly.com/product/9780596809164.do)
  
  
## Repositorios de bases de datos

Algunos repositorios recomendados para buscar buenas bases de datos.

- [Awesome Public Datasets](https://github.com/awesomedata/awesome-public-datasets)
- [TidyTuesday Datasets](https://github.com/rfordatascience/tidytuesday)
- [FiveThirtyEight](https://github.com/rudeboybert/fivethirtyeight)
- [Las bases de datos del programa de competencias *Kaggle*](https://www.kaggle.com/datasets)
- [Harvard Dataverse](https://dataverse.harvard.edu/)
- [Datos abiertos del Gobierno Federal](https://datos.gob.mx/)
- [Banco de Información del LNPP del CIDE](http://datos.cide.edu/)
- [Google Dataset Search](https://datasetsearch.research.google.com/)
- [Open ICPSR](https://www.openicpsr.org/openicpsr/)
- [UK Data Service](http://reshare.ukdataservice.ac.uk/)
- [Empirical Studies of Conflict](https://esoc.princeton.edu/)

## Calendario de sesiones

- **Sesión 1:**
  - Temas:
    - Introducción al uso de `R` y *RStudio*
    - Introducción a manipulación básica de datos.
    - Comandos básicos para medidas de tendencia central (y su interpretación)
    - ¿Cómo hacer tablas profesionales para reportes profesionales?
    - ¿Cómo llamar datos en formato *.xls*, *.csv*, *.txt* o *.dta*.
    - (Breve) Introducción a la regresión lineal y presentación de resultados con `stargazer`.
    - Uso de *R Makrdown* para reportes.
  
- Sesión 2: Manipulación y tidyverso.
  - Temas:
    - Introducción a `tidyverse` (y sus diferencias con `Rbase`)
    - Manipulación de datos con `dplyr`.
    - Introducción a los usos de `select` y `filter`, para filtrar y seleccionar tablas.
    - Introducción a `group_by` y `summarise` para sumar y obtener medidas de tencia central por grupos.
    - Introducción a `mutate` para la creación de variables.
    - Usos avanzado se `dplyr`.
  

- Sesión 3: Visualización
  - Temas:
    - Introducción a la visualización de datos bajo en enfoque de la "gramática de gráficas" (*gg*).
    - Introducción a `ggplot2`.
    - Introducción a geometrías, *mapping*, formas, escalas y paletas.
    - Extensiones a `ggplot2`: `GGally`, `ggridges`, `ggtiles`.
    - "Es que las gráficas de *STATA* me gustan mucho": Temas con `hrbrthemes` y `ggthemes`.
  
- Sesión 4: Usos prácticos
  - Temas:
    - Uso de datos geográficos con `sf`.
    - Uso de datos de encuestas con `srvyr`.
    
## Sobre el instructor

Mi nombre es Manuel Toral, actualmente trabajo con datos judiciales para el análisis de la política pública del Poder Judicial, fui investigador especializado en datos en *Mexicanos Contra la Corrupción y la Impunidad*. Estudié Política Pública en la *Escuela Harris de la Universidad de Chicago* y Ciencia Política y Relaciones Internacionales en el *Centro de Investigación y Docencia Económicas*. Como instuctor en `R`, soy parte del directorio de instructores de RStudio, [aquí puedes ver mi perfil](https://community.rstudio.com/u/jmtoral/summary).

Llevo 5 años usando `R` de manera profesional en una diversidad de proyectos de corte inmobiliario, análisis de grandes cantidades de datos, seguridad, justicia y, actualmente, en corrupción, transparencia y combate a la impunidad en México. Puedes ver algo de mis últimos trabajos de investigación con datos en el blog Desarmando la Corrupción de MCCI en alianza con la revista Nexos.

Como docente en `R`, he sido el experto residente de la Escuela Harris de la Universidad de Chicago, en la que dirgí la "STATA and R Bar", que asesoraba en el uso de estas herramientas a alumnos de maestría y doctorado. En 2017, fui contratado por la Unidad de Investigación Aplicada de MCCI para capacitar a sus integrantes en el uso de R, equipo al que finalmente [me integré](https://contralacorrupcion.mx/quienes-somos/) como investigador.
