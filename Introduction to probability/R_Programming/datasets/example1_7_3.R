oz <- read.table("http://media.pearsoncmg.com/cmg/pmmg_mml_shared/mathstatsresources/Akritas/OzoneData.txt", header = T)

attach(oz)	# so variables can be referred to by name

summary(oz)

boxplot(oz, col = "grey")