package gestionVille;

public class Logement extends Bien{
    private int superficieAuSol, nbPersonnesLogees;

    public Logement() {
        super(0, 0);

        superficieAuSol = 0;
        nbPersonnesLogees = 0;
    }

    public Logement(int valEuros, int coutEntretienMensuel, int superficieAuSol, int nbPersonnesLogees) {
        super (valEuros, coutEntretienMensuel);

        this.superficieAuSol = superficieAuSol;
        this.nbPersonnesLogees = nbPersonnesLogees;
    }

    public int getSuperficieAuSol() {
        return superficieAuSol;
    }

    public void setSuperficieAuSol(int superficieAuSol) {
        this.superficieAuSol = superficieAuSol;
    }

    public int getNbPersonnesLogees() {
        return nbPersonnesLogees;
    }

    public void setNbPersonnesLogees(int nbPersonnesLogees) {
        this.nbPersonnesLogees = nbPersonnesLogees;
    }

    public String getInfo() {
        return "Logement " + 
        Integer.toString(super.getValEuros()) + " " + 
        Integer.toString(super.getCoutEntretienMensuel()) + " " + 
        Integer.toString(superficieAuSol) + " " + Integer.toString(nbPersonnesLogees);
    }
}
