el <- read.table("http://media.pearsoncmg.com/cmg/pmmg_mml_shared/mathstatsresources/Akritas/ElectrProdTemp.txt", header = T)

attach(el)

library(scatterplot3d)
scatterplot3d(Temperature, Production, Electricity, angle = 35, col.axis = "blue", col.grid = "lightblue", color = "red", main = " ", pch = 21, box = T) # for Figure 1-9