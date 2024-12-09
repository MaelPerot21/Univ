package ex1;

public class Main {
	public static int printNumber;

	public static void main(String[] args) {
		MaListe l = new MaListe();

		l.add(new Coord(0, 1));
		l.add(new Coord(1, 1));
		l.add(new Coord(0, 0));
		l.add(new Coord(1, 0));
		l.add(new Coord(0, -1));
		l.add(new Coord(-1, 0));
		l.add(new Coord(-1, -1));

		l.afficher((Coord c) -> printNumber++ + ". Coordonees " + c.getX() + ", " + c.getY());
	}
}
