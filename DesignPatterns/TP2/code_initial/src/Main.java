import Datas.CGrille9x9;
import Loaders.Factory.*;
import Loaders.Basic.CVeryBasicGridLoader;
import Loaders.TXTFile.TXTFileLoader;
import Solvers.Factory.SolverFactory;
import Solvers.Basic.CVeryBasicSolveur9x9;
import Solvers.Backtrack.BacktrackSolver;
import Solvers.DancingLinks.DancingLinksSolver;

public class Main {
    public static void main(String[] args) {
        
        // obtient une grille (2 manières possibles)
        // charge la grille située dans le fichier texte (à placer à la racine du projet)
    	GridLoader loader = new GridLoader(new TXTFileLoader());
        CGrille9x9 grille = loader.getGrid();
        loader.setStrategy(new CVeryBasicGridLoader());
        grille = loader.getGrid();

        // affichage de la grille chargée
        System.out.println("\nGrille chargée : ");
        CVisuGrille9x9.display(grille);

        // résout (3 solveurs possibles)
        SolverFactory solver = new CVeryBasicSolveur9x9();
        solver = new CVeryBasicSolveur9x9();
        solver.solve(grille);
        solver = new BacktrackSolver();
        solver.solve(grille);
        solver = new DancingLinksSolver();
        solver.solve(grille);
        // affiche la solution
        System.out.println("\nGrille résolue : ");
        CVisuGrille9x9.display(grille);   
    }
}