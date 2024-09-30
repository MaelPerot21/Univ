package point;

public class TestPointNew {

    public static void main(String[] args) {

        System.out.println();
        
        Point p = new Point(1, 2);

        // tests de base
        System.out.println("tests de base");
        if (p.getX()==1) System.out.println("[ok] x vaut bien 1");
		else System.out.println("[echec] x vaut 1, on trouve : "+String.valueOf(p.getX()));
		if (p.getY()==2) System.out.println("[ok] y vaut bien 2");
		else System.out.println("[echec] y vaut 2, on trouve : "+String.valueOf(p.getY()));

        p.setX(10);
        p.setY(20);

        if (p.getX()==10) System.out.println("[ok] x vaut bien 10");
		else System.out.println("[echec] x vaut 10, on trouve : "+String.valueOf(p.getX()));
		if (p.getY()==20) System.out.println("[ok] y vaut bien 20");
		else System.out.println("[echec] y vaut 20, on trouve : "+String.valueOf(p.getY()));
        //if (p.getNbPoints()==1) System.out.println("[ok] le nombre de points est bien 1");

        System.out.println();

        //test toString
        System.out.println("test toString");
        String p_str = p.toString();
        if (p_str.compareTo("(10.0;20.0)") == 0) System.out.println("[ok] on a bien"+p_str);
        else System.out.println("[echec] On a"+p_str+"et pas (10;20)");

        System.out.println();

        //test translater
        System.out.println("test translater");

        p.translater(-5, -10);
        if (p.getX()==5) System.out.println("[ok] x vaut bien 5");
		else System.out.println("[echec] x vaut 5, on trouve : "+String.valueOf(p.getX()));
		if (p.getY()==10) System.out.println("[ok] y vaut bien 10");
		else System.out.println("[echec] y vaut 10, on trouve : "+String.valueOf(p.getY()));

        System.out.println();

        //test copie
        System.out.println("test copie");

        Point same = p.copie();
        if (same.getX()==5) System.out.println("[ok] x vaut bien 5");
		else System.out.println("[echec] x vaut 5, on trouve : "+String.valueOf(same.getX()));
		if (same.getY()==10) System.out.println("[ok] y vaut bien 10");
		else System.out.println("[echec] y vaut 10, on trouve : "+String.valueOf(same.getY()));

        System.out.println();

        //test confondu
        System.out.println("test confondu");

        if (same.confondu(p)==true) System.out.println("[ok] la comparaison est bonne");
		else System.out.println("[echec] on trouve des points differents alors qu'ils ne le sont pas");

        p.setX(1.5);
        p.setY(3);

		if (same.confondu(p)==false) System.out.println("[ok] la comparaison est bonne");
		else System.out.println("[echec] on trouve des points identiques alors qu'ils ne le sont pas");

        System.out.println();

    }
}
