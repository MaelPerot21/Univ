/**
 * Classe qui représente un livre
 * Elle mémorise des attributs tels que :
 * <ul>
 * <li> le titre </li>
 * <li> le(s) auteur(s) </li>
 * <li> l'éditeur </li>
 * <li> l'année d'édition </li>
 * <li> le résumé </li>
 * <li> le numéro isbn </li>
 * </ul>
 * Le livre est initialisé lors de sa création avec tous ces paramètres. 
 */
public class Livre {

    private String titre;
    private String auteur;
    private String editeur;
    private int annee;
    private String resume;
    private String isbn;
    
    /**
     * Création d'un livre d'après ses attributs
     * @param titre [String] titre du livre
     * @param auteur [String] auteur(s) du livre
     * @param editeur [String] éditeur du livre
     * @param annee [int] année d'édition
     * @param resume [String] résumé du livre
     * @param isbn [String] numéro isbn du livre
     */
    public Livre(String titre, String auteur, String editeur, int annee, String resume, String isbn) {
    	this.titre = titre;
    	this.auteur = auteur;
    	this.editeur = editeur;
    	this.annee = annee;
    	this.resume = resume;
    	this.isbn = isbn;
    }

	public String getTitre() {
		return titre;
	}
	public String getAuteur() {
		return auteur;
	}
	public String getEditeur() {
		return editeur;
	}
	public int getAnnee() {
		return annee;
	}
	public String getResume() {
		return resume;
	}
	public String getIsbn() {
		return isbn;
	}

	public void afficheur(AfficheurLivre afficheur) {
		afficheur.affiche(this);
	}

}