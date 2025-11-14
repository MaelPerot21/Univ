package adapter.exemple1;

/**
 * Implémentation d'un adaptateur concret.
 */
public class ClasseCible implements InterfaceCible {

    @Override
    public String service(String data) {
        return data + data;
    }
}
