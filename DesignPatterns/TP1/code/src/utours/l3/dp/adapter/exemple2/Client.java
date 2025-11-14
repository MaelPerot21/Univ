package adapter.exemple2;

/**
 * Demonstration du Strategy dans sa version la plus simple.
 *
 * La classe ClasseContexte expose une méthode service_soustraite()
 * qui est réalisée au moyen d'un strategy. Dans la version de base
 * il n'y a pas d'information échangée entre le contexte et son sous
 * traitant.
 */
public class Client {
    public static void main(String[] args) {
        System.out.println("Instanciation d'un objet original");
        InterfaceCible objetCible = new ClasseCible() ;

        System.out.println("Appel de la méthode cible");
        String res1 = objetCible.service("5");
        System.out.println("-> " + res1);

        System.out.println("Instanciation d'un objet adapté (par classification)");
        objetCible = new Adapter2();

        System.out.println("Appel de la méthode cible de l'objet adapté");
        String res2 = objetCible.service("5");
        System.out.println("-> " + res2);
    }
}
