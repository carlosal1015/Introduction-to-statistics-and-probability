#################################################################
#	Data Sets obtain for
#	http://media.pearsoncmg.com/cmg/pmmg_mml_shared/mathstatsresources/Akritas/datasets.html

br <- read.table("http://media.pearsoncmg.com/cmg/pmmg_mml_shared/mathstatsresources/Akritas/BearsData.txt", header = T)

attach(br)	# so variables can be referred to by name

plot(Chest.G, Weight, pch=21, bg=c("red", "green")[unclass(Sex)]) # Figure 1-6

legend(x = 22, y = 400, pch = c(21,21), col = c("red", "green"), legend = c("Female", "Male")) # add legend in figure 1-6

pairs(br[4:8], pch = 21, bg = c("red", "green")[unclass(Sex)]) # Figure 1-7