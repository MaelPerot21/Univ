package adapter.exemple2;

/**
 * Standardisation des services utiles à l'application
 */
public interface InterfaceCible {

    /**
     * Service offert par la classe cible.
     * La méthode reçoit une chaîne et produit en retour une autre chaîne.
     * @param data [String] données d'entrée
     * @return [String] données de sortie
     */
    public String service(String data);
}
