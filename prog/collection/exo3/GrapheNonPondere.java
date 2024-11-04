package exo3;

import java.util.ArrayList;
import java.util.HashMap;

public class GrapheNonPondere {
    HashMap<String, ArrayList<String>> leGraphe;

    public GrapheNonPondere() {
        leGraphe = new HashMap<String, ArrayList<String>>();
    }

    public void ajouterSommet(String s) {
        leGraphe.put(s, new ArrayList<String>());
    }
    
    public void ajouterChemin(String depart, String arrivee) {
    	if (!leGraphe.keySet().contains(depart))
    		ajouterSommet(depart);
		if (!leGraphe.keySet().contains(arrivee))
    		ajouterSommet(arrivee);
    	
		leGraphe.get(depart).add(arrivee);
    }
    
    public String toString() {
    	String result = new String();
    	for (String s : leGraphe.keySet()) {
    		result += "{"+s+", {";
			for (int i = 0; i < leGraphe.get(s).size(); i++) {
				result += leGraphe.get(s).get(i);
				if (i != leGraphe.get(s).size() - 1)
					result += ", ";
			}
			result += "}}\n";
    	}
    	return result;
    }
}
