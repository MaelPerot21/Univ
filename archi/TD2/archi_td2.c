/* decalage de k crans vers la gauche : (n << k);
 * decalage de k crans vers la droite : (n >> k);
 * decalage de k crans vers la gauche avec des 1 : (n << k) | ((1 << k) - 1);
 * decalage de k crans vers la droite avec des 1 : (n >> k) | (((1 << k) - 1) << (8 - k));
 * rotation de k crans vers la gauche : n(n << k) | (n >> (8 - k));
 * rotation de k crans vers la droite : (n >> k) | (n << (8 - k));
 * echange des deux chiffres hexadecimaux : (n >> 4) | (n << 4);
*/

void Decrire(char c) 
{
	if (c & 1 != 0)
		printf("(Lecture seule)");
	if (c & (1 << 1) != 0)
		printf("(Fichier cache)");
	if (c & (1 << 2) != 0)
		printf("(Fichier Systeme)");
	if (c & (1 << 3) != 0)
		printf("(Nom de Volume)");
	if (c & (1 << 4) != 0)
		printf("(Sous-repertoire)");
	if (c & (1 << 5) != 0)
		printf("(Archive)");
}

/* 
 * Pour mettre a 1 le bit "Fichier syteme" : c = c | (1 << 2);
 * Pour mettre a 0 le bit "Fichier syteme" : c = c & ~(1 << 2);
 * Pour inverser le bit "Fichier syteme" : c = ;
