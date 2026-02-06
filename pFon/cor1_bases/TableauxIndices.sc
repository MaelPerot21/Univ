// olivier.ploton@univ-tours.fr Calcul Fonctionnel Scala L3 Info

// Q1
def accesQ1(t: String, i: String): String = t + "[" + i + "]"

// Q5
def accesQ5(t: String, i: String): String = {
  if (t.endsWith("]")) {
    t.substring(0, t.length - 1) + ", " + i + "]"
  } else {
    t + "[" + i + "]"
  }
}

// choisir: accessQ1 ou accessQ5
val acces = accesQ1
acces("tableau", "indice") // "tableau[indice]"

// Q2
def elem(t: String)(i: String): String = acces(t, i)

elem("tableau")("indice")
val f = elem("tableau") // i => acces("tableau", i)
f("a") // "tableau[a]"
f("b") // "tableau[b]"

// Q3 + Q4 infix
extension(t: String) infix def indice(i: String): String = acces(t, i)
"tableau".indice("a").indice("b").indice("c")
"tableau" indice "a"  indice "b"  indice "c"

