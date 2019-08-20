fe <- read.table("http://media.pearsoncmg.com/cmg/pmmg_mml_shared/mathstatsresources/Akritas/OzoneData.txt", header = T)

w <- stack(fe) # stacks data and assigns indices

# summary(fe)

boxplot(w$values~w$ind, col = rainbow(4)) # constructs the boxplot