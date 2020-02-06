# On peut par exemple créer un vecteur contenant des chaînes de caractères et de longueur 5 
vector("character", 5)
# [1] "" "" "" "" ""
# La valeur par défaut est une chaîne vide ""

# Création d'un vecteur contenant 8 éléments logiques (booléens, valeur par défaut FALSE)
vector("logical", 8)
#[1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE

# En appellant la fonction vector() seule elle utilise les arguments par défaut et créé donc un vecteur de longueur 0 contenant des éléments booléens
vector()
# logical(0)

# On peut donc alors créer des vecteurs de type logique en précisant seulement sa longueur
vector(length=10)
# [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE

# Enfin on peut évidemment assigner l'objet créé à une variable et l'afficher par la suite
vecteur <- vector("numeric", length=30)
vecteur
# [1] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0