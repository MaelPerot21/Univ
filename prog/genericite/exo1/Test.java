package exo1;

public class Test {
    public static void main(String[] args) {
        Triplet<Integer> tI = new Triplet<Integer>(1,2,3);
        Triplet<String> tS = new Triplet<String>("First","Second","Third");

        tI.affiche();
        tS.affiche();
    }
}
