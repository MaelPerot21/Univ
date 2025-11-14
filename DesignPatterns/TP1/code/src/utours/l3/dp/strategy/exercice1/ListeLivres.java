import java.util.ArrayList;

public class ListeLivres {

	private ArrayList<Livre> liste;

	/**
	 * Création d'une liste de livres.
	 * Les structures mémoire de stockage sont initialisées et vides.
	 */
	public ListeLivres() {

		liste = new ArrayList<Livre>();
	}

	/**
	 * Ajout d'un livre dans la liste.
	 * L'ajout se fait par ordre d'arrivée.  
	 * @param livre objet Livre à ajouter
	 * @see Livre
	 */
	public void addLivre(Livre livre) {
		liste.add(livre);
	}


	/**
	 * Affichage simple de la liste
	 */ 
	public void afficher(AfficheurLivre afficheur) {	
		for (Livre livre : liste) {
			livre.afficheur(afficheur);
		}
	}


}