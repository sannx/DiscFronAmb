library(raster)
library(scales)
library(ggplot2)
# library(rgeos)


# 
# ogrBr <- shapefile("/hds/dados_work/DATASAN/shapefile/limite_brasil/pa_br_Limite_Brasil_250_2013_ibge_wgs.shp")
# ogrUf <- shapefile("/hds/dados_work/DATASAN/shapefile/limite_estados/pa_br_estados_250_2013_ibge_wgs84.shp")
# ogrMu <- shapefile("/hds/dados_work/DATASAN/shapefile/limite_municipios/pa_br_municipios_250_2013_ibge.shp")
# ogrMes <- shapefile("/hds/dados_work/DATASAN/shapefile/mesorregiao/pa_br_mesoregioes_250_2013_ibge.shp")
# 
# ###
# ###
# areaUf <- ogrUf[ogrUf$NM_UF %in% c("MA", "TO", "PI", "BA",
#                                       "MT", "MS", "GO",
#                                       "RS", "PR"), ]
# 
# 
# # par(mfrow = c(1,3))
# 
# plot(ogrBr, col = "gray", main = "Brasil")
# legend("topright", fill = "yellow", legend = "Pastagem")
# 
# plot(ogrUf, main = "Estado")
# # legend("topright", fill = "yellow", legend = "Pastagem")
# 
# rbPal <- colorRampPalette(c('red','green'))
# areaUf@data$Col <- rbPal(length(areaUf$NM_UF))[as.numeric(1:length(areaUf$NM_UF))]
# plot(areaUf, col = areaUf@data$Col, add = TRUE)
# 
# 
# 
# areaMU <- ogrMu[ogrMu$NM_UF %in% c("MA", "TO", "PI", "BA",
#                                    "MT", "MS", "GO",
# #                                    "RS", "PR"), ]
# plot(ogrUf, main = "Estado")
# plot(areaMU, col = "red", add = TRUE)

shapefile(areaMU, file = "Areas_Municipios.shp")
shapefile(areaUf, file = "Areas_Estados.shp")

areaMUsub <- areaMU[areaMU$NM_MUNICIP %in% c("CODÓ", "BALSAS", "ARAGUAÍNA", "GURUPI", "PALMAS", "URUÇUÍ",
                                  "PASSO FUNDO", "URUGUAIANA", "CASCAVEL", "CAMPO MOURÃO", "PONTA GROSSA", "LONDRINA", "GUARAPUAVA",
                                  "SINOPE", "TANGARÁ DA SERRA", 'RONDONÓPOLIS', 'BARRA DO GARÇAS', 'RIO VERDE', 'DOURADOS', 'RIO BRILHANTE'), ]

dim(areaMUsub)
areaMUsub@data
