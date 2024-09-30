package point;

import java.lang.Math;

public class Point {
    private double x;
    private double y;
    private static int nbPoints = 0;

    public static int getNbPoints() {
        return nbPoints;
    }

    public Point() {
        x = 0;
        y = 0;
        nbPoints++;
    }

    public Point(double x, double y) {
        this.x = x;
        this.y = y;
        nbPoints++;
    }

    public Point(Point p) {
        x = p.x;
        y = p.y;
        nbPoints++;
    }


    public double getX() {
        return x;
    }

    public void setX(double x) {
        this.x = x; 
    }

    public double getY() {
        return y;
    }

    public void setY(double y) {
        this.y = y;
    }

    public String toString() {
        String str = "("+String.valueOf(x)+";"+String.valueOf(y)+")";

        return str;
    }

    public void translater(double dx, double dy) {
        x += dx;
        y += dy;
    }

    public void symetrieHorizontale() {
        y = 0 - y;
    }

    public void symetrieVerticale() {
        x = 0 - x;
    }

    public Point copie() {
        Point cpy = new Point(this);

        return cpy;
    }

    public boolean confondu(Point p) {
        if ((x == p.x) && (y == p.y))
            return true;
        return false;
    }

    public double distance(Point p) {
        return Math.sqrt((x - p.x) * (x - p.x) + (y - p.y) * (y - p.y));
    }
}