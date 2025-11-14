import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;

public class Grid2TextFile implements GridSaver {
    public Grid2TextFile(CGrille9x9 grille, String file) {

        save(grille, file);
    }

    public void save(CGrille9x9 grille, String file) {
        BufferedWriter bufferedWriter = null;

        try {
            bufferedWriter = new BufferedWriter(new FileWriter(file));

            for (int l=1; l<10; l++) {
                for (int c=1; c<10; c++) {
                    bufferedWriter.write( String.valueOf(grille.get(c,l)) + " " );
                }
                bufferedWriter.write("\n");
            }

        } catch (FileNotFoundException ex) {
            ex.printStackTrace();
        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            //Close the BufferedWriter
            try {
                if (bufferedWriter != null) {
                    bufferedWriter.flush();
                    bufferedWriter.close();
                }
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }

    }


}
