// olivier.ploton@univ-tours.fr Calcul Fonctionnel Scala L3 Info

// Q1
def affine(a: Double, b: Double)(x: Double) = a * x + b

val f = affine(3, 2)
f(0) // 3*0 + 2 = 2 = 2.0
f(1) // 3*1 + 2 = 5 = 5.0

// Q2
def pente(f: Double => Double): Double = f(1) - f(0)
def orig(f: Double => Double): Double = f(0)

pente(f) // 3.0
orig(f) // 2.0

