// olivier.ploton@univ-tours.fr Calcul Fonctionnel Scala L3 Info

// Q1

def temps[T](x: => T): T = {
  val t0 = System.nanoTime()
  val v = x
  val t1 = System.nanoTime()
  val duree: Double = (t1 - t0) * 1e-9
  println("Temps: " + duree + " s")
  v
}

temps(20 + 3) // valeur 23, affichage p.ex «Temps: 8.6E-6 s»

temps {
  var s = "." * 10_000_000
  s += s
  s.length
}
// valeur 20_000_000, affichage p.ex «Temps: 0.15 s»

// Q2

// Impossible de renvoyer la valeur en résultat
// car si x produit une exception elle ne donne aucune valeur
// et on ne peut pas créer une valeur de type T à partir de rien
def afficher[T](x: => T): Unit = {
  try {
    val v = x
    println("Résultat: " + v)
  }
  catch {
    case e: Throwable => println("Exception: " + e)
  }
}

afficher(100 / 5) // ()
// affiche «Résultat: 20»

afficher(100 / 0) // ()
// affiche «Exception: java.lang.ArithmeticException: / by zero»

afficher("".substring(0, 1)) // ()
// affiche «Exception: java.lang.StringIndexOutOfBoundsException: begin 0, end 1, length 0»

afficher(???) // ()
// affiche «Exception: scala.NotImplementedError: an implementation is missing»

