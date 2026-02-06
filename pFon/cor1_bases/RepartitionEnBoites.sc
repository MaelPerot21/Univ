// olivier.ploton@univ-tours.fr Calcul Fonctionnel Scala L3 Info

// Q1
def repartitionQ1(n: Int, c: Int): (Int, Int) = {
  val (q, r) = (n / c, n % c)
  if (r == 0) (q, c) else (q+1, r)
}

// Q4
def repartitionQ4(n: Int, c: Int): (Int, Int) = {
  val nBoites = (n + c - 1) / c // formule du sujet
  val nObjets = n - (nBoites-1) * c
  (nBoites, nObjets)
}

// choisir repartitionQ1 ou repartitionQ4
val repartition = repartitionQ1

repartition(47, 10) // (5, 7)
repartition(40, 10) // (4, 10)

// Q2
def formule(n: Int, c: Int): String = {
  val (nBoites, nObjets) = repartition(n, c)
  "" + n + " = " + (nBoites-1) + "*" + c + " + " + nObjets
}

formule(47, 10) // "47 = 4*10 + 7"
formule(40, 10) // "40 = 3*10 + 10"

// Q3
def nBoites(n: Int, c: Int): Int = {
  val (resultat, _) = repartition(n, c)
  resultat
}

nBoites(47, 10) // 5 (boîtes à transporter)
nBoites(40, 10) // 4 (boîtes à transporter)

def nObjets(n: Int, c: Int): Int = {
  val (_, resultat) = repartition(n, c)
  resultat
}

nObjets(47, 10) //  7 (objets dans la dernière boîte)
nObjets(40, 10) // 10 (objets dans la dernière boîte)
