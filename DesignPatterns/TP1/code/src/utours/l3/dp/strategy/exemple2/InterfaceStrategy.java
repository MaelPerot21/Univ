package strategy.exemple2;

/**
 * Standardisation des stratégies concrètes.
 */
public interface InterfaceStrategy {

    /**
     * Service offert par une stratégie.
     * @param data [String] information transmise à la strategie
     */
    public void service(String data);
}
