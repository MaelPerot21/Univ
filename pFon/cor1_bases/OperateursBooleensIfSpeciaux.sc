// olivier.ploton@univ-tours.fr Calcul Fonctionnel Scala L3 Info

// Q1
extension(a: Boolean) infix def andthen (b: => Boolean) = {
  if (a)  b  else  false
}

extension(a: Boolean) infix def orelse (b: => Boolean) = {
  if (a)  true  else  b
}

var s = "" // vide
((s != "") andthen (s.substring(0, 1) == "@")) // false, pas d'exception produite
((s != "") && (s.substring(0, 1) == "@")) // false, pas d'exception produite
((s == "") orelse (s.substring(0, 1) != "@")) // true, pas d'exception produite
((s == "") || (s.substring(0, 1) != "@")) // true, pas d'exception produite

s = "#essai" // ne commence pas par @
((s != "") andthen (s.substring(0, 1) == "@")) // false
((s != "") && (s.substring(0, 1) == "@")) // false
((s == "") orelse (s.substring(0, 1) != "@")) // true
((s == "") || (s.substring(0, 1) != "@")) // true

s = "@essai" // commence par @
((s != "") andthen (s.substring(0, 1) == "@")) // true
((s != "") && (s.substring(0, 1) == "@")) // true
((s == "") orelse (s.substring(0, 1) != "@")) // false
((s == "") || (s.substring(0, 1) != "@")) // false

// Q2
def ifPZN[T](n: Int)(ifP: => T)(ifZ: => T)(ifN: => T) = {
  if (n > 0) ifP else if (n == 0) ifZ else ifN
}

ifPZN(37) {
  "OK"
}{
  throw RuntimeException("KO")
}{
  throw RuntimeException("KO")
}
// "OK", pas d'exception produite

ifPZN(0) {
  throw RuntimeException("KO")  
}{
  "OK"
}{
  throw RuntimeException("KO")
}
// "OK", pas d'exception produite

ifPZN(-5) {
  throw RuntimeException("KO")
}{
  throw RuntimeException("KO")
}{
  "OK"
}
// "OK", pas d'exception produite

