# On définit notre espace de travail si besoin
setwd("D:/Dev/R")

# On lance le premier script qui enregistre la variable resultat
source("Scripts/generer_resultat.R")

# On efface cette variable
rm(resultat)

# Et on la réimporte dans le second script
source("Scripts/analyser_resultat.R")
