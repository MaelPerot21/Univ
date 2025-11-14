package strategy.exemple3;

/**
 * Standardisation des stratégies concrètes.
 */
public interface InterfaceStrategy {

    /**
     * Service offert par une stratégie.
     * @param contexte [ClasseContexte] contexte auprès duquel récupérer l'information utile
     */
    public void service(ClasseContexte contexte);
}
