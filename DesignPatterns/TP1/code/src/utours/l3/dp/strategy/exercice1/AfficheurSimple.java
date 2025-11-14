public class AfficheurSimple implements AfficheurLivre {
    /**
	 * affichage simple
	 */
    public void affiche(Livre livre) {
		System.out.print(livre.getTitre() + ", (");
		System.out.print(livre.getEditeur() + "),");
		System.out.println(livre.getAnnee());
		System.out.println("----------------------------------------");
	}
}
