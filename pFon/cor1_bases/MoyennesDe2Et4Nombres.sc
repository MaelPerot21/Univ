// olivier.ploton@univ-tours.fr Calcul Fonctionnel Scala L3 Info

// Q1, Q2, Q3
def arith(a: Double, b: Double) = (a + b) / 2
def geom(a: Double, b: Double) = Math.sqrt(a * b)
def quad(a: Double, b: Double) = Math.sqrt((a*a + b*b) / 2)

// Q4
// Avec les nombres à virgule flottante, 1 / 0.0 ne plante pas
// mais produit la valeur +∞, et 1/∞ redonne 0.0
// Donc: pas besoin de tester a==0 / b==0
def harmon(a: Double, b: Double) = 2 / (1 / a + 1 / b)

arith(1, 2) // 1.5
geom(2, 8) // √(2*8) = √16 = 4 = 4.0
quad(1, 7) // √((1² + 7²)/2) = √((1 + 49)/2) = √(50/2) = √25 = 5 = 5.0
harmon(1, 0.25) // 2 / (1/1 + 1/0.25) = 2 / (1 + 4) = 2/5 = 0.4

// Q5
def moy4(moy: (Double, Double) => Double)(a: Double, b: Double, c: Double, d: Double): Double = {
  moy(moy(a, b), moy(c, d))
}

moy4(arith)(1, 3, 5, 7) // (1 + 3 + 5 + 7) / 4 = 16/4 = 4 = 4.0
