public interface Deplacement {
    public int getX();
    public int getY();
    public int getVitesse();
    public void setX(int x);
    public void setY(int y);

    public default void deplacementEnX() {
        setX(getX() + getVitesse());
    }
    public default void deplacementEnY() {
        setY(getY() + getVitesse());
    }
    
    public void seDeplacer();
}