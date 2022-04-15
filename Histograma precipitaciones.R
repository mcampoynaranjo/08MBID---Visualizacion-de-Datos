#Crear histograma de frecuencia de viento 

getwd()
setwd("/Users/manolo/Documents/Personales/Estudios/Máster Big Data y Data Science/Asignaturas/08MBID - Visualización de Datos/Proyecto")
#Carga las librerías necesarias

library(readxl)
library(HistogramTools)
library(dplyr)

#Importación del dataset 
dataset <- read_xlsx("DS precipitation histogram.xlsx", "Hoja1", col_names = TRUE) #Se importa el dataset, dejando la primera fila como nombre de las variables
head(dataset) #Se comprueba que los datos se han cargado correctamente
names(dataset) #Obtenemos los nombres de las columnas

PlotRelativeFrequency(hist(dataset$total_precip), main = "Frecuencia de precipitaciones (1964-2020)", ylab = "Frecuencia relativa", 
                      xlab = ("Total de precipitaciones (mm)"), ylim = c(0,1), col = "lightblue", cex.lab=1.5, cex.axis=1.5, cex.main=1.5)

help(PlotRelativeFrequency)

dataset1 <- filter(dataset, total_precip <= 2)

PlotRelativeFrequency(hist(dataset1$total_precip), main = " ", ylab = "", 
                      xlab = ("Total de precipitaciones (mm)"), ylim = c(0,0.8), col = "lightblue", cex.lab=2.5, cex.axis=2.5)

help("runif")
