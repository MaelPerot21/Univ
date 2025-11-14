package strategy.exercice2;

public class CVisuGrille9x9 {

    // affichage mode texte de l'ensemble
    public static void display(CGrille9x9 gr) {

        System.out.println();
        for (int l=1; l<10; l++) {
            for (int c=1; c<10; c++) {
                String digit = Integer.toString(gr.get(c, l));
                if (digit.equals("0")) digit=" ";
                System.out.print(digit);
                if (c<9) System.out.print(" , ");
            }
            System.out.println();
        }
    }

}
