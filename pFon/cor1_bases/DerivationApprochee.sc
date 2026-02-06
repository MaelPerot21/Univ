// olivier.ploton@univ-tours.fr Calcul Fonctionnel Scala L3 Info

// Q1
val epsilon: Double = 1e-6
def d(f: Double => Double): Double => Double = {
  // ici epsilon est la valeur globale
  x => (f(x + epsilon/2) - f(x - epsilon/2)) / epsilon
}

// Q2
def derivation(epsilon: Double)(f: Double => Double): Double => Double = {
  // ici epsilon est le paramètre
  x => (f(x + epsilon/2) - f(x - epsilon/2)) / epsilon
}

val der = derivation(epsilon)
der // de type (Double => Double) => (Double => Double)

val x: Double = 1.0 // par exemple
import Math._

d(exp)(x)
   exp(x)

d(sin)(x)
   cos(x)

d(cos)(x)
  -sin(x)

d(log)(x)
      1/x

d(x => 1/x)(x)
      -1/(x*x)

d(x => x*x)(x)
           2*x

d(x => 3*x)(x)
           3.0

