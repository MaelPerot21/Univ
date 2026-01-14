package Loaders.TXTFile;

import Datas.CGrille9x9;
import Loaders.Factory.GridLoaderFactory;

import javax.swing.*;
import javax.swing.filechooser.FileNameExtensionFilter;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.file.Path;
import java.util.ArrayList;

public class TXTFileLoader implements GridLoaderFactory {


    public CGrille9x9 getGrid() {

        CGrille9x9 gr = new CGrille9x9();

        JFileChooser choose = new JFileChooser( Path.of("").toAbsolutePath().toString());

        choose.setDialogTitle("Selectionnez une grille");
        choose.setAcceptAllFileFilterUsed(false);
        FileNameExtensionFilter filter = new FileNameExtensionFilter("Fichers TXT", "txt");
        choose.addChoosableFileFilter(filter);
        int res = choose.showOpenDialog(null);

        if (res == JFileChooser.APPROVE_OPTION) {
            this.get(choose.getSelectedFile().getPath(), gr);
            System.out.println(choose.getSelectedFile().getPath());
        }

        return gr;
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


}
