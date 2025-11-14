package strategy.exercice2;

public class CApplication {

    // programme principal
    public static void main(String[] args) {

        // obtient une grille
        CGrille9x9 grille = (new CFakeGridGenerator()).get();

        // affiche
        CVisuGrille9x9 visu = new CVisuGrille9x9();
        visu.display(grille);

        CSudokuGridLoader gridloader = new CSudokuGridLoader("src/utours/l3/dp/strategy/exercice2/grille.txt");
        CGrille9x9 grille2 = gridloader.getGrid();
        visu.display(grille2);

    }
}
