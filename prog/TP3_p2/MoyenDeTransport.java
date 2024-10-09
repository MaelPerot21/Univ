public class MoyenDeTransport implements Deplacement{
    private int x, y, vitesse;
    private static int vitesseInitiale = 10;

    public MoyenDeTransport() {
        x = 0;
        y = 0;
        vitesse = vitesseInitiale;
    }

    public MoyenDeTransport(int vitesse, int limit) {
        x = 0;
        y = 0;
        limitation(vitesse*getVitesseInitiale(), limit);
    }

    public int getX() {
        return x;
    }
    public int getY() {
        return y;
    }
    public int getVitesse() {
        return vitesse;
    }
    public static int getVitesseInitiale() {
        return vitesseInitiale;
    }

    public void setX(int x) {
        this.x = x;
    }
    public void setY(int y) {
        this.y = y;
    }
    public void setVitesse(int vitesse) {
        this.vitesse = vitesse;
    }
    public static void setVitesseInitiale(int vitesseInitiale) {
        MoyenDeTransport.vitesseInitiale = vitesseInitiale;
    }

    public void seDeplacer() {
        deplacementEnX();
        deplacementEnY();
    }

    public void afficher() {
        System.out.println("x:" + String.valueOf(x) + " ; y:" + String.valueOf(y));
    }

    public void limitation(int new_speed, int limit) {
        vitesse = Math.min(new_speed, limit);
    }
}
