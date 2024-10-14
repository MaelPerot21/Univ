package exo2;

public class TestEnsemble {
    public static void main(String[] args) {
        Ensemble A = new Ensemble();
        Ensemble B = new Ensemble();
        Ensemble C = new Ensemble();
        A.ajouter(1);
        A.ajouter(2);
        A.ajouter(3);
        B.ajouter(3);
        B.ajouter(5);
        B.ajouter(7);
        System.out.println(A);
        System.out.println(B);
        System.out.println(C);
        C = A.union(B);
        System.out.println("union de A et B = "+C);
        Ensemble D = new Ensemble();
        D = A.intersection(B);
        System.out.println("intersection de A et B = "+D);
    }
}
