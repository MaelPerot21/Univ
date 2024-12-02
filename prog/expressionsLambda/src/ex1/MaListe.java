package ex1;

import java.util.ArrayList;
import java.util.function.Function;

public class MaListe {
	private ArrayList<Coord> list;
	
	public ArrayList<Coord> getList() {
		return list;
	}
	
	public MaListe() {
		list = new ArrayList<Coord>();
	}
	
	public void add(Coord coord) {
		list.add(coord);
	}
	
	public void afficher(Function<Coord, String> f) {
		for (Coord c : list) {
			f.apply(c);
		}
	}
}
