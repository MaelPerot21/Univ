package gestionVille;

public abstract class Bien {
    private int valEuros, coutEntretienMensuel;
    private static int nbExemplaires = 0;

    public Bien () {
        valEuros = 0;
        coutEntretienMensuel = 0;

        nbExemplaires++;
    }

    public Bien(int valEuros, int coutEntretienMensuel) {
        this.valEuros = valEuros;
        this.coutEntretienMensuel = coutEntretienMensuel;

        nbExemplaires++;
    }


    public int getValEuros() {
        return valEuros;
    }

    public void setValEuros(int valEuros) {
        this.valEuros = valEuros;
    }

    public int getCoutEntretienMensuel() {
        return coutEntretienMensuel;
    }

    public void setCoutEntretienMensuel(int coutEntretienMensuel) {
        this.coutEntretienMensuel = coutEntretienMensuel;
    }

    public static int getNbExemplaires() {
        return nbExemplaires;
    }

    public abstract String getInfo();
} 