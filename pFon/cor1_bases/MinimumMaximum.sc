// olivier.ploton@univ-tours.fr Calcul Fonctionnel Scala L3 Info

import Ordering.Implicits._

// Q1
def min[T: Ordering](a: T, b: T): T = if (a <= b)  a  else  b
def max[T: Ordering](a: T, b: T): T = if (a >= b)  a  else  b

min(3, 5) // 3
min("foo", "bar") // "bar"

max(3, 5) // 5
max("foo", "bar") // "foo"

// Q2
def mincur[T: Ordering](a: T)(b: T): T = min(a, b)
def maxcur[T: Ordering](a: T)(b: T): T = max(a, b)

mincur(3)(5) // 3
mincur("foo")("bar") // "bar"

maxcur(3)(5) // 5
maxcur("foo")("bar") // "foo"

// Q3
extension[T: Ordering](a: T) infix def opmax(b: T): T = max(a, b)
extension[T: Ordering](a: T) infix def opmin(b: T): T = min(a, b)

3 opmin 5 // 3
"foo" opmin "bar" // "bar"

3 opmax 5 // 5
"foo" opmax "bar" // "foo"

3.opmin(5) // 3
"foo".opmin("bar") // "bar"

3.opmax(5) // 5
"foo".opmax("bar") // "foo"

// en Scala standard prédéfini:

3 min 5 // 3
"foo" min "bar" // "bar"

3 max 5 // 5
"foo" max "bar" // "foo"

3.min(5) // 3
"foo".min("bar") // "bar"

3.max(5) // 5
"foo".max("bar") // "foo"

