// olivier.ploton@univ-tours.fr Calcul Fonctionnel Scala L3 Info

import Ordering.Implicits._

// Q1
def tri[T: Ordering](a: T, b: T): (T, T) = {
  if (a <= b)  (a, b)  else  (b, a)
}

tri(1, 2) // (1, 2)
tri(2, 1) // (1, 2)
tri(1, 1) // (1, 1)

tri("foo", "bar") // ("bar", "foo")
tri("bar", "foo") // ("bar", "foo")

// Q2
def tri[T: Ordering](a: T, b: T, c: T): (T, T, T) = {
  val (u, v) = tri(a, b)
  if (c < u) {
    (c, u, v)
  } else if (v < c) {
    (u, v, c)
  } else {
    (u, c, v)
  }
}

tri(1, 2, 3) // (1, 2, 3)
tri(1, 3, 2) // (1, 2, 3)
tri(2, 1, 3) // (1, 2, 3)
tri(2, 3, 1) // (1, 2, 3)
tri(3, 1, 2) // (1, 2, 3)
tri(3, 2, 1) // (1, 2, 3)

tri(1, 1, 2) // (1, 1, 2)
tri(1, 2, 1) // (1, 1, 2)
tri(2, 1, 1) // (1, 1, 2)

tri(1, 2, 2) // (1, 2, 2)
tri(2, 1, 2) // (1, 2, 2)
tri(2, 2, 1) // (1, 2, 2)

tri(1, 1, 1) // (1, 1, 1)


