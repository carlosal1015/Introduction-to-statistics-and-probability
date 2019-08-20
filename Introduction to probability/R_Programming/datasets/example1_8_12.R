cs <- read.table("http://media.pearsoncmg.com/cmg/pmmg_mml_shared/mathstatsresources/Akritas/CloudSeed2w.txt", header = T)

mcm <- tapply(cs$rain, cs[, c(2,3)], mean) # the matrix of cell means

alphas <- rowMeans(mcm)-mean(mcm) # the vector of main row effects
betas <- colMeans(mcm)-mean(mcm) # the vector main column effects
gammas <- t(t(mcm-mean(mcm)-alphas)-betas) # the matrix of interaction effects

attach(cs) # so variables can be referred to by name
interaction.plot(season, seeded, rain, col = c(2,3), lty = 1, xlab = "Season", ylab = "Cell Means of Rainfall", trace.label = "Seeding")