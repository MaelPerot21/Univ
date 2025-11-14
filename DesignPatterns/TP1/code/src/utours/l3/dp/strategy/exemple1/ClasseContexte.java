package strategy.exemple1;

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

    /**
     * Constructeur de la classe de contexte.
     * Le constructeur reçoit la stratégie à utiliser.
     * @param frs [InterfaceStrategy] stratégie concrète à utiliser
     * @see InterfaceStrategy
     */
    public ClasseContexte(InterfaceStrategy frs) {
        setStrategy(frs);
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
     */
    public void service_soustraite() {
        strategy_provider.service();
    }
}
