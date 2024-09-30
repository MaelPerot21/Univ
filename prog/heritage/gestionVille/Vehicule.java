package gestionVille;

public class Vehicule extends Bien {
    private String numeroImmatriculation;
    private int nbPlaces;

    public Vehicule() {
        super();

        numeroImmatriculation = "";
        nbPlaces = 0;
    }

    public Vehicule(int valEuros, int coutEntretienMensuel, String numeroImmatriculation, int nbPlaces) {
        super (valEuros, coutEntretienMensuel);

        this.numeroImmatriculation = numeroImmatriculation;
        this.nbPlaces = nbPlaces;
    }

    public String getNumeroImmatriculation() {
        return numeroImmatriculation;
    }

    public void setNumeroImmatriculation(String numeroImmatriculation) {
        this.numeroImmatriculation = numeroImmatriculation;
    }

    public int getNbPlaces() {
        return nbPlaces;
    }

    public void setNbPlaces(int nbPlaces) {
        this.nbPlaces = nbPlaces;
    }

    public String getInfo() {
        return "Vehicule " + 
        Integer.toString(super.getValEuros()) + " " + 
        Integer.toString(super.getCoutEntretienMensuel()) + " " + 
        numeroImmatriculation + " " + Integer.toString(nbPlaces);
    }
}
