# On saisit un nombre d'intérêt
nombre <- 42

# Et on en tire différentes informations
paste("Etudions le nombre: ",nombre)
paste("Le logarithme népérien de ce nombre est: ", log(nombre))
paste("La racine carrée de ce nombre est: ", sqrt(nombre))
paste("Le cosinus de ce nombre est: ", cos(nombre))
paste("Si on ajoute 3 au nombre ", nombre, " on obtient: ", nombre + 3)

# Et maintenant on quitte R en demandant si on veut sauvegarder notre espace de travail
q("ask")
