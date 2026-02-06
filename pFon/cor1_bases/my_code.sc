def reponse (s: String): String = "> " + s
def repondre (s: String): Unit = {
  println(reponse(s))
}

def citation(personne: String, texte: String): String = {
  "Citation de " + personne + ": " + texte
}
def citer(personne: String, texte: String): Unit = {
  println(citation(personne, texte))
}

def double(n: Int): Int = {
  2*n
}

def dixieme(n: Int): Double = {
  n / 10.0
}

def dernierChiffre(n: Int): Int = {
  n % 10
}

def estImpair(n: Int): Boolean = {
  n % 2 == 1
}

def moins1puiss(n: Int): Int = {
  if (n % 2 == 0) {
    1
  }
  else {
    -1
  }
}

def hypothenuse(a: Double, b: Double): Double = {
  math.sqrt(a*a + b*b)
}

def pluriel(s: String): String = {
  s + "s"
}

def compte(n: Int, mot: String): String = {
  if (n > 1) {
    n + " " + pluriel(mot)
  }
  else {
    n + " " + mot
  }
}

def signe(n: Int): Int = {
  if (n > 0) {
    1
  }
  else if (n < 0) {
    -1
  }
  else {
    0
  }
}

def entrePar(n: Int): String = {
  if (n < 0) {
  "(" + n.toString() + ")"
  }
  else {
    n.toString()
  }
}

def formulePuiss(n: Int, p: Int) = {
  entrePar(n) + "**" + entrePar(p)
}

def estBissextile(n: Int): Boolean = {
  if (n % 4 == 0) {
    if (n % 100 == 0) {
      if (n % 400 == 0) {true}
      else {false}
    }
    else {true}
  }
  else {false}
}

def niemeChiffre(x:Double, n: Int): Int = {
  if (x < 0) {
    (math.pow(10, n) * -x % 10).toInt
  }
  else {
    (math.pow(10, n) * x % 10).toInt
  }
}

def sincard(x: Double): Double = {
  if (x == 0.0) {
    1
  }
  else {
    math.sin(x) / x
  }
}

def unaire(n: Int): String = {
  "1+" + unaire(n-1)
}

object Main extends App {
  println(unaire(6))
}