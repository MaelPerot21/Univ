package exo2;

import java.util.ArrayList;
import java.util.List;

public class Ensemble {
    private List<Integer> elements;

    public Ensemble() {
        elements = new ArrayList<Integer>();
    }

    public void ajouter(int a) {
        elements.add(a);
    }

    public int taille() {
        return elements.size();
    }

    public int getElement(int i) {
        return elements.get(i);
    }

    public String toString() {
        return elements.toString();
    }

    public boolean contains(int i) {
        return elements.contains(i);
    }

    public List<Integer> getElements() {
        return elements;
    }

    public Ensemble intersection(Ensemble e) {
        Ensemble res = new Ensemble();
        for (int elem : e.elements) {
            if (contains(elem))
                res.ajouter(elem);
        }

        return res;
    }

    public Ensemble union(Ensemble e) {
        Ensemble res = new Ensemble();
        for (int elem : e.elements) {
            if (!contains(elem))
                res.ajouter(elem);
        }
        for (int elem : elements)
            res.ajouter(elem);

        return res;
    }
}
