package ex3;

import java.util.Arrays;
import java.util.stream.Stream;

public class Main {

	public static void main(String[] args) {
		int t[][] = {{1,2}, {1,4}, {3,2}, {1,2}};
		Stream<Coord> s = Arrays.stream(t).map((array) -> new Coord(array[0], array[1]));
		s.distinct();
		s.forEach((c) -> System.out.println("Coord " + c.getX() + " " + c.getY()));
	}

}
