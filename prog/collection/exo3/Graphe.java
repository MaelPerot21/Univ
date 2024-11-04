package exo3;

import java.util.ArrayList;
import java.util.HashMap;

public class Graphe {
    HashMap<String, ArrayList<Couple>> leGraphe;

    public Graphe() {
        leGraphe = new HashMap<String, ArrayList<Couple>>();
    }

    public void ajouterSommet(String sommet) {
        leGraphe.put(sommet, new ArrayList<Couple>());
    }

    public void ajouterChemin(String depart, String arrivee, int poids) {
        if (!leGraphe.keySet().contains(depart))
    		ajouterSommet(depart);
		if (!leGraphe.keySet().contains(arrivee))
    		ajouterSommet(arrivee);
    	
		leGraphe.get(depart).add(new Couple(arrivee, poids));
    }

    public void ajouterCheminSiAbsentMAJSiExistant(String depart, String arrivee, int distance) {
        for (Couple c : leGraphe.get(depart)) {
            if (c.getS().equals(arrivee)) {
                c.setWeight(distance);
                return;
            }
        }

        ajouterChemin(depart, arrivee, distance);
    }

    public String toString() {
        String result = new String();
    	for (String s : leGraphe.keySet()) {
    		result += "{"+s+", {";
			for (int i = 0; i < leGraphe.get(s).size(); i++) {
				result += "("+leGraphe.get(s).get(i).getS()+", "+leGraphe.get(s).get(i).getWeight()+")";
				if (i != leGraphe.get(s).size() - 1)
					result += ", ";
			}
			result += "}}\n";
    	}
    	return result;
    }

    public int distance(String depart, String arrivee)
    {
        for (Couple c : leGraphe.get(depart)) {
            if (c.getS().equals(arrivee)) {
                return c.getWeight();
            }
        }
        return -1;
    }
}
