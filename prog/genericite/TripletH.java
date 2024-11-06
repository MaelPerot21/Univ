public class TripletH<P, D, T> {
    private P premier;
    public P getPremier() {
        return premier;
    }

    private D deuxieme;
    public D getDeuxieme() {
        return deuxieme;
    }

    private T troisieme;
    public T getTroisieme() {
        return troisieme;
    }

    public TripletH(P premier, D deuxieme, T troisieme)
    {
        this.premier = premier;
        this.deuxieme = deuxieme;
        this.troisieme = troisieme;
    }

    public String toString() {
        StringBuffer toPrint = new StringBuffer();
        toPrint.append(premier);
        toPrint.append(", ");
        toPrint.append(deuxieme);
        toPrint.append(", ");
        toPrint.append(troisieme);

        return toPrint.toString();
    }
}
