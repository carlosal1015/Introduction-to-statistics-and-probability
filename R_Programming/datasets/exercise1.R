t <- read.table("http://media.pearsoncmg.com/cmg/pmmg_mml_shared/mathstatsresources/Akritas/RobotReactTime.txt", header = T)

attach(t)	# so variables can be referred to by name
t1 <- Time[Robot == 1]
sort(t1)


summary(t)

boxplot(t, col = "blue")