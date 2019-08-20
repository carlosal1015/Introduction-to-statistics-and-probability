lv2 <- read.table("http://media.pearsoncmg.com/cmg/pmmg_mml_shared/mathstatsresources/Akritas/MarketShareLightVehComp.txt", header = T)

m <- rbind(lv2$Percent_2010, lv2$Percent_2011) # creates a data matrix

barplot(m, names.arg = lv2$Company, ylim = c(0, 20), col = c("darkblue", "red"),
		legend.text = c("2010", "2011"), beside = T, las =2) # constructs the bar graph