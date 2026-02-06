// olivier.ploton@univ-tours.fr Calcul Fonctionnel Scala L3 Info

def ppaire  (f: Double => Double)(x: Double): Double = (f(x) + f(-x)) / 2
def pimpaire(f: Double => Double)(x: Double): Double = (f(x) - f(-x)) / 2

/*
def f(x: Double): Double = x*x + x + 1
def p(x: Double): Double = x*x + 1
def i(x: Double): Double = x
*/

val p = ppaire(x => x*x + 3*x + 1) // p(x) = x² + 1
p(1) // 1² + 1 = 1 + 1 = 2 = 2.0
p(2) // 2² + 1 = 4 + 1 = 5 = 5.0
p(3) // 3² + 1 = 9 + 1 = 10 = 10.0

val i = pimpaire(x => x*x + 3*x + 1) // i(x) = 3x
i(1) // 3 * 1 = 3 = 3.0
i(2) // 3 * 2 = 6 = 6.0
i(3) // 3 * 3 = 9 = 9.0

