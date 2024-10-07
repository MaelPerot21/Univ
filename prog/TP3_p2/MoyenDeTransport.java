public class MoyenDeTransport implements Deplacement{
    private int x, y, vitesse;
    private static int vitesseInitiale = 10;

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

    public void deplacementEnX() {}
    public void deplacementEnY() {}
    public void seDeplacer() {
        deplacementEnX();
        deplacementEnY();
    }

    public void afficher() {
        System.out.println(String.valueOf(x) + "; " + String.valueOf(y));
    }

    public void limitation(int new_speed, int limit) {
        vitesse = Math.min(new_speed, limit);
    }
}
