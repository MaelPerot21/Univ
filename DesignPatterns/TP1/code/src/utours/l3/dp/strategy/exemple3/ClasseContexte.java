package strategy.exemple3;

/**
 * Classe de Contexte qui expose une opération sous traitée.
 *
 * Cette classe est en relation avec une stratégie définie par InterfaceStrategy.
 * Cette relation peut être définie via un setter ou le constructeur. La méthode
 * soumise à strategy service_soustraite utilise la stratégie concrète mémorisée
 * de façon à réaliser le service demandé.
 */
public class ClasseContexte {
    private InterfaceStrategy strategy_provider;
    private String contexte_data;

    /**
     * Constructeur de la classe de contexte.
     * Le constructeur reçoit la stratégie à utiliser.
     * @param frs [InterfaceStrategy] stratégie concrète à utiliser
     * @param data [String] données propres à la classe contexte
     * @see InterfaceStrategy
     */
    public ClasseContexte(InterfaceStrategy frs, String data) {
        setStrategy(frs);
        setData(data);
    }

    /**
     * Définition des données propres à la classe de contexte.
     * @param data [String] Données propres à la classe.
     */
    private void setData(String data) {
        contexte_data = data;
    }

    /**
     * Setter définissant la stratégie concrète à utiliser.
     * @param frs [InterfaceStrategy] stratégie concrète à utiliser
     * @see InterfaceStrategy
     */
    public void setStrategy(InterfaceStrategy frs) {
        //TODO interdire l'affectation d'un frs NULL
        strategy_provider = frs;
    }

    /**
     * Service de la classe contexte sous-traité.
     * Le transfert d'information vers la stratégie se fait via l'objet contexte.
     */
    public void service_soustraite() {
        strategy_provider.service(this);
    }

    /**
     * Lecture de l'information détenue par la classe contexte.
     * @return [String] Information de contexte contenue dans la classe.
     */
    public String getaData() {
        return contexte_data;
    }
}
