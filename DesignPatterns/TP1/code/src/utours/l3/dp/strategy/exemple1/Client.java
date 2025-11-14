package strategy.exemple1;


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
        System.out.println("Création des strategy");
        StrategyConcrete1 SC1 = new StrategyConcrete1();
        StrategyConcrete2 SC2 = new StrategyConcrete2();

        System.out.println("Création d'une classe contexte avec la strategie 1");
        ClasseContexte MC = new ClasseContexte(SC1);

        System.out.println("Appel de la méthode soumise à stratégie");
        MC.service_soustraite();

        System.out.println("Changement de strategie");
        MC.setStrategy(SC2);

        System.out.println("Appel de la méthode soumise à stratégie");
        MC.service_soustraite();

    }
}
