package adapter.exemple2;

/**
 * Implémentation d'un adaptateur concret.
 * Dans l'approche par classification l'adaptateur implémente l'interface de la
 * classe cible, et dérive de la classe à adapter. La sous-traitance se fait donc
 * au moyen de méthodes héritées de la classe adaptée.
 */
public class Adapter2 extends ClasseAdaptee implements InterfaceCible {

    /**
     * Service proposé par l'adaptateur concret.
     */
    @Override
    public String service(String data) {
        // adaptation des données d'entrée
        int input = Integer.parseInt(data);
        // calcul du résultat via la méthode héritée
        int result = service_cible(input);
        // adaptation du résultat produit
        return String.valueOf(result);
    }
}
