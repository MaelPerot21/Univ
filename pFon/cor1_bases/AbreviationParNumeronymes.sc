// olivier.ploton@univ-tours.fr Calcul Fonctionnel Scala L3 Info

// Q1
def abrev(s: String): String = {
  val n = s.length
  if (n <= 2)  {
    s
  } else {
    s.substring(0, 1) + (n-2) + s.substring(n-1)
  }
}

// Q2
def longueur(a: String): Int = {
  val n = a.length
  if (n <= 2) {
    n
  } else {
    a.substring(1, n-1).toInt + 2
  }
}

val s = "xy"
val c = "chaîne"
val i = "internationalisation"

abrev(s) // "xy"
abrev(c) // "c4e"
abrev(i) // "i18n"

longueur(abrev(s)) // 2
longueur(abrev(c)) // 6
longueur(abrev(i)) // 20

s.length // 2
c.length // 6
i.length // 20

