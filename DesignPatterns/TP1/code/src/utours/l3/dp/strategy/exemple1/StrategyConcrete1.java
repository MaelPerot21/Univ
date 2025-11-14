package strategy.exemple1;

/**
 * Implémentation d'une stratégie concrète.
 */
public class StrategyConcrete1 implements InterfaceStrategy {

    /**
     * Service proposé par la stratégie concrète.
     */
    @Override
    public void service() {
        System.out.println(" -> service réalisé par la classe StrategyConcrete1 ");
    }
}
