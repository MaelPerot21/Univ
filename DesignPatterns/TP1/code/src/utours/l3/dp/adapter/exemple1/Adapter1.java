package adapter.exemple1;

/**
 * Implémentation d'un adaptateur concret.
 */
public class Adapter1 implements InterfaceCible {

    ClasseAdaptee cible = new ClasseAdaptee();

    /**
     * Service proposé par l'adaptateur concret.
     */
    @Override
    public String service(String data) {
        // adaptation des données d'entrée
        int input = Integer.parseInt(data);
        // sous-traitance du résultat
        int result = cible.service_cible(input);
        // adaptation du résultat produit
        return String.valueOf(result);
    }
}
