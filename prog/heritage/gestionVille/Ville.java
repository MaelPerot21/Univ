package gestionVille;

public class Ville {
    public Bien[] lesBiens;

    public Ville(Bien[] lesBiens) {
        this.lesBiens = lesBiens;
    }

    public String getInfo(int indice) {
        return lesBiens[indice].getInfo();
    }

    public int getNbVehicule() {
        int res = 0;
        for (int i = 0; i < Bien.getNbExemplaires(); i++) {
            if (lesBiens[i].getInfo().contains("Vehicule"))
                res += 1;
        }

        return res;
    }

    public int getNbPersonnesLogees() {
        int res = 0;
        for (int i = 0; i < Bien.getNbExemplaires(); i++) {
            if (lesBiens[i].getInfo().contains("Logement"))
                res += ((Logement) lesBiens[i]).getNbPersonnesLogees();
        }

        return res;
    }

    public int getEntretienCourantMensuel() {
        int res = 0;
        for (int i = 0; i < Bien.getNbExemplaires(); i++) {
            res += lesBiens[i].getCoutEntretienMensuel();
        }

        return res;
    }

    public int getCoutEntretienVehicule() {
        int res = 0;
        for (int i = 0; i < Bien.getNbExemplaires(); i++) {
            if (lesBiens[i].getInfo().contains("Vehicule"))
                res += lesBiens[i].getCoutEntretienMensuel();
        }

        return res;
    }
}
