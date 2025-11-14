

public class CApplication {

	// programme principal
	public static void main(String[] args) {
		
		// crée une grille vide
		CGrille9x9 grille = new CGrille9x9();

		// Place des chiffres aléatoirement
		for (int x=1; x<10; x++)
			for (int y=1; y<10;y++)
				grille.set(x,y,(int)(Math.random()*9+1));

		// enregistre format texte
		GridSaver gs = new Grid2TextFile(grille, "grille.txt");

		// démo d'enregistrement format xml avec une classe extérieure
		CSudokuGridSaver xmlsaver = new CSudokuGridSaver();
		for (int c=1; c<10; c++)
			for (int l=1; l<10; l++)
				xmlsaver.def(c,l,grille.get(c,l));
		xmlsaver.save("grille.xml");
	}

}
