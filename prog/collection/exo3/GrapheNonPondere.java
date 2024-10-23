package exo3;

import java.util.HashMap;

public class GrapheNonPondere {
    HashMap<String, String> leGraphe;

    public GrapheNonPondere() {
        leGraphe = new HashMap<String, String>();
    }

    public void ajouterSommet(String s) {
        leGraphe.put(s, null);
    }
    
    public void ajouterChemin(String depart, String arrivee) {
    	boolean isDepart = false;
    	boolean isArrivee = false;
    	for (String s : leGraphe.keySet()) {
    		if (s.equals(depart))
    			isDepart = true;
    		if (s.equals(arrivee))
    			isArrivee = true;
    	}
    	if (!isDepart)
    		ajouterSommet(depart);
    	if (!isArrivee)
    		ajouterSommet(arrivee);
    	
    	leGraphe.put(depart, arrivee);
    }
    
    public String toString() {
    	String result = new String();
    	for (String s : leGraphe.keySet()) {
    		result.concat("{"+s+", {"+leGraphe.get(s)+"}}");
    	}
    	return result;
    }
}
