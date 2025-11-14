package adapter.exemple2;

/**
 * Implémentation d'un adaptateur concret.
 */
public class ClasseCible implements InterfaceCible {

    @Override
    public String service(String data) {
        return data + data;
    }
}
