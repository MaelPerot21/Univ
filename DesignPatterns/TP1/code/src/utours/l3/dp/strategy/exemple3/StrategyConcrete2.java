package strategy.exemple3;

/**
 * Implémentation d'une stratégie concrète.
 */
public class StrategyConcrete2 implements InterfaceStrategy {

    /**
     * Service proposé par la stratégie concrète.
     * @param contexte [ClasseContexte] contexte auprès duquel récupérer l'information utile
     */
    @Override
    public void service(ClasseContexte contexte) {
        System.out.println(" -> StrategyConcrete2 a reçu " + contexte.getaData());
    }
}
