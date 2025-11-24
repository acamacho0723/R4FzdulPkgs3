# install.R - Instalación de paquetes para análisis CENAPRECE-INDRE

# Configurar repositorio de CRAN
options(repos = c(CRAN = "https://cloud.r-project.org"))

# Instalar paquetes básicos de CRAN
install.packages(c(
  # Manipulación de datos
  "dplyr",
  "tidyr", 
  "readr",
  "purrr",
  
  # Visualización
  "ggplot2",
  "ggthemes",
  "RColorBrewer",
  
  # Análisis espacial
  "sf",
  "terra",
  "raster",
  "sp",
  "rgdal",
  "rgeos",
  
  # Mapas interactivos
  "leaflet",
  "mapview",
  "tmap",
  
  # Análisis estadístico
  "lme4",
  "mgcv",
  "spdep",
  "automap",
  
  # Utilidades
  "devtools",
  "remotes",
  "here",
  "knitr",
  "rmarkdown"
))

# Instalar paquetes de desarrollo desde GitHub
remotes::install_github("fdzul/rgeomex")
remotes::install_github("fdzul/deneggs")

# Verificar instalaciones exitosas
cat("=== Verificación de paquetes instalados ===\n")
cat("rgeomex:", requireNamespace("rgeomex", quietly = TRUE), "\n")
cat("deneggs:", requireNamespace("deneggs", quietly = TRUE), "\n")
cat("sf:", requireNamespace("sf", quietly = TRUE), "\n")
cat("==========================================\n")
