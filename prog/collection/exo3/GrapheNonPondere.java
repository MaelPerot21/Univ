package exo3;

import java.util.HashMap;

public class GrapheNonPondere {
    HashMap<String, Integer> leGraphe;

    public GrapheNonPondere() {
        leGraphe = new HashMap<String, Integer>();
    }

    public void ajouterSommet(String s) {
        leGraphe.keySet(s);
    }
}
