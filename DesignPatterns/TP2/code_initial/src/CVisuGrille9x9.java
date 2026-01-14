import Datas.CGrille9x9;

public class CVisuGrille9x9 {

	// affichage mode texte de l'ensemble
	public static void display(CGrille9x9 gr) {
		
		System.out.println();
		for (int l=1; l<10; l++) {			
			for (int c=1; c<10; c++) {
				System.out.print(gr.get(c, l));
				if (c<9) System.out.print(" , ");
			}
			System.out.println();
		}
	}

}
