package strategy.exercice2;

import java.io.BufferedReader;
        import java.io.FileInputStream;
        import java.io.InputStream;
        import java.io.InputStreamReader;
        import java.util.ArrayList;

public class CSudokuGridLoader
{
    protected String filename;

    public CSudokuGridLoader(String name) {
        filename = name;
    }

    private void get(String nom, CGrille9x9 g)
    {
        ArrayList<String> liste = new ArrayList<String>();

        try{
            InputStream flux=new FileInputStream(nom);
            InputStreamReader lecture=new InputStreamReader(flux);
            BufferedReader buff=new BufferedReader(lecture);
            String ligne;
            /* charge les donnees */
            while ((ligne=buff.readLine())!=null){
                liste.add(ligne);
            }
            /* ferme le fichier */
            buff.close();
        }
        catch (Exception e){
            System.out.println(e.toString());
        }

        /* insere les donnees dans la grille */
        for (int i=0; i<liste.size(); i++)
        {
            String[] elems = (liste.get(i)).split(",");
            for (int c=0; c<elems.length; c++)
            {
//				if (!elems[c].equals("0"))
                {
                    g.set(i+1, c+1, Integer.parseInt(elems[c]));
                }
            }
        }
    }

    public CGrille9x9 getGrid() {
        CGrille9x9 gr = new CGrille9x9();
        this.get(this.filename, gr);
        return gr;
    }

}
