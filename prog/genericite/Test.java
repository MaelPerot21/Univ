import java.util.ArrayList;

public class Test {
    public static void main(String[] args) {
        ArrayList<Integer> troisieme = new ArrayList<Integer>();
        troisieme.add(2);
        troisieme.add(3);
        
        TripletH<Integer, String, ArrayList<Integer>> triplet = 
        new TripletH<Integer, String, ArrayList<Integer>>(1, "Test", troisieme);

        System.out.println(triplet.toString()); 
    }
}
