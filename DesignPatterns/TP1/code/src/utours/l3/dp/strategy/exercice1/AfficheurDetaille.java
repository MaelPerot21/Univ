public class AfficheurDetaille implements AfficheurLivre {
    /**
	 * affichage détaillé
	 */
    public void affiche(Livre livre) {
		System.out.println("Titre     : " + livre.getTitre());
		System.out.println("Auteur(s) : " + livre.getAuteur());
		System.out.println("Annee     : " + livre.getAnnee());
		System.out.println("Editeur   : " + livre.getEditeur());
		System.out.println("ISBN      : " + livre.getIsbn());
		System.out.println("Résumé    : "); 
		System.out.println(	livre.getResume());
		System.out.println("----------------------------------------");
    }
}
