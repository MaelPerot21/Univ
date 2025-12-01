package tla;

import java.util.List;

public class TP1 {

	public static void main(String[] args) {

		// testAnalyseLexicale("12 + + 42");
		// testAnalyseLexicale("+ * ( ) , hello 312 = == ! !=");
		// testAnalyseLexicale("a=b a==b !a a!=b");
		testAnalyseLexicale("   12+a*(b+1) 2*3+5 a + b * ( c + d )   ");

	}

	/*
	effectue l'analyse lexicale de la chaine entree,
	affiche la liste des tokens reconnus
	 */
	private static void testAnalyseLexicale(String entree) {
		System.out.println("test analyse lexicale");
		try {
			List<Token> tokens = new AnalyseLexicale().analyse(entree);
			for (Token t : tokens) {
				System.out.println(t);
			}
		} catch (Exception e) {
			e.printStackTrace(System.out);
		}
		System.out.println();
	}

}
