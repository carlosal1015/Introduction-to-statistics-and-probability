lv <- read.table("http://media.pearsoncmg.com/cmg/pmmg_mml_shared/mathstatsresources/Akritas/MarketShareLightVeh.txt", header = T)


attach(lv)

pie(Percent, labels = Company, col=rainbow(length(Percent)))

barplot(Percent, names.arg = Company, col = rainbow(length(Percent)), las=2) # fro Figure 1-11