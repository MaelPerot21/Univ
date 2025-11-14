public class User {

    /**
     * méthode principale faisant la démonstration du moteur de recherche
     * @param args arguments de la ligne de commande
     */
	public static void main(String[] args) {

        // le moteur est un fake, pour les besoins de la démo, il met à disposition,
        // en dur, les résultats. 
        SearchEngine engine = new SearchEngine();
        ListeLivres liste = engine.getResult();
        AfficheurLivre afficheur = new AfficheurSimple();
        
        // affichage simple 
        liste.afficher(afficheur);

    }

}