// olivier.ploton@univ-tours.fr Calcul Fonctionnel Scala L3 Info

// Q1
def estEntier (x: Double): Boolean = {
  val n = x.toInt
  (x == n)
}

estEntier(5.0) // true
estEntier(0.5) // false


// Q2
def reprEntier (s: String): Boolean = {
  try {
    s.toInt // résultat perdu, exception si KO
    true
  } catch {
    case e: NumberFormatException => false
  }
}

reprEntier("5") // true
reprEntier("-3") // true
reprEntier("5.0") // false
reprEntier("cinq") // false


// Q3
extension(d: Int) infix def divise(n: Int): Boolean = {
  if (d == 0)  n == 0  else  n % d == 0
}

0 divise 0 // true
0 divise 2 // false
0 divise 3 // false
0 divise 6 // false

2 divise 0 // true
2 divise 2 // true
2 divise 3 // false
2 divise 6 // true

3 divise 0 // true
3 divise 2 // false
3 divise 3 // true
3 divise 6 // true

6 divise 0 // true
6 divise 2 // false
6 divise 3 // false
6 divise 6 // true

// Q4
import Ordering.Implicits._
extension[T: Ordering](x: T) infix def entre(a: T, b: T): Boolean = {
  (a <= x  &&  x <= b) || (b <= x  &&  x <= a)
}

1 entre (2, 3) // false
1 entre (3, 2) // false
2 entre (1, 3) // true
2 entre (3, 1) // true
3 entre (1, 2) // false
3 entre (2, 1) // false

