package strategy.exemple2;


/**
 * Demonstration du Strategy dans sa version la plus simple.
 *
 * La classe ClasseContexte expose une méthode service_soustraite()
 * qui est réalisée au moyen d'un strategy. Dans cette version l'information
 * utile à la stratégie est fournie par la classe de contexte. La classe de
 * contexte acquiert cette information via son constructeur, mais peut aussi
 * proposer un setter pour cela.
 */
public class Client {
    public static void main(String[] args) {
        System.out.println("Création des strategy");
        StrategyConcrete1 SC1 = new StrategyConcrete1();
        StrategyConcrete2 SC2 = new StrategyConcrete2();

        System.out.println("Création d'une classe contexte avec la strategie 1");
        ClasseContexte MC = new ClasseContexte(SC1, "DP Strategy");

        System.out.println("Appel de la méthode soumise à stratégie");
        MC.service_soustraite();

        System.out.println("Changement de strategie");
        MC.setStrategy(SC2);

        System.out.println("Appel de la méthode soumise à stratégie");
        MC.service_soustraite();

    }
}
