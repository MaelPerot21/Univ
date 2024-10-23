package exo3;

public class Test {

	public static void main(String[] args) {
		GrapheNonPondere G = new GrapheNonPondere();
		
		G.ajouterChemin("A", "D");
		G.ajouterChemin("A", "B");
		G.ajouterChemin("C", "A");
		G.ajouterChemin("B", "C");
		
		System.out.println(G.toString());
	}

}
