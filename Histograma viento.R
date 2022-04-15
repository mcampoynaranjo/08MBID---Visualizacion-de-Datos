#Crear histograma de frecuencia de viento 
  
getwd()
setwd("/Users/manolo/Documents/Personales/Estudios/Máster Big Data y Data Science/Asignaturas/08MBID - Visualización de Datos/Proyecto")
#Carga las librerías necesarias

library(readxl)
library(HistogramTools)

#Importación del dataset 
dataset <- read_xlsx("DS wind histogram.xlsx", "Hoja1", col_names = TRUE) #Se importa el dataset, dejando la primera fila como nombre de las variables
head(dataset) #Se comprueba que los datos se han cargado correctamente
names(dataset) #Obtenemos los nombres de las columnas

PlotRelativeFrequency(hist(dataset$spd_max_gust), main = "Frecuencia de rachas de viento (1964-2020)", ylab = "Frecuencia relativa", 
                      xlab = ("Velocidad del viento (km/h)"), ylim = c(0,0.35), col = "lightblue")


