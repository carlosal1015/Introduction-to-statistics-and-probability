qs <- read.table("https://media.pearsoncmg.com/cmg/pmmg_mml_shared/mathstatsresources/Akritas/QsalesIphone.txt", header = T)

m <- rbind(qs$Q1, qs$Q2, qs$Q3, qs$Q4)

barplot(m, names.arg = qs$Year, ylim = c(0, 40000), col = c("green", "blue", "yellow", "red"))

legend("topleft", pch = c(22, 22, 22, 22), col = c("green", "blue", "yellow", "red"), legend = c("Quarter 1", "Quarter 2", "Quarter 3", "Quarter 4"))