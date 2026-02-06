// olivier.ploton@univ-tours.fr Calcul Fonctionnel Scala L3 Info

val suffixe = "@etu.univ-tours.fr"
def adresse(prenom: String, nom: String): String = {
  prenom + "." + nom + suffixe
}

adresse("eric", "dubois") // "eric.dubois@etu.univ-tours.fr"

def etudiant(adr: String): (String, String) = {
  if (!adr.endsWith(suffixe)) throw RuntimeException("...")
  val utilisateur = adr.substring(0, adr.length - suffixe.length)
  val p = utilisateur.indexOf(".")
  if (p == -1) throw RuntimeException("...")
  (utilisateur.substring(0, p), utilisateur.substring(p+1))
}

etudiant("eric.dubois@etu.univ-tours.fr") // ("eric", "dubois")

