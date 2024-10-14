package exo1;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

public class ListSetTreeSet {
    public static void main(String[] args) {
        List<Integer> lst_coll = new ArrayList<Integer>();
        Set<Integer> st_coll = new HashSet<Integer>();
        TreeSet<Integer> tree_coll = new TreeSet<Integer>();

        for (int i = 0; i < 20; i++) {
            int toAdd = (int) (Math.random() * 10);

            lst_coll.add(toAdd);
            st_coll.add(toAdd);
            tree_coll.add(toAdd);
        }

        System.out.println(lst_coll.toString());
        System.out.println(st_coll.toString());
        System.out.println(tree_coll.toString());
    }
}
