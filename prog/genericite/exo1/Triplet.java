package exo1;

public class Triplet<T> {
    private T premier;
    private T deuxieme;
    private T troisieme;

    public Triplet(T first, T second, T third) {
        premier = first;
        deuxieme = second;
        troisieme = third;
    }

    public T getPremier() {
        return premier;
    }

    public T getDeuxieme() {
        return deuxieme;
    }

    public T getTroisieme() {
        return troisieme;
    }

    public void affiche() {
        StringBuffer toPrint = new StringBuffer();
        toPrint.append(premier);
        toPrint.append(", ");
        toPrint.append(deuxieme);
        toPrint.append(", ");
        toPrint.append(troisieme);

        System.out.println(toPrint);
    }
}