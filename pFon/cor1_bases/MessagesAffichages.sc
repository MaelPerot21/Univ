// olivier.ploton@univ-tours.fr Calcul Fonctionnel Scala L3 Info

// Q1
def reponse (s: String): String = "> " + s
def repondre (s: String): Unit = {
  println(reponse(s))
}

reponse("hello world") // "> hello world"
repondre("hello world") // (), affichage

// Q2
def citation (auteur: String, phrase: String): String = {
  "Citation de " + auteur + ": \"" + phrase + "\""
}

def citer (auteur: String, phrase: String): Unit = {
  println(citation(auteur, phrase))
}

citation("César",     "alea jacta est")
"Citation de César: \"alea jacta est\""

citer("César", "alea jacta est") // () + affichage

