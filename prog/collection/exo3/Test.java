package exo3;

public class Test {

	public static void main(String[] args) {
		Graphe G = new Graphe();
		
		G.ajouterChemin("A", "B", 10);
		G.ajouterChemin("A", "D", 4);
		G.ajouterChemin("C", "A", 2);
		G.ajouterChemin("B", "C", 3);
		G.ajouterCheminSiAbsentMAJSiExistant("A", "B", 1);
		
		System.out.println(G.distance("A", "B"));
	}

}
