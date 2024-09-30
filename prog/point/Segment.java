package point;

public class Segment {
    private Point p1;
    private Point p2;

    public Segment() {
        p1 = new Point();
        p2 = new Point();
    }

    public Segment(Point p1, Point p2) {
        this.p1 = p1;
        this.p2 = p2;
    }

    public Segment(double x1, double y1, double x2, double y2) {
        p1 = new Point(x1, y1);
        p2 = new Point(x2, y2);
    }


    public Point getP1() {
        return p1;
    }

    public void setP1(Point p1) {
        this.p1 = p1;
    }

    public Point getP2() {
        return p2;
    }

    public void setP2(Point p2) {
        this.p2 = p2;
    }

    public void translaterP1(double dx, double dy) {
        p1.translater(dx, dy);
    }

    public void translaterP2(double dx, double dy) {
        p2.translater(dx, dy);
    }

    public void translater(double dx1, double dy1, double dx2, double dy2) {
        translaterP1(dx1, dy1);
        translaterP2(dx2, dy2);
    }

    public void symetrieHorizontale() {
        p1.symetrieHorizontale();
        p2.symetrieHorizontale();
    }

    public void symetrieVerticale() {
        p1.symetrieVerticale();
        p2.symetrieVerticale();
    }

    public Segment copie() {
        Segment cpy = new Segment(p1.copie(), p2.copie());

        return cpy;
    }

    public String toString() {
        String str = "["+String.valueOf(x)+";"+String.valueOf(y)+")";
    }
}
