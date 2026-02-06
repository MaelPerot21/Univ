// olivier.ploton@univ-tours.fr Calcul Fonctionnel Scala L3 Info

// Q1
def double (n: Int): Int = 2 * n

double(10) // 20

// Q2
def dixieme (n: Int): Double = n / 10.0

dixieme(5) // 0.5
dixieme(10) // 1.0

// Q3
def dernierChiffre (n: Int): Int = n % 10

dernierChiffre(12345) // 5

// Q4
def estImpair (n: Int): Boolean = n % 2 != 0

estImpair(23) // true
estImpair(24) // false

// Q5
def moins1puiss(n: Int): Int = {
  if estImpair(n) then -1 else 1
}

moins1puiss(23) // -1
moins1puiss(24) // 1

// Q6
def hypothenuse(a: Double, b: Double): Double = {
  math.sqrt(a*a + b*b)
}

// √(3² + 4²) = √(9 + 16) = √25 = 5
hypothenuse(3, 4) // 5.0

// Q7
def pluriel (mot: String): String = mot + "s"

pluriel("objet") // "objets"
pluriel("cheval") // "chevals" (oups)

// Q8
def compte (n: Int, mot: String): String = {
  val nmots = if (n > 1)  pluriel(mot)  else  mot
  "" + n + " " + mot
}

compte(1, "objet") // "1 objet"
compte(3, "objet") // "3 objets"

// Q9
def signe (x: Double): Int = {
  if (x > 0)  1  else if (x < 0)  -1  else 0
}

signe(3.5) // 1
signe(-3.5) // -1
signe(0) // 0

// Q10
def entrePar (n: Int): String = {
  if (n < 0)  "(" + n + ")"  else  "" + n
}

entrePar(0) // "0"
entrePar(123) // "123"
entrePar(-123) // "(-123)"

// Q11
def formulePuiss (n: Int, p: Int): String = {
  "" + entrePar(n) + "**" + entrePar(p)
}

formulePuiss(-1, 2) // "(-1)**2"
formulePuiss(10, 2) // "10**2"
formulePuiss(-1, -2) // "(-1)**(-2)"
formulePuiss(10, -2) // "10**(-2)"

// Q12
def estBissextile (a: Int): Boolean = {
  a % 4 == 0  &&  a % 100 != 0  ||  a % 400 == 0
}

estBissextile(2000) // true
estBissextile(2002) // false
estBissextile(2004) // true
estBissextile(1900) // false

// Q13
def niemeChiffre(x: Double, n: Int): Int = {
  import Math._
  floor(pow(10.0, n) * abs(x)).toInt % 10
}

val milpi = 1000 * Math.PI
milpi // 3141.5926....
niemeChiffre(milpi, -3) // 3
niemeChiffre(milpi, -2) // 1
niemeChiffre(milpi, -1) // 4
niemeChiffre(milpi,  0) // 1
niemeChiffre(milpi,  1) // 5
niemeChiffre(milpi,  2) // 9
niemeChiffre(milpi,  3) // 2
niemeChiffre(milpi,  4) // 6

// Q14
def sincard (x: Double): Double = {
  import Math.sin
  if (x == 0)  1  else  sin(x) / x
}

sincard(0)
// sin π/2 = 1 donc sincard π/2 = 2/π
sincard(Math.PI / 2)
/*****/  2 / Math.PI

// Q15
// Aucune vérification de cohérence n'est effectuée
def unaire (n: Int): String = "0" + "+1" * n
def valeur(s: String) = (s.length - 1) / 2

val u5 = unaire(5)
u5 // "0+1+1+1+1+1"
valeur(u5) // 5
