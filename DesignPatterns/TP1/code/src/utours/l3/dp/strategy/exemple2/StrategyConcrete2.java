package strategy.exemple2;

/**
 * Implémentation d'une stratégie concrète.
 */
public class StrategyConcrete2 implements InterfaceStrategy {

    /**
     * Service proposé par la stratégie concrète.
     * @param data [String] information transmise à la strategie
     */
    @Override
    public void service(String data) {
        System.out.println(" -> StrategyConcrete2 a reçu " + data);
    }
}
